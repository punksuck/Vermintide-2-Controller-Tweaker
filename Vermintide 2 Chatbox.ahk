﻿ray, NoStandard
Menu, tray, add, 重置 | Reload, ReloadScrit
Menu, tray, add, 暂停 | Pause, PauseScrit
Menu, tray, add
Menu, tray, add, 帮助 | Help, Help
Menu, tray, add, 更新 | Ver 0.3, UpdateScrit
Menu, tray, add, 退出 | Exit, ExitScrit

Gui, +ToolWindow -Caption +AlwaysOnTop
Gui, Color, %bGColor%
gui, font, s12 cffffff
Gui, Color, ,000000
Gui, Add, Edit, x0 y0 w%chatboxW% h25 vchatBox Limit140
gui, font

SetTimer, battleModeCheck, 200

Return

battleModeCheck:
	If WinExist("ChatBoxTitle") && !WinActive("ChatBoxTitle")
	{
		WinActive("ChatBoxTitle")
		Gui Cancel
	}

	If !WinActive("ahk_exe vermintide2.exe") && (rDown=1)
	{
		Send, {RButton Up}
		rDown=0
	}
Return

#Include, Handle.ahk