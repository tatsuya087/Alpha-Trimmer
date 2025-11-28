[Setup]
AppName=Alpha Trimmer
AppVersion=1.0.0
DefaultDirName={pf}\Alpha Trimmer
DefaultGroupName=Alpha Trimmer
OutputDir=output
OutputBaseFilename=Alpha_Trimmer_Setup
Compression=lzma
SolidCompression=yes
SetupIconFile=icon.ico
UninstallDisplayIcon={app}\alpha_trimmer.exe
ShowLanguageDialog=yes
LanguageDetectionMethod=uilanguage
PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[CustomMessages]
english.ContextMenuTitle=Trim Transparency
japanese.ContextMenuTitle=透明部分をトリミング
english.UninstallShortcut=Uninstall Alpha Trimmer
japanese.UninstallShortcut=Alpha Trimmer アンインストール

[Files]
Source: "dist\alpha_trimmer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "icon.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Alpha Trimmer"; Filename: "{app}\alpha_trimmer.exe"
Name: "{group}\{cm:UninstallShortcut}"; Filename: "{uninstallexe}"

[Registry]
; PNG
Root: HKCR; Subkey: "SystemFileAssociations\.png\shell\AlphaTrimmer"; ValueType: string; ValueName: ""; ValueData: "{cm:ContextMenuTitle}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.png\shell\AlphaTrimmer\command"; ValueType: string; ValueName: ""; ValueData: """{app}\alpha_trimmer.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.png\shell\AlphaTrimmer"; ValueType: string; ValueName: "Icon"; ValueData: """{app}\icon.ico"""; Flags: uninsdeletekey

; WebP
Root: HKCR; Subkey: "SystemFileAssociations\.webp\shell\AlphaTrimmer"; ValueType: string; ValueName: ""; ValueData: "{cm:ContextMenuTitle}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.webp\shell\AlphaTrimmer\command"; ValueType: string; ValueName: ""; ValueData: """{app}\alpha_trimmer.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.webp\shell\AlphaTrimmer"; ValueType: string; ValueName: "Icon"; ValueData: """{app}\icon.ico"""; Flags: uninsdeletekey

[UninstallDelete]
Type: filesandordirs; Name: "{app}\logs"