#MaxHotkeysPerInterval 9223372036854775807 ;AHK max int

;Right click
~Alt::
	;https://www.autohotkey.com/boards/viewtopic.php?t=10067
    KeyWait, Alt
    KeyWait, Alt, D T0.2
    if !ErrorLevel {
        Click, Right
    }
Return

;Verticle scroll
~Alt & .::WheelUp
~Alt & Control::WheelDown
;Horizontal scroll
~Alt & [::WheelLeft
~Alt & ]::WheelRight

;Windows Action Center
~Alt & ~/::
	MouseGetPos, x, y
	Send, {LWin Down}b{LWin Up}
	Sleep, 300
	MouseMove, 1900, 989
	Click
	MouseMove, %x%, %y%
Return

;Mouse lock
~Alt & ~F6::
	if (%lock% == true) {
		lock = false
		BlockInput, MouseMoveOff
	} else {
		lock = true
		BlockInput, MouseMove
	}
Return