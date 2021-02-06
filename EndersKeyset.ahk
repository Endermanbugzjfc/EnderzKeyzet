/*
 * * * Compile_AHK SETTINGS BEGIN * * *

[AHK2EXE]
Exe_File=%In_Dir%\EndersKeyset.exe
Compression=0
[VERSION]
Set_Version_Info=1
Company_Name=
File_Version=0.1.0.0
Inc_File_Version=0
Internal_Name=EndersKeyset
Original_Filename=EndersKeyset
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