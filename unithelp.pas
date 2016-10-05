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

unit unithelp;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, LCLIntf;

type

  { TFormHelp }

  TFormHelp = class(TForm)
    ButtonOK: TButton;
    ImageLogo: TImage;
    LabelDoc: TLabel;
    LabelThanks: TLabel;
    LabelAlienationLink: TLabel;
    LabelCopyright: TLabel;
    LabelLink: TLabel;
    LabelTitle: TLabel;
    LabelHelpText: TLabel;
    procedure ButtonOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LabelAlienationLinkClick(Sender: TObject);
    procedure LabelDocClick(Sender: TObject);
    procedure LabelLinkClick(Sender: TObject);
    procedure LinkMouseEnter(Sender: TObject);
    procedure LinkMouseLeave(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormHelp: TFormHelp;

const
  app_link='https://alienationdps.github.io/alienationdps/';
  alienation_link='http://www.housemarque.com/games/alienation/';
  author_link='https://twitter.com/DrC_PSN';

implementation

uses unitmain;

{$R *.lfm}

{ TFormHelp }

procedure TFormHelp.ButtonOKClick(Sender: TObject);
begin
 Close;
end;

procedure TFormHelp.FormShow(Sender: TObject);
begin
 OnShow:=nil;
 LabelTitle.Caption:=Application.Title+' v'+app_ver_str;
 LabelLink.Hint:=app_link;
 LabelDoc.Hint:=author_link;
 LabelAlienationLink.Hint:=alienation_link;
 Constraints.MinWidth:=FormMain.Width div 2;
end;

procedure TFormHelp.LabelAlienationLinkClick(Sender: TObject);
begin
 OpenURL(alienation_link);
end;

procedure TFormHelp.LabelDocClick(Sender: TObject);
begin
 OpenURL(author_link);
end;

procedure TFormHelp.LabelLinkClick(Sender: TObject);
begin
 OpenURL(app_link);
end;

procedure TFormHelp.LinkMouseEnter(Sender: TObject);
begin
 TLabel(Sender).Font.Style:=[];
end;

procedure TFormHelp.LinkMouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Style:=[fsUnderline];
end;

end.

