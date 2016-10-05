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

unit unitrules;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, Spin;

type

  { TFormRules }

  TFormRules = class(TForm)
    ButtonOK: TButton;
    ButtonCancel: TButton;
    CheckBoxMinDamage: TCheckBox;
    CheckBoxMinClip: TCheckBox;
    CheckBoxRedCore: TCheckBox;
    CheckBoxBlueCore: TCheckBox;
    CheckBoxYellowCore: TCheckBox;
    CheckBoxPrismaticCore: TCheckBox;
    GroupBoxParameters: TGroupBox;
    GroupBoxLimitCores: TGroupBox;
    LabelHP2: TLabel;
    LabelMinClipDesc: TLabel;
    LabelHP1: TLabel;
    LabelMinDamageDesc: TLabel;
    LabelHeading: TLabel;
    SpinEditMinDamage: TSpinEdit;
    SpinEditMinClip: TSpinEdit;
    SpinEditRed: TSpinEdit;
    SpinEditBlue: TSpinEdit;
    SpinEditYellow: TSpinEdit;
    SpinEditPrismatic: TSpinEdit;
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure CheckBoxChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormRules: TFormRules;

implementation

uses unitmain;

{$R *.lfm}

{ TFormRules }

procedure TFormRules.ButtonCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TFormRules.ButtonOKClick(Sender: TObject);
begin
 corelimitsenabled[1]:=CheckBoxRedCore.Checked;
 corelimitsenabled[2]:=CheckBoxBlueCore.Checked;
 corelimitsenabled[3]:=CheckBoxYellowCore.Checked;
 corelimitsenabled[4]:=CheckBoxPrismaticCore.Checked;
 corelimits[1]:=SpinEditRed.Value;
 corelimits[2]:=SpinEditBlue.Value;
 corelimits[3]:=SpinEditYellow.Value;
 corelimits[4]:=SpinEditPrismatic.Value;

 mindamagepershotlimitenabled:=CheckBoxMinDamage.Checked;
 mindamagepershotlimit:=SpinEditMinDamage.Value;
 mindamagepercliplimitenabled:=CheckBoxMinClip.Checked;
 mindamagepercliplimit:=SpinEditMinClip.Value;

 Close;
end;

procedure TFormRules.CheckBoxChange(Sender: TObject);
begin
 SpinEditRed.Enabled:=CheckBoxRedCore.Checked;
 SpinEditBlue.Enabled:=CheckBoxBlueCore.Checked;
 SpinEditYellow.Enabled:=CheckBoxYellowCore.Checked;
 SpinEditPrismatic.Enabled:=CheckBoxPrismaticCore.Checked;

 SpinEditMinDamage.Enabled:=CheckBoxMinDamage.Checked;
 LabelMinDamageDesc.Enabled:=CheckBoxMinDamage.Checked;
 SpinEditMinClip.Enabled:=CheckBoxMinClip.Checked;
 LabelMinClipDesc.Enabled:=CheckBoxMinClip.Checked;
end;

procedure TFormRules.FormShow(Sender: TObject);
begin
 if GroupBoxLimitCores.Width<GroupBoxParameters.Width then GroupBoxLimitCores.Constraints.MinWidth:=GroupBoxParameters.Width
 else GroupBoxParameters.Constraints.MinWidth:=GroupBoxLimitCores.Width;

 CheckBoxRedCore.Checked:=corelimitsenabled[1];
 CheckBoxBlueCore.Checked:=corelimitsenabled[2];
 CheckBoxYellowCore.Checked:=corelimitsenabled[3];
 CheckBoxPrismaticCore.Checked:=corelimitsenabled[4];
 SpinEditRed.Value:=corelimits[1];
 SpinEditBlue.Value:=corelimits[2];
 SpinEditYellow.Value:=corelimits[3];
 SpinEditPrismatic.Value:=corelimits[4];

 CheckBoxMinDamage.Checked:=mindamagepershotlimitenabled;
 SpinEditMinDamage.Value:=mindamagepershotlimit;
 CheckBoxMinClip.Checked:=mindamagepercliplimitenabled;
 SpinEditMinClip.Value:=mindamagepercliplimit;

 LabelMinDamageDesc.Caption:='Conserve ammo by boosting damage per shot. Current damage per shot (includes chance of crits): '+double2s(avgdamagepershot,0)+' HP.';
 LabelMinClipDesc.Caption:='Do more total damage from each clip so you have to reload less often. Current damage per clip: '+double2s(avgdamageperclip,0)+' HP.';

 CheckBoxChange(nil);
end;

end.

