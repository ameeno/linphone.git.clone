; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Linphone
AppVerName=Linphone for windows 2.99.5 (gtk/glade interface based on liblinphone)
AppPublisher=linphone.org
AppPublisherURL=http://www.linphone.org
AppSupportURL=http://www.linphone.org
AppUpdatesURL=http://www.linphone.org
DefaultDirName={pf}\Linphone
DefaultGroupName=Linphone
LicenseFile=..\COPYING
InfoBeforeFile=..\README
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "linphone.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\mediastreamer2\build\win32native\mediastream.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.glade"; DestDir: "{app}/linphone"; Flags: ignoreversion
Source: "..\pixmaps\*.png"; DestDir: "{app}/linphone"; Flags: ignoreversion
Source: "*.png"; DestDir: "{app}/linphone"; Flags: ignoreversion
Source: "..\mediastreamer2\src\nowebcamCIF.jpg"; DestDir: "{app}\images"; Flags: ignoreversion
;;internal linphone dlls:
Source: "..\..\linphone-deps\bin\osipparser2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\linphone-deps\bin\osip2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\linphone-deps\bin\exosip2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\linphone-deps\bin\libogg.dll"; DestDir: "{app}"; Flags: ignoreversion
;;Source: "..\..\linphone-deps\bin\speex.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\linphone-deps\bin\avcodec.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\linphone-deps\bin\avutil.dll"; DestDir: "{app}"; Flags: ignoreversion
;;Source: "..\..\linphone-deps\bin\libspeex-1.dll"; DestDir: "{app}"; Flags: ignoreversion
;;Source: "..\..\linphone-deps\bin\libspeexdsp-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\mediastreamer2\build\win32native\mediastreamer2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\oRTP\build\win32native\ortp.dll"; DestDir: "{app}"; Flags: ignoreversion
;;Sound files:
Source: "..\COPYING"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\share\ringback.wav"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\share\rings\orig.wav"; DestDir: "{app}\rings"; Flags: ignoreversion
Source: "..\share\rings\bigben.wav"; DestDir: "{app}\rings"; Flags: ignoreversion
Source: "..\share\rings\toy.wav"; DestDir: "{app}\rings"; Flags: ignoreversion
Source: "..\share\rings\tapping.wav"; DestDir: "{app}\rings"; Flags: ignoreversion
Source: "..\share\rings\oldphone.wav"; DestDir: "{app}\rings"; Flags: ignoreversion


;;GTK stuff:
Source: "..\..\gtk+2.12\bin\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\gtk+2.12\etc\gtk-2.0\*"; DestDir: "{app}\etc\gtk-2.0\"; Flags: ignoreversion
Source: "..\..\libxml2-2.6.32+.win32\bin\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\iconv-1.9.2.win32\bin\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\gtk+2.12\lib\gtk-2.0\2.10.0\engines\*"; DestDir: "{app}\lib\gtk-2.0\2.10.0\engines"; Flags: ignoreversion
Source: "..\..\gtk+2.12\lib\gtk-2.0\2.10.0\loaders\*"; DestDir: "{app}\lib\gtk-2.0\2.10.0\loaders"; Flags: ignoreversion
Source: "..\..\gtk+2.12\lib\gtk-2.0\2.10.0\immodules\*"; DestDir: "{app}\lib\gtk-2.0\2.10.0\immodules"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Linphone"; Filename: "{app}\linphone.exe" ; WorkingDir: "{app}"
Name: "{userdesktop}\Linphone"; Filename: "{app}\linphone.exe"; WorkingDir: "{app}" ; Tasks: desktopicon

[Run]
Filename: "{app}\linphone.exe"; Description: "{cm:LaunchProgram,Linphone}"; WorkingDir: "{app}" ; Flags: nowait postinstall skipifsilent

