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
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Files]
Source: "dist\alpha_trimmer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "icon.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Alpha Trimmer"; Filename: "{app}\alpha_trimmer.exe"
Name: "{group}\Alpha Trimmer アンインストール"; Filename: "{uninstallexe}"

[Registry]
Root: HKCR; Subkey: "SystemFileAssociations\.png\shell\AlphaTrimmer"; ValueType: string; ValueName: ""; ValueData: "透明部分をトリミング"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.png\shell\AlphaTrimmer\command"; ValueType: string; ValueName: ""; ValueData: """{app}\alpha_trimmer.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "SystemFileAssociations\.png\shell\AlphaTrimmer"; ValueType: string; ValueName: "Icon"; ValueData: """{app}\icon.ico"""; Flags: uninsdeletekey

[UninstallDelete]
Type: filesandordirs; Name: "{app}\logs"