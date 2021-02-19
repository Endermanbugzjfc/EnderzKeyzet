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