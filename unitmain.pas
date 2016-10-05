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

unit unitmain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Spin,
  StdCtrls, ExtCtrls, LazUTF8, updatecheck, LCLIntf, LMessages;

type

  { TFormMain }

  TFormMain = class(TForm)
    LabelSlot1Title: TLabel;
    LabelSlot1: TLabel;
    LabelCore1: TLabel;
    ComboBoxSlot1: TComboBox;
    ComboBoxCore1: TComboBox;
    LabelCore1Bonus: TLabel;
    LabelSlot1Bonus: TLabel;
    LabelSynergy1Bonus: TLabel;
    LabelSlot2Title: TLabel;
    LabelSlot2: TLabel;
    LabelCore2: TLabel;
    ComboBoxSlot2: TComboBox;
    ComboBoxCore2: TComboBox;
    LabelCore2Bonus: TLabel;
    LabelSlot2Bonus: TLabel;
    LabelSynergy2Bonus: TLabel;
    LabelSlot3Title: TLabel;
    LabelSlot3: TLabel;
    LabelCore3: TLabel;
    ComboBoxSlot3: TComboBox;
    ComboBoxCore3: TComboBox;
    LabelCore3Bonus: TLabel;
    LabelSlot3Bonus: TLabel;
    LabelSynergy3Bonus: TLabel;
    LabelSlot4Title: TLabel;
    LabelSlot4: TLabel;
    LabelCore4: TLabel;
    ComboBoxSlot4: TComboBox;
    ComboBoxCore4: TComboBox;
    LabelCore4Bonus: TLabel;
    LabelSlot4Bonus: TLabel;
    LabelSynergy4Bonus: TLabel;
    LabelSlot5Title: TLabel;
    LabelSlot5: TLabel;
    LabelCore5: TLabel;
    ComboBoxSlot5: TComboBox;
    ComboBoxCore5: TComboBox;
    LabelCore5Bonus: TLabel;
    LabelSlot5Bonus: TLabel;
    LabelSynergy5Bonus: TLabel;
    LabelSlot6Title: TLabel;
    LabelSlot6: TLabel;
    LabelCore6: TLabel;
    ComboBoxSlot6: TComboBox;
    ComboBoxCore6: TComboBox;
    LabelCore6Bonus: TLabel;
    LabelSlot6Bonus: TLabel;
    LabelSynergy6Bonus: TLabel;
    LabelSlot7Title: TLabel;
    LabelSlot7: TLabel;
    LabelCore7: TLabel;
    ComboBoxSlot7: TComboBox;
    ComboBoxCore7: TComboBox;
    LabelCore7Bonus: TLabel;
    LabelSlot7Bonus: TLabel;
    LabelSynergy7Bonus: TLabel;
    LabelSlot8Title: TLabel;
    LabelSlot8: TLabel;
    LabelCore8: TLabel;
    ComboBoxSlot8: TComboBox;
    ComboBoxCore8: TComboBox;
    LabelCore8Bonus: TLabel;
    LabelSlot8Bonus: TLabel;
    LabelSynergy8Bonus: TLabel;
    LabelSlot9Title: TLabel;
    LabelSlot9: TLabel;
    LabelCore9: TLabel;
    ComboBoxSlot9: TComboBox;
    ComboBoxCore9: TComboBox;
    LabelCore9Bonus: TLabel;
    LabelSlot9Bonus: TLabel;
    LabelSynergy9Bonus: TLabel;
    LabelSlot10Title: TLabel;
    LabelSlot10: TLabel;
    LabelCore10: TLabel;
    ComboBoxSlot10: TComboBox;
    ComboBoxCore10: TComboBox;
    LabelCore10Bonus: TLabel;
    LabelSlot10Bonus: TLabel;
    LabelSynergy10Bonus: TLabel;
    LabelSlot11Title: TLabel;
    LabelSlot11: TLabel;
    LabelCore11: TLabel;
    ComboBoxSlot11: TComboBox;
    ComboBoxCore11: TComboBox;
    LabelCore11Bonus: TLabel;
    LabelSlot11Bonus: TLabel;
    LabelSynergy11Bonus: TLabel;
    LabelSlot12Title: TLabel;
    LabelSlot12: TLabel;
    LabelCore12: TLabel;
    ComboBoxSlot12: TComboBox;
    ComboBoxCore12: TComboBox;
    LabelCore12Bonus: TLabel;
    LabelSlot12Bonus: TLabel;
    LabelSynergy12Bonus: TLabel;
    ButtonSave: TButton;
    ButtonLoad: TButton;
    ButtonHelp: TButton;
    ButtonRules: TButton;
    ButtonCalcCores: TButton;
    ComboBoxCalcMode: TComboBox;
    FloatSpinEditDamage: TFloatSpinEdit;
    FloatSpinEditReloadTime: TFloatSpinEdit;
    FloatSpinEditFireRate: TFloatSpinEdit;
    FloatSpinEditClipSize: TFloatSpinEdit;
    FloatSpinEditCritChance: TFloatSpinEdit;
    GroupBoxSlots: TGroupBox;
    GroupBoxWeaponStats: TGroupBox;
    LabelCalcMode: TLabel;
    LabelDamagePerShot: TLabel;
    LabelDamagePerClip: TLabel;
    LabelSynergyBlocks: TLabel;
    LabelStatus: TLabel;
    LabelDamageBonus: TLabel;
    LabelFireRateBonus: TLabel;
    LabelClipSizeBonus: TLabel;
    LabelCritChanceBonus: TLabel;
    LabelDPS: TLabel;
    LabelReloadTime_: TLabel;
    LabelCritChance_: TLabel;
    LabelFireRate_: TLabel;
    LabelDamage_: TLabel;
    LabelFireRate: TLabel;
    LabelClipSize: TLabel;
    LabelCritChance: TLabel;
    LabelReloadTime: TLabel;
    LabelDamage: TLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Timer1: TTimer;
    procedure ButtonCalcCoresClick(Sender: TObject);
    procedure ButtonHelpClick(Sender: TObject);
    procedure ButtonLoadClick(Sender: TObject);
    procedure ButtonRulesClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure CalcUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure HandleThreadMsg_update_check_finished(var Msg: TLMessage); message windowmsg_update_check_finished;
  private
    { private declarations }
  public
    { public declarations }
  end;

const
  coretype_damage=1;
  coretype_firerate=2;
  coretype_clipsize=3;
  coretype_critchance=4;

  core_bonuses:array[1..4] of integer=(16,32,32,7);
  slot_bonuses:array[1..3] of integer=(4,8,8);
  synergy_bonuses:array[1..3] of integer=(4,8,8);

  bonus_names:array[1..4] of string=('Damage','Fire rate','Clip size','Crit chance');

  app_ver_major=1;
  app_ver_minor=0;
  app_ver_str='1.0';

type
  weapon_slot_type=record
   coretype,slottype,corebonus,slotbonus,synergybonus,parent_synergy_block:integer;
   synergy_left,synergy_right:boolean;
  end;
  synergy_block_type=record
   slotcount,colour:integer;
   slot:array[0..11] of integer;
  end;


var
  FormMain: TFormMain;

  slots:array[0..11] of weapon_slot_type;
  synergy_blocks:array[0..5] of synergy_block_type;
  synergy_block_count:integer;

  damage,firerate,clipsize,critchance,reloadtime,avgdamagepershot,avgdamageperclip,dps:double;
  damagebonus,fireratebonus,clipsizebonus,critchancebonus:integer;

  calcmode:boolean;

  corelimits:array[1..4] of integer;
  corelimitsenabled:array[1..4] of boolean;
  mindamagepershotlimitenabled,mindamagepercliplimitenabled:boolean;
  mindamagepershotlimit,mindamagepercliplimit:integer;

  help_shown:boolean;

  configpath:string;

  app_update_thread:TThreadID={$ifdef Darwin}nil{$else}0{$endif};

  cb_s,cb_c:array[0..11] of TComboBox;
  l_c,l_s,l_syn,l_t:array[0..11] of TLabel;


function i2s(i:integer):string;
function double2s(d:double;dp:integer):string;
function s2double(s:string;var d:double):boolean;

implementation

uses unitrules,unithelp;

{$R *.lfm}

function numseparators(num:string):string;
var i,limit:integer;
begin
 i:=pos('.',num);
 if i<=0 then i:=length(num)+1; // no decimal
 dec(i,3);
 if copy(num,1,1)<>'-' then limit:=1 else limit:=2;
 while i>limit do begin
  insert(',',num,i);
  dec(i,3);
 end;
 result:=num;
end;

function i2s(i:integer):string;
begin
 str(i,result);
end;

function double2s(d:double;dp:integer):string;
begin
 str(d:0:dp,result);
 result:=numseparators(result);
end;

function s2l(s:string;var l:longint):boolean;
var error:integer;
begin
 system.val(s,l,error);
 result:=error=0;
end;

function s2double(s:string;var d:double):boolean;
var error:integer;
begin
 system.val(s,d,error);
 result:=error=0;
end;

function singleplural(l:longint;units:string):string;
begin
 if l=1 then result:='1 '+units
 else begin
  str(l,result);
  result:=numseparators(result)+' '+units+'s';
 end;
end;

procedure set_onchange(proc:TNotifyEvent);
var i:integer;
begin
 FormMain.FloatSpinEditDamage.OnChange:=proc;
 FormMain.FloatSpinEditFireRate.OnChange:=proc;
 FormMain.FloatSpinEditClipSize.OnChange:=proc;
 FormMain.FloatSpinEditCritChance.OnChange:=proc;
 FormMain.FloatSpinEditReloadTime.OnChange:=proc;
 FormMain.ComboBoxCalcMode.OnChange:=proc;

 for i:=0 to 11 do begin
  cb_s[i].OnChange:=proc;
  cb_c[i].OnChange:=proc;
 end;
end;

procedure read_config(filename:string);
var t:text;
    name,val:string;
    l,l2:longint;
begin
 set_onchange(nil);
 assign(t,filename);
 filemode:=0;
 {$I-}
 reset(t);
 while not eof(t) do begin
  readln(t,name);
  if ioresult<>0 then break;
  help_shown:=true;
  l:=pos('=',name);
  if l>0 then begin val:=copy(name,l+1,length(name)); delete(name,l,length(name)); end else val:='';
  name:=lowercase(name);

  if name='damage' then s2double(val,damage)
  else if name='fire rate' then s2double(val,firerate)
  else if name='clip size' then begin s2double(val,clipsize); clipsize:=round(clipsize); end
  else if name='crit chance' then s2double(val,critchance)
  else if name='reload time' then s2double(val,reloadtime)
  else if name='calc mode' then calcmode:=val='1'
  else if name='red limit enabled' then corelimitsenabled[1]:=val='1'
  else if name='red limit' then s2l(val,corelimits[1])
  else if name='blue limit enabled' then corelimitsenabled[2]:=val='1'
  else if name='blue limit' then s2l(val,corelimits[2])
  else if name='yellow limit enabled' then corelimitsenabled[3]:=val='1'
  else if name='yellow limit' then s2l(val,corelimits[3])
  else if name='prismatic limit enabled' then corelimitsenabled[4]:=val='1'
  else if name='prismatic limit' then s2l(val,corelimits[4])
  else if name='min damage per shot limit enabled' then mindamagepershotlimitenabled:=val='1'
  else if name='min damage per shot limit' then s2l(val,mindamagepershotlimit)
  else if name='min damage per clip limit enabled' then mindamagepercliplimitenabled:=val='1'
  else if name='min damage per clip limit' then s2l(val,mindamagepercliplimit)
  else if s2l(copy(name,6,length(name)),l2) then if (l2>0) and (l2<13) then
   if s2l(val,l) then if (l>=0) and (l<=4) then
    if copy(name,1,5)='slot ' then cb_s[l2-1].ItemIndex:=l
    else if copy(name,1,5)='core ' then cb_c[l2-1].ItemIndex:=l;
 end;
 close(t);
 ioresult;
 {$I+}

 FormMain.FloatSpinEditDamage.Value:=damage;
 FormMain.FloatSpinEditFireRate.Value:=firerate;
 FormMain.FloatSpinEditClipSize.Value:=clipsize;
 FormMain.FloatSpinEditCritChance.Value:=critchance;
 FormMain.FloatSpinEditReloadTime.Value:=reloadtime;
 if not calcmode then FormMain.ComboBoxCalcMode.ItemIndex:=0 else FormMain.ComboBoxCalcMode.ItemIndex:=1;

 set_onchange(@FormMain.CalcUpdate);
 FormMain.CalcUpdate(nil);
end;

procedure write_config(filename:string);
const tf:array[false..true] of string=('0','1');
var t:text;
    i:integer;

 function double2s_(d:double;dp:integer):string;
 begin
  str(d:0:dp,result);
 end;

begin
 assign(t,filename);
 {$I-}
 rewrite(t);
 writeln(t,'Damage='+double2s_(FormMain.FloatSpinEditDamage.Value,1));
 writeln(t,'Fire rate='+double2s_(FormMain.FloatSpinEditFireRate.Value,1));
 writeln(t,'Clip size='+double2s_(FormMain.FloatSpinEditClipSize.Value,0));
 writeln(t,'Crit chance='+double2s_(FormMain.FloatSpinEditCritChance.Value,1));
 writeln(t,'Reload time='+double2s_(FormMain.FloatSpinEditReloadTime.Value,1));
 writeln(t,'Calc mode='+tf[calcmode]);

 writeln(t,'Red limit enabled='+tf[corelimitsenabled[1]]);
 writeln(t,'Red limit='+i2s(corelimits[1]));
 writeln(t,'Blue limit enabled='+tf[corelimitsenabled[2]]);
 writeln(t,'Blue limit='+i2s(corelimits[2]));
 writeln(t,'Yellow limit enabled='+tf[corelimitsenabled[3]]);
 writeln(t,'Yellow limit='+i2s(corelimits[3]));
 writeln(t,'Prismatic limit enabled='+tf[corelimitsenabled[4]]);
 writeln(t,'Prismatic limit='+i2s(corelimits[4]));

 writeln(t,'Min damage per shot limit enabled='+tf[mindamagepershotlimitenabled]);
 writeln(t,'Min damage per shot limit='+i2s(mindamagepershotlimit));
 writeln(t,'Min damage per clip limit enabled='+tf[mindamagepercliplimitenabled]);
 writeln(t,'Min damage per Clip limit='+i2s(mindamagepercliplimit));

 for i:=0 to 11 do writeln(t,'Slot '+i2s(i+1)+'='+i2s(cb_s[i].ItemIndex));
 for i:=0 to 11 do writeln(t,'Core '+i2s(i+1)+'='+i2s(cb_c[i].ItemIndex));

 close(t);
 ioresult;
 {$I+}
end;

procedure get_stats_slots_and_cores_from_ui;
var i:integer;
begin
 damage:=FormMain.FloatSpinEditDamage.Value;
 firerate:=FormMain.FloatSpinEditFireRate.Value;
 clipsize:=FormMain.FloatSpinEditClipSize.Value;
 critchance:=FormMain.FloatSpinEditCritChance.Value;
 reloadtime:=FormMain.FloatSpinEditReloadTime.Value;
 calcmode:=FormMain.ComboBoxCalcMode.ItemIndex=1;

 for i:=0 to 11 do begin
  slots[i].slottype:=cb_s[i].ItemIndex;
  slots[i].coretype:=cb_c[i].ItemIndex;
 end;
end;

procedure get_slot_and_core_bonus(num:integer); inline;
begin
 slots[num].slotbonus:=0;
 slots[num].corebonus:=0;
 if slots[num].slottype>0 then begin
  if (slots[num].slottype<4) and ((slots[num].coretype=slots[num].slottype) or (slots[num].coretype=4)) then slots[num].slotbonus:=slot_bonuses[slots[num].slottype]; // core matches slot colour, or prismatic core
  if slots[num].coretype>0 then slots[num].corebonus:=core_bonuses[slots[num].coretype]; // core in slot
 end;
end;

procedure get_slot_and_core_bonuses;
var i:integer;
begin
 for i:=0 to 11 do get_slot_and_core_bonus(i);
end;

procedure get_synergy_blocks_from_slot_colours;
var i:integer;
    inblock:boolean=false;
begin
 synergy_block_count:=0;
 for i:=1 to 11 do begin
  if not inblock then begin
   if (slots[i].slottype>0) and (slots[i].slottype<4) and (slots[i].slottype=slots[i-1].slottype) then begin // start a new synergy block
    inblock:=true;
    synergy_blocks[synergy_block_count].colour:=slots[i].slottype;
    synergy_blocks[synergy_block_count].slotcount:=2;
    synergy_blocks[synergy_block_count].slot[0]:=i-1;
    synergy_blocks[synergy_block_count].slot[1]:=i;
    inc(synergy_block_count);
   end;
  end else begin
   if slots[i].slottype=slots[i-1].slottype then begin
    synergy_blocks[synergy_block_count-1].slot[synergy_blocks[synergy_block_count-1].slotcount]:=i;
    inc(synergy_blocks[synergy_block_count-1].slotcount);
   end else inblock:=false;
  end;
 end;
end;

procedure apply_synergy_block_bonus(blocknum:integer); inline;
var i,slot_a,slot_b:integer;
begin
 with synergy_blocks[blocknum] do begin
  for i:=0 to slotcount-1 do begin
   slots[slot[i]].parent_synergy_block:=blocknum;
   slots[slot[i]].synergybonus:=0;
   slots[slot[i]].synergy_left:=false;
   slots[slot[i]].synergy_right:=false;
  end;
  for i:=0 to slotcount-2 do begin
   slot_a:=slot[i];
   slot_b:=slot[i+1];
   if ((slots[slot_a].coretype=colour) and (slots[slot_a].coretype=slots[slot_b].coretype)) // both cores match slot colour
   or ((slots[slot_a].coretype=4) and (slots[slot_b].coretype=colour)) // core 1 is prismatic and core 2 matches slot colour
   or ((slots[slot_a].coretype=colour) and (slots[slot_b].coretype=4)) // core 1 matches slot colour and core 2 is prismatic
   or ((slots[slot_a].coretype=4) and (slots[slot_b].coretype=4)) then begin // both cores prismatic
    inc(slots[slot_a].synergybonus,synergy_bonuses[colour]);
    inc(slots[slot_b].synergybonus,synergy_bonuses[colour]);
   end;
  end;
 end;
end;

procedure apply_all_synergy_block_bonuses;
var i:integer;
begin
 for i:=0 to 11 do begin
  slots[i].parent_synergy_block:=-1;
  slots[i].synergybonus:=0;
  slots[i].synergy_left:=false;
  slots[i].synergy_right:=false;
 end;
 for i:=0 to synergy_block_count-1 do apply_synergy_block_bonus(i);

 for i:=0 to 11 do begin
  if i>0 then if (slots[i].parent_synergy_block>=0) and (slots[i].parent_synergy_block=slots[i-1].parent_synergy_block) then slots[i].synergy_left:=true;
  if i<11 then if (slots[i].parent_synergy_block>=0) and (slots[i].parent_synergy_block=slots[i+1].parent_synergy_block) then slots[i].synergy_right:=true;
 end;
end;

procedure calculate_bonuses_and_dps; inline;
var i:integer;
begin
 damagebonus:=0;
 fireratebonus:=0;
 clipsizebonus:=0;
 critchancebonus:=0;

 for i:=0 to 11 do if slots[i].slottype>0 then begin
  case slots[i].coretype of
   coretype_damage:inc(damagebonus,slots[i].corebonus);
   coretype_firerate:inc(fireratebonus,slots[i].corebonus);
   coretype_clipsize:inc(clipsizebonus,slots[i].corebonus);
   coretype_critchance:inc(critchancebonus,slots[i].corebonus);
  end;
  case slots[i].slottype of
   coretype_damage:begin inc(damagebonus,slots[i].slotbonus); inc(damagebonus,slots[i].synergybonus); end;
   coretype_firerate:begin inc(fireratebonus,slots[i].slotbonus); inc(fireratebonus,slots[i].synergybonus); end;
   coretype_clipsize:begin inc(clipsizebonus,slots[i].slotbonus); inc(clipsizebonus,slots[i].synergybonus); end;
  end;
 end;

 damage:=damage*(1+(damagebonus/100));
 firerate:=firerate*(1+(fireratebonus/100));
 clipsize:=clipsize*(1+(clipsizebonus/100));
 if calcmode then clipsize:=trunc(clipsize); // for 'real world' calc mode, use integer clip sizes
 critchance:=critchance+critchancebonus;
 avgdamagepershot:=damage+((critchance/100)*3*damage);
 avgdamageperclip:=avgdamagepershot*clipsize;

 if not calcmode then dps:=avgdamageperclip/(clipsize/firerate+reloadtime)
 else dps:=avgdamageperclip/(clipsize/firerate+(reloadtime/2)); // for 'real world' calc mode, use reloadtime/2
end;

procedure display_stats; // updates UI
const
    lsyn='<== ';
    rsyn=' ==>';
var i,i2:integer;
    s:string;
    corecounts:array[1..4] of integer;
begin
 // weapon bonuses and stats
 s:='Damage: +'+i2s(damagebonus)+'%';
 if damagebonus>0 then s:=s+' ('+double2s(damage,1)+' HP)';
 FormMain.LabelDamageBonus.Caption:=s;

 s:='Fire rate: +'+i2s(fireratebonus)+'%';
 if fireratebonus>0 then s:=s+' ('+double2s(firerate,1)+' shots/sec)';
 FormMain.LabelFireRateBonus.Caption:=s;

 s:='Clip size: +'+i2s(clipsizebonus)+'%';
 if clipsizebonus>0 then s:=s+' ('+double2s(clipsize,0)+')';
 FormMain.LabelClipSizeBonus.Caption:=s;

 s:='Crit chance: +'+i2s(critchancebonus)+'%';
 if critchancebonus>0 then s:=s+' ('+double2s(critchance,1)+'%)';
 FormMain.LabelCritChanceBonus.Caption:=s;

 FormMain.LabelDamagePerShot.Caption:='Damage per shot: '+double2s(avgdamagepershot,0)+' HP';
 FormMain.LabelDamagePerClip.Caption:='Damage per clip: '+double2s(avgdamageperclip,0)+' HP';
 FormMain.LabelDPS.Caption:='DPS: '+double2s(dps,0)+' HP';

 for i:=0 to 11 do begin
  // disable core combobox if slot not enabled
  if slots[i].slottype<1 then begin cb_c[i].ItemIndex:=0; cb_c[i].Enabled:=false; end else cb_c[i].Enabled:=true;

  // slot title
  s:='Slot '+i2s(i+1);
  if slots[i].parent_synergy_block>=0 then begin
   if slots[i].synergy_left then s:=lsyn+s;
   if slots[i].synergy_right then s:=s+rsyn;
   l_t[i].Font.Style:=[fsBold];
  end else l_t[i].Font.Style:=[];
  l_t[i].Caption:=s;

  // core bonus
  if slots[i].corebonus>0 then l_c[i].Caption:='Core: '+bonus_names[slots[i].coretype]+' +'+double2s(slots[i].corebonus,0)+'%' else l_c[i].Caption:='';

  // slot bonus
  if slots[i].slotbonus>0 then l_s[i].Caption:='Slot: '+bonus_names[slots[i].slottype]+' +'+double2s(slots[i].slotbonus,0)+'%' else l_s[i].Caption:='';

  // synergy bonus
  if slots[i].synergybonus>0 then l_syn[i].Caption:='Synergy: '+bonus_names[slots[i].slottype]+' +'+i2s(slots[i].synergybonus)+'%' else l_syn[i].Caption:='';
 end;

 // synergy block display
 if synergy_block_count=0 then FormMain.LabelSynergyBlocks.Caption:=''
 else begin
  for i:=1 to 4 do corecounts[i]:=0;
  for i:=0 to 11 do if (slots[i].slottype>0) and (slots[i].coretype>0) and (slots[i].coretype<5) then inc(corecounts[slots[i].coretype]);
  s:='Cores: '+i2s(corecounts[1])+' red, '+i2s(corecounts[2])+' blue, '+i2s(corecounts[3])+' yellow, '+i2s(corecounts[4])+' prismatic.';
  s:=s+' Synergy:';
  for i:=0 to synergy_block_count-1 do begin
   s:=s+' ['+i2s(synergy_blocks[i].slot[0]+1);
   for i2:=1 to synergy_blocks[i].slotcount-1 do s:=s+'=='+i2s(synergy_blocks[i].slot[i2]+1);
   s:=s+']';
  end;
  FormMain.LabelSynergyBlocks.Caption:=s;
 end;
end;

procedure TFormMain.CalcUpdate(Sender: TObject);
begin
 get_stats_slots_and_cores_from_ui;
 get_slot_and_core_bonuses;
 get_synergy_blocks_from_slot_colours;
 apply_all_synergy_block_bonuses;
 calculate_bonuses_and_dps;
 display_stats;
end;

procedure TFormMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
 write_config(configpath);
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
 OnActivate:=nil;
 if not help_shown then begin
  help_shown:=true;
  {$ifdef Darwin}FormHelp.ShowOnTop; // modal dialogs suck on OS X
  {$else}FormHelp.ShowModal;{$endif}
 end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
 // just so we can look all these up by index
 cb_s[0]:=FormMain.ComboBoxSlot1;
 cb_s[1]:=FormMain.ComboBoxSlot2;
 cb_s[2]:=FormMain.ComboBoxSlot3;
 cb_s[3]:=FormMain.ComboBoxSlot4;
 cb_s[4]:=FormMain.ComboBoxSlot5;
 cb_s[5]:=FormMain.ComboBoxSlot6;
 cb_s[6]:=FormMain.ComboBoxSlot7;
 cb_s[7]:=FormMain.ComboBoxSlot8;
 cb_s[8]:=FormMain.ComboBoxSlot9;
 cb_s[9]:=FormMain.ComboBoxSlot10;
 cb_s[10]:=FormMain.ComboBoxSlot11;
 cb_s[11]:=FormMain.ComboBoxSlot12;

 cb_c[0]:=FormMain.ComboBoxCore1;
 cb_c[1]:=FormMain.ComboBoxCore2;
 cb_c[2]:=FormMain.ComboBoxCore3;
 cb_c[3]:=FormMain.ComboBoxCore4;
 cb_c[4]:=FormMain.ComboBoxCore5;
 cb_c[5]:=FormMain.ComboBoxCore6;
 cb_c[6]:=FormMain.ComboBoxCore7;
 cb_c[7]:=FormMain.ComboBoxCore8;
 cb_c[8]:=FormMain.ComboBoxCore9;
 cb_c[9]:=FormMain.ComboBoxCore10;
 cb_c[10]:=FormMain.ComboBoxCore11;
 cb_c[11]:=FormMain.ComboBoxCore12;

 l_s[0]:=FormMain.LabelSlot1Bonus;
 l_s[1]:=FormMain.LabelSlot2Bonus;
 l_s[2]:=FormMain.LabelSlot3Bonus;
 l_s[3]:=FormMain.LabelSlot4Bonus;
 l_s[4]:=FormMain.LabelSlot5Bonus;
 l_s[5]:=FormMain.LabelSlot6Bonus;
 l_s[6]:=FormMain.LabelSlot7Bonus;
 l_s[7]:=FormMain.LabelSlot8Bonus;
 l_s[8]:=FormMain.LabelSlot9Bonus;
 l_s[9]:=FormMain.LabelSlot10Bonus;
 l_s[10]:=FormMain.LabelSlot11Bonus;
 l_s[11]:=FormMain.LabelSlot12Bonus;

 l_c[0]:=FormMain.LabelCore1Bonus;
 l_c[1]:=FormMain.LabelCore2Bonus;
 l_c[2]:=FormMain.LabelCore3Bonus;
 l_c[3]:=FormMain.LabelCore4Bonus;
 l_c[4]:=FormMain.LabelCore5Bonus;
 l_c[5]:=FormMain.LabelCore6Bonus;
 l_c[6]:=FormMain.LabelCore7Bonus;
 l_c[7]:=FormMain.LabelCore8Bonus;
 l_c[8]:=FormMain.LabelCore9Bonus;
 l_c[9]:=FormMain.LabelCore10Bonus;
 l_c[10]:=FormMain.LabelCore11Bonus;
 l_c[11]:=FormMain.LabelCore12Bonus;

 l_syn[0]:=FormMain.LabelSynergy1Bonus;
 l_syn[1]:=FormMain.LabelSynergy2Bonus;
 l_syn[2]:=FormMain.LabelSynergy3Bonus;
 l_syn[3]:=FormMain.LabelSynergy4Bonus;
 l_syn[4]:=FormMain.LabelSynergy5Bonus;
 l_syn[5]:=FormMain.LabelSynergy6Bonus;
 l_syn[6]:=FormMain.LabelSynergy7Bonus;
 l_syn[7]:=FormMain.LabelSynergy8Bonus;
 l_syn[8]:=FormMain.LabelSynergy9Bonus;
 l_syn[9]:=FormMain.LabelSynergy10Bonus;
 l_syn[10]:=FormMain.LabelSynergy11Bonus;
 l_syn[11]:=FormMain.LabelSynergy12Bonus;

 l_t[0]:=FormMain.LabelSlot1Title;
 l_t[1]:=FormMain.LabelSlot2Title;
 l_t[2]:=FormMain.LabelSlot3Title;
 l_t[3]:=FormMain.LabelSlot4Title;
 l_t[4]:=FormMain.LabelSlot5Title;
 l_t[5]:=FormMain.LabelSlot6Title;
 l_t[6]:=FormMain.LabelSlot7Title;
 l_t[7]:=FormMain.LabelSlot8Title;
 l_t[8]:=FormMain.LabelSlot9Title;
 l_t[9]:=FormMain.LabelSlot10Title;
 l_t[10]:=FormMain.LabelSlot11Title;
 l_t[11]:=FormMain.LabelSlot12Title;
end;

procedure TFormMain.ButtonCalcCoresClick(Sender: TObject);
var i:integer;
    coretry:integer=0;
    trycount:integer=0;
    matchcount:integer=0;
    bestcoretry:integer=0;
    totalslots,coretrytarget,corechanges:integer;
    anycorelimit:boolean=false;
    limitsok,use:boolean;
    damagesave,fireratesave,clipsizesave,critchancesave:double;
    slotlookup:array[0..11] of integer;
    corecounts:array[1..4] of integer;
    synergy_block_changed:array[0..5] of boolean;
    bestpriscorecount:integer=0;
    bestdps:double=0;
    bestdamagepershot:double=0;
    bestdamageperclip:double=0;
    leastcolourmismatches:integer=0;

 procedure count_cores; inline;
 var i:integer;
 begin
  corecounts[1]:=0;
  corecounts[2]:=0;
  corecounts[3]:=0;
  corecounts[4]:=0;
  for i:=0 to totalslots do inc(corecounts[slots[slotlookup[i]].coretype]);
 end;

 function colour_mismatches:integer; inline; // attempt to quantify how many "mismatched" core and slot colours there are, just for visual neatness. synergy slots get a higher weight.
 var i:integer;
 begin
  result:=0;
  for i:=0 to totalslots do if slots[slotlookup[i]].coretype<>slots[slotlookup[i]].slottype then begin
   if slots[slotlookup[i]].parent_synergy_block>=0 then inc(result,3)
   else if slots[slotlookup[i]].coretype<4 then inc(result,2)
   else inc(result);
  end;
 end;

begin
 ButtonCalcCores.Enabled:=false;
 Cursor:=crHourGlass;
 Application.ProcessMessages;

 get_stats_slots_and_cores_from_ui;
 get_synergy_blocks_from_slot_colours;
 apply_all_synergy_block_bonuses;

 damagesave:=damage;
 fireratesave:=firerate;
 clipsizesave:=clipsize;
 critchancesave:=critchance;

 coretrytarget:=1;
 totalslots:=0; // put used slots in a lookup table so we can ignore unused slots
 for i:=0 to 11 do if slots[i].slottype>0 then begin
  slotlookup[totalslots]:=i;
  inc(totalslots);
  coretrytarget:=coretrytarget*4; // have to try 4^totalslots combinations of cores
 end;
 dec(totalslots); // to avoid all the -1s from 0 based array

 for i:=1 to 4 do begin
  if corelimitsenabled[i] and (corelimits[i]<12) then anycorelimit:=true;
  corecounts[i]:=0;
 end;
 limitsok:=true;

 if totalslots>=0 then repeat
  corechanges:=coretry xor (coretry-1); // which cores have changed since the last try?
  for i:=0 to synergy_block_count-1 do synergy_block_changed[i]:=false; // which synergy blocks have changed since the last try?
  for i:=0 to totalslots do begin
   if corechanges and $3=0 then // core hasn't changed
   else begin
    slots[slotlookup[i]].coretype:=((coretry shr (i*2)) and $3)+1;
    get_slot_and_core_bonus(slotlookup[i]);
    if slots[slotlookup[i]].parent_synergy_block>=0 then synergy_block_changed[slots[slotlookup[i]].parent_synergy_block]:=true
   end;
   corechanges:=corechanges shr 2;
  end;

  if anycorelimit then begin
   limitsok:=true;
   count_cores;
   for i:=1 to 4 do if corelimitsenabled[i] and (corecounts[i]>corelimits[i]) then limitsok:=false;
  end;

  if limitsok then begin
   inc(trycount);

   for i:=0 to synergy_block_count-1 do if synergy_block_changed[i] then apply_synergy_block_bonus(i);

   calculate_bonuses_and_dps;

   if dps<bestdps then // lower dps than our best try
   else if ((not mindamagepershotlimitenabled) or (avgdamagepershot>=mindamagepershotlimit)) and ((not mindamagepercliplimitenabled) or (avgdamageperclip>=mindamagepercliplimit)) then begin // damage per shot/damage per clip limits satisfied
    if dps=bestdps then begin // equal dps to our best try, make decision based on other factors
     use:=false;
     if not anycorelimit then count_cores;
     if avgdamagepershot<bestdamagepershot then // worse damage per shot, don't use
     else if avgdamagepershot>bestdamagepershot then begin use:=true; matchcount:=1; end // better damage per shot, use
     else if avgdamageperclip<bestdamageperclip then // equal damage per shot and worse damage per clip, don't use
     else if avgdamageperclip>bestdamageperclip then begin use:=true; matchcount:=1; end // equal damage per shot and better damage per clip, use
     else if corecounts[4]<bestpriscorecount then begin use:=true; matchcount:=1; end // equal damage per shot, equal damage per clip, lower prismatic core use (these cores are rare, so use)
     else if corecounts[4]>bestpriscorecount then // equal damage per shot, equal damage per clip, higher prismatic core use, don't use
     else begin // everything equal
      inc(matchcount);
      // one final check, use the result where there are the least colour mismatches (core does not match slot colour), just for visual neatness
      if colour_mismatches<leastcolourmismatches then use:=true;
     end;
    end else begin use:=true; matchcount:=1; end; // higher dps than our best try, use it

    if use then begin
     if not anycorelimit then count_cores;
     bestcoretry:=coretry;
     bestdps:=dps;
     bestdamagepershot:=avgdamagepershot;
     bestdamageperclip:=avgdamageperclip;
     bestpriscorecount:=corecounts[4];
     leastcolourmismatches:=colour_mismatches;
    end;
   end;

   // saves reloading from the UI
   damage:=damagesave;
   firerate:=fireratesave;
   clipsize:=clipsizesave;
   critchance:=critchancesave;
  end;
  inc(coretry);
 until coretry>=coretrytarget;

 if matchcount>0 then begin
  for i:=0 to totalslots do begin
   cb_c[i].ItemIndex:=(bestcoretry and $3)+1;
   bestcoretry:=bestcoretry shr 2;
  end;
 end else for i:=0 to 11 do cb_c[i].ItemIndex:=0; // didn't find any matches

 CalcUpdate(nil);
 Cursor:=crDefault;
 ButtonCalcCores.Enabled:=true;
 LabelStatus.Caption:=singleplural(trycount,'combination')+' tried, '+singleplural(matchcount,'optimal combination')+' found.';
 Timer1.Enabled:=false;
 Timer1.Enabled:=true;
end;

procedure TFormMain.ButtonHelpClick(Sender: TObject);
begin
 {$ifdef Darwin}FormHelp.ShowOnTop; // modal dialogs suck on OS X
 {$else}if not FormHelp.Showing then FormHelp.ShowModal else FormHelp.ShowOnTop;{$endif}
end;

procedure TFormMain.ButtonLoadClick(Sender: TObject);
begin
 if OpenDialog1.Execute then read_config(OpenDialog1.FileName);
end;

procedure TFormMain.ButtonRulesClick(Sender: TObject);
begin
 {$ifdef Darwin}FormRules.ShowOnTop; // modal dialogs suck on OS X
 {$else}if not FormRules.Showing then FormRules.ShowModal else FormRules.ShowOnTop;{$endif}
end;

procedure TFormMain.ButtonSaveClick(Sender: TObject);
begin
 if SaveDialog1.Execute then write_config(SaveDialog1.FileName);
end;

procedure TFormMain.FormShow(Sender: TObject);
var i:integer;
begin
 OnShow:=nil;

 LabelStatus.Constraints.MinHeight:=LabelStatus.Height;
 LabelStatus.Caption:='';

 if LabelStatus.Top<LabelSynergy9Bonus.Top+LabelSynergy9Bonus.Height+16 then LabelStatus.Anchors:=[akTop,akRight,akBottom,akLeft];

 if GroupBoxWeaponStats.Height<GroupBoxSlots.Height then GroupBoxWeaponStats.Constraints.MinHeight:=GroupBoxSlots.Height
 else GroupBoxSlots.Constraints.MinHeight:=GroupBoxWeaponStats.Height;

 for i:=0 to 11 do begin
  l_c[i].Constraints.MinHeight:=l_c[i].Height;
  l_s[i].Constraints.MinHeight:=l_s[i].Height;
  l_syn[i].Constraints.MinHeight:=l_syn[i].Height;
 end;

 read_config(configpath);
 if ParamCount>0 then read_config(Paramstr(1));

 app_update_thread:=BeginThread(@app_update_check,nil);
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
 Timer1.Enabled:=false;
 LabelStatus.Caption:='';
end;

procedure TFormMain.HandleThreadMsg_update_check_finished(var Msg: TLMessage);
begin
 CloseThread(app_update_thread);
 if Msg.wParam>0 then if MessageDlg('Application Update','A new version of '+Application.Title+' is available. Would you like to download it now?',mtConfirmation,[mbYes,mbNo],0,mbYes)=mrYes then OpenURL(app_link);
end;


begin

 damage:=1000;
 firerate:=20;
 clipsize:=25;
 critchance:=5;
 reloadtime:=2;

 calcmode:=false;

 corelimits[1]:=12;
 corelimits[2]:=12;
 corelimits[3]:=12;
 corelimits[4]:=12;
 corelimitsenabled[1]:=false;
 corelimitsenabled[2]:=false;
 corelimitsenabled[3]:=false;
 corelimitsenabled[4]:=false;

 mindamagepershotlimitenabled:=false;
 mindamagepercliplimitenabled:=false;
 mindamagepershotlimit:=5000;
 mindamagepercliplimit:=50000;

 help_shown:=false;

 configpath:=GetAppConfigDir(false);
 ForceDirectories(configpath);
 configpath:=IncludeTrailingPathDelimiter(configpath)+ApplicationName+'.ini'

end.

