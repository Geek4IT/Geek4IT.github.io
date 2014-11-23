


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ͷ�ļ�
!include "MUI.nsh"
!include "Sections.nsh"
!include "LogicLib.nsh"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; �궨��
!define STR_AppName "CuteFoto"
!define STR_Version "2.2.240"
!define STR_Publisher "Yonsm.NET"
!define STR_HomepageUrl "http://Yonsm.zj.com"

!define REG_AppPath "Software\Microsoft\Windows\CurrentVersion\App Paths\${STR_AppName}.exe"
!define REG_Uninstall "Software\Microsoft\Windows\CurrentVersion\Uninstall\${STR_AppName}"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MUI ����
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\orange-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\orange-uninstall.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Wizard\orange.bmp"
!define MUI_UNWELCOMEFINISHPAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Wizard\orange-uninstall.bmp"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\orange.bmp"
!define MUI_HEADERIMAGE_UNBITMAP "${NSISDIR}\Contrib\Graphics\Header\orange-uninstall.bmp"

; ���ҳ������
!define MUI_COMPONENTSPAGE_SMALLDESC

; ��ɰ�װҳ������
!define MUI_FINISHPAGE_RUN "$INSTDIR\${STR_AppName}.exe"
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\${STR_AppName}.chm"
!define MUI_FINISHPAGE_SHOWREADME_TEXT "$(LNG_ShowHelp)"
!define MUI_FINISHPAGE_LINK "${STR_AppName} $(LNG_Homepage): ${STR_HomepageUrl}"
!define MUI_FINISHPAGE_LINK_LOCATION "${STR_HomepageUrl}"

; ����ѡ������
!define MUI_LANGDLL_REGISTRY_ROOT "HKLM"
!define MUI_LANGDLL_REGISTRY_KEY "${REG_Uninstall}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; ��װҳ��
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "$(LNG_License)"
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

; ж��ҳ��
!insertmacro MUI_UNPAGE_WELCOME
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH

; ����֧��
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "SimpChinese"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ��������ַ���
LicenseLangString LNG_License ${LANG_ENGLISH} "EULA.ENU.rtf"
LangString LNG_BrandingText ${LANG_ENGLISH} "Expert -> Professional -> Absorbedly"

LangString LNG_DefaultInstation ${LANG_ENGLISH} "Default installtion"
LangString LNG_FullInstation ${LANG_ENGLISH} "Full installtion"
LangString LNG_MinimalInstation ${LANG_ENGLISH} "Minimal installtion"

LangString LNG_Help ${LANG_ENGLISH} "Help"
LangString LNG_Homepage ${LANG_ENGLISH} "Homepage"
LangString LNG_Uninstall ${LANG_ENGLISH} "Uninstall"
LangString LNG_ShowHelp ${LANG_ENGLISH} "Show Help"

LangString LNG_ProgramFile ${LANG_ENGLISH} "Program Files"
LangString LNG_LanguageFile ${LANG_ENGLISH} "Language Files"
LangString LNG_CreateShortcut ${LANG_ENGLISH} "Create Shortcut"

LangString LNG_ProgramMenuShortcutGroup ${LANG_ENGLISH} "Program Menu Shortcut Group"
LangString LNG_DesktopShortcut ${LANG_ENGLISH} "Desktop Shortcut"
LangString LNG_ProgramMenuShortcut ${LANG_ENGLISH} "Program Menu Shortcut"
LangString LNG_StartMenuShortcut ${LANG_ENGLISH} "Start Menu Shortcut"
LangString LNG_QuickLaunchShortcut ${LANG_ENGLISH} "Quick Launch Bar Shortcut"

LangString LNG_ProgramFileDesc ${LANG_ENGLISH} "Install ${STR_AppName} program files."
LangString LNG_LanguageFileDesc ${LANG_ENGLISH} "Install ${STR_AppName} language files."
LangString LNG_CreateShortcutDesc ${LANG_ENGLISH} "Create shortcuts to launch the program easy."

LangString LNG_X86AsciiDesc ${LANG_ENGLISH} "ASCII version on WIN32 platform for X86 architecture (The only choice on WIN9X OS for X86 architecture)."
LangString LNG_X86UnicodeDesc ${LANG_ENGLISH} "Unicode version on WIN32 platform for X86 architecture (Preferred on WINNT OS for X86 architecture)."
LangString LNG_X64UnicodeDesc ${LANG_ENGLISH} "Unicode version on WIN64 platform for X64 architecture (Preferred on WIN64 OS for X64 architecture)."


LicenseLangString LNG_License ${LANG_SIMPCHINESE} "EULA.CHS.rtf"
LangString LNG_BrandingText ${LANG_SIMPCHINESE} "ר�� -> רҵ -> ר��"

LangString LNG_DefaultInstation ${LANG_SIMPCHINESE} "Ĭ�ϰ�װ"
LangString LNG_FullInstation ${LANG_SIMPCHINESE} "��ȫ��װ"
LangString LNG_MinimalInstation ${LANG_SIMPCHINESE} "��С��װ"

LangString LNG_Help ${LANG_SIMPCHINESE} "����"
LangString LNG_Homepage ${LANG_SIMPCHINESE} "��ҳ"
LangString LNG_Uninstall ${LANG_SIMPCHINESE} "ж��"
LangString LNG_ShowHelp ${LANG_SIMPCHINESE} "�鿴����"

LangString LNG_ProgramFile ${LANG_SIMPCHINESE} "�����ļ�"
LangString LNG_LanguageFile ${LANG_SIMPCHINESE} "�����ļ�"
LangString LNG_CreateShortcut ${LANG_SIMPCHINESE} "������ݷ�ʽ"

LangString LNG_ProgramMenuShortcutGroup ${LANG_SIMPCHINESE} "����˵���ݷ�ʽ��"
LangString LNG_DesktopShortcut ${LANG_SIMPCHINESE} "�����ݷ�ʽ"
LangString LNG_ProgramMenuShortcut ${LANG_SIMPCHINESE} "����˵���ݷ�ʽ"
LangString LNG_StartMenuShortcut ${LANG_SIMPCHINESE} "��ʼ�˵���ݷ�ʽ"
LangString LNG_QuickLaunchShortcut ${LANG_SIMPCHINESE} "������������ݷ�ʽ"

LangString LNG_ProgramFileDesc ${LANG_SIMPCHINESE} "��װ ${STR_AppName} �����ļ���"
LangString LNG_LanguageFileDesc ${LANG_SIMPCHINESE} "��װ ${STR_AppName} �����ļ���"
LangString LNG_CreateShortcutDesc ${LANG_SIMPCHINESE} "�������ڿ��ٷ��ʵĿ�ݷ�ʽ��"

LangString LNG_X86AsciiDesc ${LANG_SIMPCHINESE} "��װ X86 �ܹ� WIN32 ƽ̨�ϵ�  ASCII �汾�������� X86 �ܹ� WIN9X �����ϵͳ�е�Ψһѡ��"
LangString LNG_X86UnicodeDesc ${LANG_SIMPCHINESE} "��װ X86 �ܹ� WIN32 ƽ̨�ϵ� UNICODE �汾�������� X86 �ܹ� WINNT �����ϵͳ�е�����ѡ��"
LangString LNG_X64UnicodeDesc ${LANG_SIMPCHINESE} "��װ X64 �ܹ� WIN64 ƽ̨�ϵ� UNICODE �汾�������� X64 �ܹ� WIN64 �����ϵͳ�е�����ѡ��"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ����
Name "${STR_AppName} ${STR_Version}"
OutFile "${STR_AppName}.${STR_Version}.exe"
InstallDir "$PROGRAMFILES\${STR_AppName}"
InstallDirRegKey HKLM "${REG_AppPath}" ""
ShowInstDetails SHOW
ShowUnInstDetails SHOW
BrandingText "$(LNG_BrandingText)"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ��װ����
!ifndef NOINSTTYPES
	InstType "$(LNG_DefaultInstation)"
	InstType "$(LNG_FullInstation)"
	InstType "$(LNG_MinimalInstation)"
!endif
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; �����ļ�
Section
SectionEnd
SectionGroup /e "$(LNG_ProgramFile)" SEC_ProgramFile
	Section "-HelpFile" SEC_HelpFile
		SetOutPath "$INSTDIR"
		SetOverwrite ON 
		
		File "..\Help\CuteFoto.chm"
	SectionEnd

	Section "X86 ASCII" SEC_X86Ascii
		SectionIn 1 2 3
		File "..\Release\CuteFoto.exe"
	SectionEnd

	Section "X86 UNICODE" SEC_X86Unicode
		SectionIn 5 RO
		File "..\Unicode\Release\CuteFoto.exe"
	SectionEnd

	Section "X64 UNICODE" SEC_X64Unicode
		SectionIn 5 RO
		File "..\AMD64\Release\CuteFoto.exe"
	SectionEnd
SectionGroupEnd
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; �����ļ�
SectionGroup "$(LNG_LanguageFile)" SEC_LanguageFile
	Section "English" SEC_English
		SectionIn 2
		File "..\Release\English.lng"
	SectionEnd

	Section "CAPITAL ENGLISH" SEC_CapitalEnglish
		SectionIn 1 2
		File "..\Release\English (Capital).lng"
	SectionEnd

	Section "��������" SEC_SimplifiedChinese
		SectionIn 1 2
		File "..\Release\Chinese (Simplified).lng"
	SectionEnd
SectionGroupEnd
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ��ݷ�ʽ
SectionGroup "$(LNG_CreateShortcut)" SEC_Shortcut
	SectionGroup "$(LNG_ProgramMenuShortcutGroup)" SEC_ProgramMenuShortcutGroup
		Section "${STR_AppName}" SEC_AppNameShortcut
			SectionIn 1 2
			CreateDirectory "$SMPROGRAMS\${STR_AppName}"
			CreateShortCut "$SMPROGRAMS\${STR_AppName}\${STR_AppName}.lnk" "$INSTDIR\${STR_AppName}.exe"
		SectionEnd

		Section "${STR_AppName} $(LNG_Help)" SEC_HelpShortcut
			SectionIn 1 2
			CreateDirectory "$SMPROGRAMS\${STR_AppName}"
			CreateShortCut "$SMPROGRAMS\${STR_AppName}\${STR_AppName} $(LNG_Help).lnk" "$INSTDIR\${STR_AppName}.chm"
		SectionEnd

		Section "${STR_AppName} $(LNG_Homepage)" SEC_HomePageShortcut
			SectionIn 1 2
			CreateDirectory "$SMPROGRAMS\${STR_AppName}"
			WriteINIStr "$SMPROGRAMS\${STR_AppName}\${STR_AppName} $(LNG_Homepage).url" "InternetShortcut" "URL" "${STR_HomepageUrl}"
		SectionEnd

		Section "$(LNG_Uninstall) ${STR_AppName}" SEC_UninstallShortcut
			SectionIn 1 2
			CreateDirectory "$SMPROGRAMS\${STR_AppName}"
			CreateShortCut "$SMPROGRAMS\${STR_AppName}\$(LNG_Uninstall) ${STR_AppName}.lnk" "$INSTDIR\Uninstall ${STR_AppName}.exe"
		SectionEnd
	SectionGroupEnd

	Section "$(LNG_DesktopShortcut)" SEC_DesktopShortcut
		SectionIn 1 2
		CreateShortCut "$DESKTOP\${STR_AppName}.lnk" "$INSTDIR\${STR_AppName}.exe"
	SectionEnd

	Section "$(LNG_ProgramMenuShortcut)" SEC_ProgramMenuShortcut
		SectionIn 2
		CreateShortCut "$SMPROGRAMS\${STR_AppName}.lnk" "$INSTDIR\${STR_AppName}.exe"
	SectionEnd
	
	Section "$(LNG_StartMenuShortcut)" SEC_StartMenuShortcut
		SectionIn 2
		CreateShortCut "$STARTMENU\${STR_AppName}.lnk" "$INSTDIR\${STR_AppName}.exe"
	SectionEnd

	Section "$(LNG_QuickLaunchShortcut)" SEC_QuickLaunchShortcut
		SectionIn 2
		CreateShortCut "$QUICKLAUNCH\${STR_AppName}.lnk" "$INSTDIR\${STR_AppName}.exe"
	SectionEnd
SectionGroupEnd
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ��ɰ�װ
Section "-PostInstall"
	WriteUninstaller "$INSTDIR\Uninstall ${STR_AppName}.exe"
	WriteRegStr HKLM "${REG_AppPath}" "" "$INSTDIR\CuteFoto.exe"
	WriteRegStr HKLM "${REG_Uninstall}" "DisplayName" "$(^Name)"
	WriteRegStr HKLM "${REG_Uninstall}" "UninstallString" "$INSTDIR\Uninstall ${STR_AppName}.exe"
	WriteRegStr HKLM "${REG_Uninstall}" "DisplayIcon" "$INSTDIR\CuteFoto.exe"
	WriteRegStr HKLM "${REG_Uninstall}" "DisplayVersion" "${STR_Version}"
	WriteRegStr HKLM "${REG_Uninstall}" "URLInfoAbout" "${STR_HomepageUrl}"
	WriteRegStr HKLM "${REG_Uninstall}" "Publisher" "${STR_Publisher}"
SectionEnd
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ж��
Section "Uninstall"
	Delete /REBOOTOK "$SMPROGRAMS\${STR_AppName}\${STR_AppName}.lnk"
	Delete /REBOOTOK "$SMPROGRAMS\${STR_AppName}\${STR_AppName} $(LNG_Help).lnk"
	Delete /REBOOTOK "$SMPROGRAMS\${STR_AppName}\${STR_AppName} $(LNG_Homepage).url"
	Delete /REBOOTOK "$SMPROGRAMS\${STR_AppName}\$(LNG_Uninstall) ${STR_AppName}.lnk"

	Delete /REBOOTOK "$DESKTOP\${STR_AppName}.lnk"
	Delete /REBOOTOK "$SMPROGRAMS\${STR_AppName}.lnk"
	Delete /REBOOTOK "$STARTMENU\${STR_AppName}.lnk"
	Delete /REBOOTOK "$QUICKLAUNCH\${STR_AppName}.lnk"

	Delete /REBOOTOK "$INSTDIR\${STR_AppName}.exe"
	Delete /REBOOTOK "$INSTDIR\${STR_AppName}.chm"
	Delete /REBOOTOK "$INSTDIR\English.lng"
	Delete /REBOOTOK "$INSTDIR\English (Capital).lng"
	Delete /REBOOTOK "$INSTDIR\Chinese (Simplified).lng"

	Delete /REBOOTOK "$INSTDIR\${STR_AppName}.ini"
	Delete /REBOOTOK "$INSTDIR\Uninstall ${STR_AppName}.exe"

	RMDir /REBOOTOK "$SMPROGRAMS\${STR_AppName}"
	RMDir /REBOOTOK "$INSTDIR"

	DeleteRegKey HKLM "${REG_Uninstall}"
	DeleteRegKey HKLM "${REG_AppPath}"
	SetAutoClose True
SectionEnd
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ������
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_ProgramFile} "$(LNG_ProgramFileDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_LanguageFile} "$(LNG_LanguageFileDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_Shortcut} "$(LNG_CreateShortcutDesc)"

	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_X86Ascii} "$(LNG_X86AsciiDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_X86Unicode} "$(LNG_X86UnicodeDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_X64Unicode} "$(LNG_X64UnicodeDesc)"

	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_English} "Install language file: English (For translation only)."
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_CapitalEnglish} "INSTALL LANGUAGE FILE: CAPITAL ENGLISH."
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_SimplifiedChinese} "��װ�����ļ�: �������ġ�"

	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_ProgramMenuShortcutGroup} "$(LNG_CreateShortcutDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_DesktopShortcut} "$(LNG_CreateShortcutDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_ProgramMenuShortcut} "$(LNG_CreateShortcutDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_StartMenuShortcut} "$(LNG_CreateShortcutDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_QuickLaunchShortcut} "$(LNG_CreateShortcutDesc)"

	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_AppNameShortcut} "$(LNG_CreateShortcutDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_HelpShortcut} "$(LNG_CreateShortcutDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_HomePageShortcut} "$(LNG_CreateShortcutDesc)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC_UninstallShortcut} "$(LNG_CreateShortcutDesc)"
!insertmacro MUI_FUNCTION_DESCRIPTION_END
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ��ʼ���ص�����
Function .onInit
	StrCpy $1 ${SEC_X86Ascii}

	ReadRegStr $0 HKLM "SOFTWARE\Microsoft\Windows NT\CurrentVersion" "CurrentVersion"
	${If} $0 != ""
		SectionSetInstTypes ${SEC_X86Ascii} 0
		!insertmacro UnselectSection ${SEC_X86Ascii}
		!insertmacro ClearSectionFlag ${SEC_X86Unicode} ${SF_RO}

		ReadRegStr $0 HKLM "SYSTEM\CurrentControlSet\Control\Session Manager\Environment" "PROCESSOR_ARCHITECTURE"
		${If} $0 != "AMD64"
			SectionSetInstTypes ${SEC_X86Unicode} 7
			!insertmacro SelectSection ${SEC_X86Unicode}
			StrCpy $1 ${SEC_X86Unicode}
		${Else}
			SectionSetInstTypes ${SEC_X64Unicode} 7
			!insertmacro ClearSectionFlag ${SEC_X64Unicode} ${SF_RO}
			!insertmacro SelectSection ${SEC_X64Unicode}
			StrCpy $1 ${SEC_X64Unicode}
		${EndIf}		
	${EndIf}
	
	!insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ѡ��ı�
Function .onSelChange
	!insertmacro StartRadioButtons $1
		!insertmacro RadioButton ${SEC_X86Ascii}
		!insertmacro RadioButton ${SEC_X86Unicode}
		!insertmacro RadioButton ${SEC_X64Unicode}
	!insertmacro EndRadioButtons
FunctionEnd
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ж�س�ʼ��
Function un.onInit
	!insertmacro MUI_UNGETLANGUAGE
FunctionEnd
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
