/*
 * * * Compile_AHK SETTINGS BEGIN * * *

[AHK2EXE]
Exe_File=%In_Dir%\EndersKeyset.exe
Compression=2
[VERSION]
Set_Version_Info=1
File_Version=0.1.1.1
Inc_File_Version=0
Internal_Name=EndersKeyset
Original_Filename=EndersKeyset.ahk
Product_Version=1.1.33.2
Set_AHK_Version=1
Language_ID=31
[ICONS]
Icon_1=%In_Dir%\image\MainIcon.ico
Icon_2=%In_Dir%\image\MainIcon.ico
Icon_3=%In_Dir%\image\Suspend_Pause.ico
Icon_4=%In_Dir%\image\Suspend_Pause.ico
Icon_5=%In_Dir%\image\Suspend_Pause.ico

* * * Compile_AHK SETTINGS END * * *
*/

#MaxHotkeysPerInterval 9223372036854775807
;AHK max int

~Alt::
	;https://www.autohotkey.com/boards/viewtopic.php?t=10067
    KeyWait, Alt
    KeyWait, Alt, D T0.2
    if !ErrorLevel {
        Click, Right
    }
Return

~Alt & .::WheelUp
~Alt & Control::WheelDown
~Alt & [::WheelLeft
~Alt & ]::WheelRight

~Alt & ~/::
	MouseGetPos, x, y
	Send, {LWin Down}b{LWin Up}
	Sleep, 300
	MouseMove, 1900, 989
	Click
	MouseMove, %x%, %y%
Return

~Alt & ~F6::
	if (%lock% == true) {
		lock = false
		BlockInput, MouseMoveOff
	} else {
		lock = true
		BlockInput, MouseMove
	}
Return