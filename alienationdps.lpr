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

program alienationdps;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}cthreads,{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, unitmain, UnitRules, unithelp
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Doc’s Alienation Weapon DPS Calculator';
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  FormMain.Caption:=Application.Title;
  {$ifdef debug}FormMain.Caption:=FormMain.Caption+' [Debug]';{$endif}
  Application.CreateForm(TFormRules, FormRules);
  Application.CreateForm(TFormHelp, FormHelp);
  Application.Run;
end.

