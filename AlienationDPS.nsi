; Uses KillProc plugin: http://nsis.sourceforge.net/KillProc_plug-in

!define bits "32"
; "64" for 64 bit, any non-empty string for 32 bit
!define Version "1.01"
!define AppName "Alienation Weapon DPS Calculator"
!define AppShortName "AlienationDPS"
!define ExeName "AlienationDPS.exe"
!define AppDesc "Optimizes Alienation weapon cores"

!if ${bits} == "64"
  OutFile "AlienationDPS-x64-windows-${Version}-setup.exe"
  InstallDir "$PROGRAMFILES64\${AppShortName}"
  
  !include "x64.nsh"
  
  Function .onInit
    ${If} ${RunningX64}
    ${Else}
      MessageBox MB_OK|MB_ICONSTOP "This installer is for 64 bit Windows versions. You require the 32 bit installer."
      Abort
    ${EndIf}
    
    SetRegView 64
  FunctionEnd
  
  Function un.onInit
    SetRegView 64
  FunctionEnd
!else
  OutFile "AlienationDPS-windows-${Version}-setup.exe"
  InstallDir "$PROGRAMFILES\${AppShortName}"
!endif

;  Files: make sure all are included in install and uninstall
;  File AlienationDPS.exe
;  File license.txt
;  File README.txt

Name "${AppName}"
InstallDirRegKey HKLM "Software\${AppShortName}" "Install_Dir"
AllowSkipFiles off
LicenseData "license.txt"
RequestExecutionLevel none
XPStyle on
VIAddVersionKey "ProductName" "${AppName}"
VIAddVersionKey "Comments" "https://alienationdps.github.io/alienationdps/"
VIAddVersionKey "FileDescription" "${AppName}"
VIAddVersionKey "FileVersion" "${Version}"
VIAddVersionKey "LegalCopyright" "(c) 2016 Dr C (drcpsn@hotmail.com)"
VIProductVersion "${Version}.0.0"

Page license
Page components
Page directory
Page instfiles
UninstPage uninstConfirm
UninstPage instfiles


Section "${AppName} (required)"
  SectionIn RO
  SetOutPath $INSTDIR
  SetAutoClose true

  instretry:
  StrCpy $0 ${ExeName}
  KillProc::FindProcesses
  StrCmp $0 "0" instcontinue
  StrCmp $0 "-1" instcontinue
  MessageBox MB_RETRYCANCEL|MB_ICONEXCLAMATION| "Please close ${AppName} before continuing." IDRETRY instretry IDCANCEL instcontinue
  instcontinue:
  
  File AlienationDPS.exe
  File license.txt
  File README.txt
  
  WriteRegStr HKLM "SOFTWARE\${AppShortName}" "Install_Dir" "$INSTDIR"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppShortName}" "DisplayName" "${AppName}"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppShortName}" "DisplayIcon" "$INSTDIR\${ExeName}"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppShortName}" "DisplayVersion" "${Version}"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppShortName}" "HelpLink" "https://alienationdps.github.io/alienationdps/"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppShortName}" "Publisher" "Dr C"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppShortName}" "URLInfoAbout" "https://alienationdps.github.io/alienationdps/"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppShortName}" "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppShortName}" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppShortName}" "NoRepair" 1
  WriteUninstaller "uninstall.exe"
SectionEnd


Section "Start Menu Shortcut"
  CreateShortCut "$SMPROGRAMS\${AppName}.lnk" "$INSTDIR\${ExeName}" "" "" "" "" "" "${AppDesc}"
SectionEnd


Section /o "Desktop Shortcut"
  CreateShortCut "$DESKTOP\${AppName}.lnk" "$INSTDIR\${ExeName}" "" "" "" "" "" "${AppDesc}"
SectionEnd


Function .onInstSuccess
  MessageBox MB_OK|MB_ICONINFORMATION| "Installation complete!"
  Exec '"$INSTDIR\${ExeName}"'
FunctionEnd


Section "Uninstall"

  uninstretry:
  StrCpy $0 ${ExeName}
  KillProc::FindProcesses
  StrCmp $0 "0" uninstcontinue
  StrCmp $0 "-1" uninstcontinue
  MessageBox MB_RETRYCANCEL|MB_ICONEXCLAMATION| "Please close ${AppName} before continuing." IDRETRY uninstretry IDCANCEL uninstcontinue
  uninstcontinue:

; Remove files and uninstaller
  Delete "$INSTDIR\AlienationDPS.exe"
  Delete "$INSTDIR\license.txt"
  Delete "$INSTDIR\README.txt"
  Delete "$INSTDIR\uninstall.exe"
  RMDir "$INSTDIR"
  
; Remove shortcuts, if any
  Delete "$DESKTOP\${AppName}.lnk"
  Delete "$SMPROGRAMS\${AppName}.lnk"
  SetShellVarContext all
  Delete "$DESKTOP\${AppName}.lnk"
  Delete "$SMPROGRAMS\${AppName}.lnk"
  
; Remove registry keys
  DeleteRegKey HKLM "SOFTWARE\${AppShortName}"
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppShortName}"

SectionEnd
