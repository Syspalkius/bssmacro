﻿global currentversion
FileRead,currentversion,configs/version.txt
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://raw.githubusercontent.com/Syspalkius/HotbarAutomator/main/Hotbar%20Automator/Hotbar%20Automator.ahk", true)
whr.Send()
whr.WaitForResponse()
version := whr.ResponseText
if (currentversion != version){
	tooltip,
	MsgBox,52,New version,There is a new version available, would you like to download it?
	ifmsgbox,Yes
	{
		run,https://github.com/Syspalkius/bssmacro
		run,https://github.com/Syspalkius/bssmacro/archive/refs/heads/main.zip
		Exitapp
	}
}