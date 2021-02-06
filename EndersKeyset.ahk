LAlt & RAlt::Click, Right

~LAlt & ~Up::WheelUp
~LAlt & ~Down::WheelDown

~LAlt & ~Left:: Send, {LControl}{-}
~LAlt & ~Right:: Send, {LControl}{+}

~LAlt & ~/::
	MouseGetPos, x, y
	Send, {LWin Down}b{LWin Up}
	Sleep, 300
	MouseMove, 1900, 989
	Click
	MouseMove, %x%, %y%