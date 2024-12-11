#NoEnv
#InstallKeybdHook
#InstallMouseHook
#SingleInstance Force
SetBatchLines, -1

#Include Socket.ahk
#Include Jxon.ahk
#Include RemoteObj.ahk

RemoteSuit1 := new RemoteObjClient(["lan.ip.goes.here", 1337])

;if !RemoteSuit1.Index
;	RemoteSuit1.Index := 1

Loop
{
turrentNum = 1

; Left Shift
<+LButton::
	;MouseClick, Right
	M := !M
	if (M)
	{
		RemoteSuit1.HoldMouse()
		RemoteRig1.HoldMouse()	
		;Click "Right"
	}
	else
	{
		RemoteSuit1.ReleaseMouse()
		RemoteRig1.ReleaseMouse()
		;Un-Click "Right"
	}
	return


<+RButton:: 
	; Target under reticle
	RemoteSuit1.QuickPress("t") 
	RemoteRig1.QuickPress("t") 
	return

<+MButton::
	; Target Closest Hostile
	RemoteSuit1.QuickPress("!5")
	RemoteRig1.QuickPress("!5")  
	return

; Left Alt
<!RButton::
	; Toggle ESP
	RemoteSuit1.QuickPress("e")
	RemoteRig1.QuickPress("e")
	return

<!MButton::
	; Toggle Gyro
	RemoteSuit1.QuickPress("g") 
	RemoteRig1.QuickPress("g") 
	return

; Left Ctrl
<^RButton::
	RemoteSuit1.QuickPress("t")
	RemoteRig1.QuickPress("t")
	return

<^MButton::
	; Hold to Center
	RemoteSuit1.QuickPress("c")
	RemoteRig1.QuickPress("c")
	return
	
; Right Shift
>+RButton::
	RemoteSuit1.QuickPress("t")
	RemoteRig1.QuickPress("t")
	return

>+MButton::
	RemoteSuit1.Run("C:\Users\Chris Wiley\Documents\AutoHotKey\exit-c2.exe")
	RemoteRig1.Run("C:\Users\Chris Wiley\Documents\AutoHotKey\exit-c2.exe")
	return

; Right Alt
>!RButton::
	RemoteSuit1.QuickPress("\")
	RemoteRig1.QuickPress("\")
	return

>!MButton::
	RemoteSuit1.QuickPress("t")
	RemoteRig1.QuickPress("t")
	return

; Right Ctrl
>^RButton::
	Switch [turretNum] ; Cycle through turret options
	{
	Case 1:
		RemoteSuit1.QuickPress("+1")
		RemoteRig1.QuickPress("+1")
		turretNum++
	Case 2:
		RemoteSuit1.QuickPress("+2")
		RemoteRigt1.QuickPress("+2")
		turretNum++
	Case 3: 
		RemoteSuit1.QuickPress("+3")
		RemoteRig1.QuickPress("+3")
		turretNum = 1
	Default:
		RemoteSuit1.QuickPress("+1")
		RemoteRig1.QuickPress("+1")
		turrentNum = 1
	}
	return

>^MButton::
	; Switch turret position
	RemoteSuit1.QuickPress("s") 
	RemoteRig1.QuickPress("s")
	return

;+c::
;	C := !C
;	if (C)
;	{
;		Remote.HoldKey("c")
;	}
;	else
;	{
;		Remote.ReleaseKey("c")
;	}
;	return
;+t::
;	Send t
;	Remote.QuickPress("t")
;	return
;!t::
;	Send t
;	Remote.QuickPress("t")
;	return
;+r::
;	Remote.QuickPress("r")
;	return
;+g::
;	Remote.QuickPress("g")
;	return
;+e::
;	Remote.QuickPress("e")
;	return
;+1::
;	Remote.QuickPress("+1")
;	return
;+2::
;	Remote.QuickPress("+2")
;	return
;+3::
;	Remote.QuickPress("+3")
;	return
;RButton::
;Remote.HoldKey("\")
;KeyWait, RButton
;Remote.ReleaseKey("\")
;x::
;Remote.QuickPress("x")
;Send x
;return
;\::
;	now := A_TickCount
;	Remote.HoldKey("\")
;	while GetKeyState("\", "P")
;	return
;Remote.ReleaseKey("\")
;return
}

;Remote.AddButton(Remote.Index++ ". Run Notepad", "Run", "notepad")
;Remote.AddButton(Remote.Index++ ". Show MsgBox", "MsgBox", "Hello!")
;Remote.MsgBox("Command Received.")
;Remote.QuickPress("\")
;Remote.HoldKey("\")
;sleep, 5000
;Remote.ReleaseKey("\")

ExitApp
return
