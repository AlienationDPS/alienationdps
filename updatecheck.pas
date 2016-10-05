// Copyright 2016 Dr C (drcpsn@hotmail.com | https://alienationdps.github.io/alienationdps)
//
// This file is part of AlienationDPS.
//
// AlienationDPS is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// AlienationDPS is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with AlienationDPS.  If not, see <http://www.gnu.org/licenses/>.

unit updatecheck;

{$mode objfpc}{$H+}
{$define use_synapse}
// This can function without Synapse, but note the alternative resolve unit uses the deprecated GetHostByName rather than the preferred GetAddrInfo

interface

uses
  Classes, SysUtils, LCLIntf, LMessages, {$ifdef use_synapse}synsock{$else}Resolve{$endif};

const
  windowmsg_update_check_finished=lm_user+1;

function app_update_check(p:pointer):ptrint;

implementation

uses unitmain;

{$ifdef use_synapse}var WsaDataOnce: TWSADATA;{$endif}

function dns_resolve(host:string;var quads:array of byte):boolean;
{$ifdef use_synapse}
var sin:synsock.TVarSin;
begin
 result:=synsock.SetVarSin(sin,host,'80',AF_UNSPEC,integer(IPPROTO_TCP),integer(SOCK_STREAM),true)=0;
 if result then move(sin.sin_addr.S_bytes,quads,4);
end;

{$else}
var
 hr:resolve.THostResolver;
begin
 hr:=THostResolver.Create(nil);
 result:=hr.NameLookup(host);
 if result then begin
  // the following avoids dependency on sockets.htonl()
  {$ifdef FPC_BIG_ENDIAN}
  quads[0]:=hr.HostAddress.s_bytes[1];
  quads[1]:=hr.HostAddress.s_bytes[2];
  quads[2]:=hr.HostAddress.s_bytes[3];
  quads[3]:=hr.HostAddress.s_bytes[4];
  {$else}
  quads[0]:=hr.HostAddress.s_bytes[4];
  quads[1]:=hr.HostAddress.s_bytes[3];
  quads[2]:=hr.HostAddress.s_bytes[2];
  quads[3]:=hr.HostAddress.s_bytes[1];
  {$endif}
 end;
 hr.Free;
end;
{$endif}

function app_update_check(p:pointer):ptrint;
const
    update_domains:array[false..true] of string=('alienationdps.duckdns.org','alienationdps.mooo.com');
var quads:array[0..3] of byte;
    update_available:ptrint=0;
    success,domain:boolean;
begin
 // lightweight version update checker over IPv4 DNS. format is RESERVED.RESERVED.ver_major.ver_minor
 domain:=random(2)=0;
 success:=dns_resolve(update_domains[domain],quads);
 if not success then success:=dns_resolve(update_domains[not domain],quads);
 if success then if (quads[2]>app_ver_major) or ((quads[2]=app_ver_major) and (quads[3]>app_ver_minor)) then update_available:=1;
 LCLIntf.PostMessage(FormMain.Handle,windowmsg_update_check_finished,update_available,0);
end;

initialization
begin
 randomize;
 {$ifdef use_synapse} // stuff from blcksock.pas
 InitSocketInterface(DLLStackName);
 synsock.WSAStartup(WinsockLevel, WsaDataOnce);
 {$endif}
end;

finalization
begin
 {$ifdef use_synapse} // stuff from blcksock.pas
 synsock.WSACleanup;
 DestroySocketInterface;
 {$endif}
end;

end.

