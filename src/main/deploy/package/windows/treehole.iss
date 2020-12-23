;This file will be executed next to the application bundle image
;I.e. current directory will contain folder treehole with application files
[Setup]
AppId={{com.luooqi.ocr}}
AppName=treehole
AppVersion=1.2.2
AppVerName=treehole 1.2.2
AppPublisher=com.luooqi
AppComments=treehole
AppCopyright=luooqi@2020
;AppPublisherURL=http://java.com/
;AppSupportURL=http://java.com/
;AppUpdatesURL=http://java.com/
DefaultDirName={localappdata}\treehole
DisableStartupPrompt=Yes
DisableDirPage=No
DisableProgramGroupPage=Yes
DisableReadyPage=Yes
DisableFinishedPage=Yes
DisableWelcomePage=Yes
DefaultGroupName=com.luooqi
;Optional License
LicenseFile=
;WinXP or above
MinVersion=6.0
OutputBaseFilename=treehole-1.2.2
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
SetupIconFile=treehole\treehole.ico
UninstallDisplayIcon={app}\treehole.ico
UninstallDisplayName=treehole
WizardImageStretch=No
WizardSmallImageFile=treehole-setup-icon.bmp   
ArchitecturesInstallIn64BitMode=x64


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "treehole\treehole.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "treehole\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\treehole"; Filename: "{app}\treehole.exe"; IconFilename: "{app}\treehole.ico"; Check: returnFalse()
Name: "{commondesktop}\treehole"; Filename: "{app}\treehole.exe";  IconFilename: "{app}\treehole.ico"; Check: returnTrue()


[Run]
Filename: "{app}\treehole.exe"; Parameters: "-Xappcds:generatecache"; Check: returnFalse()
Filename: "{app}\treehole.exe"; Description: "{cm:LaunchProgram,treehole}"; Flags: nowait postinstall skipifsilent; Check: returnTrue()
Filename: "{app}\treehole.exe"; Parameters: "-install -svcName ""treehole"" -svcDesc ""treehole"" -mainExe ""treehole.exe""  "; Check: returnFalse()

[UninstallRun]
Filename: "{app}\treehole.exe "; Parameters: "-uninstall -svcName treehole -stopOnUninstall"; Check: returnFalse()

[Code]
function returnTrue(): Boolean;
begin
  Result := True;
end;

function returnFalse(): Boolean;
begin
  Result := False;
end;

function InitializeSetup(): Boolean;
begin
// Possible future improvements:
//   if version less or same => just launch app
//   if upgrade => check if same app is running and wait for it to exit
//   Add pack200/unpack200 support? 
  Result := True;
end;  
