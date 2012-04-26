#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         Torsten Feld
 Website:		 Feldstudie.net
 GitHub:		 https://github.com/torstenfeld/EasyBoxWpaCalc
ToDo's:			 https://trello.com/board/easyboxwpacalc/4f9914dbee51e08c3b85952d

 Script Function:
	Calculates WPA default key for several EasyBox WLan routers

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

#include <Array.au3>

_Main()

Func _Main()

	Local $lSsid, $lMac, $lKey

	#Region ### START Koda GUI section ### Form=
	$Form_Main = GUICreate("EasyBox WPA Calculator", 491, 284, 192, 124)
	$Group_Input = GUICtrlCreateGroup("Input", 16, 80, 465, 89)
	$Label1 = GUICtrlCreateLabel("SSID:", 32, 104, 32, 17)
	$Input_Ssid = GUICtrlCreateInput("Insert SSID here", 128, 104, 225, 21)
	$Label2 = GUICtrlCreateLabel("MAC:", 32, 136, 30, 17)
	$Input_Mac = GUICtrlCreateInput("Insert MAC address here", 128, 136, 225, 21)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	$Group2 = GUICtrlCreateGroup("Output", 16, 176, 465, 65)
	$Label3 = GUICtrlCreateLabel("Key:", 32, 200, 25, 17)
	$Input_Key = GUICtrlCreateInput("", 128, 200, 225, 21, BitOR($ES_CENTER,$ES_AUTOHSCROLL,$ES_READONLY))
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	$Button_Exit = GUICtrlCreateButton("Exit", 408, 248, 75, 25, $WS_GROUP)
	$Button_Calc = GUICtrlCreateButton("Calculate", 328, 248, 75, 25, $WS_GROUP)
	GUISetState(@SW_SHOW)
	#EndRegion ### END Koda GUI section ###

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE, $Button_Exit
				Exit
			Case $Button_Calc
				$lSsid = GUICtrlRead($Input_Ssid)
				$lMac = GUICtrlRead($Input_Mac)
				If Not _CheckInputMac($lMac) Then
					MsgBox(16, "Error", "Please enter MAC address in format: " & @CRLF & "01:23:45:67:89:AB")
					ContinueLoop
				EndIf
				_CalcKey($lSsid, $lMac, $lKey)
				GUICtrlSetData($Input_Key, $lKey)
		EndSwitch
	WEnd

EndFunc

Func _CheckInputMac($lMac) ; returns true if Mac is ok

	Return StringRegExp($lMac, "^([0-9a-fA-F][0-9a-fA-F]:){5}([0-9a-fA-F][0-9a-fA-F])$")

EndFunc

Func _CalcKey($lSsid, $lMac, ByRef $lKey)

	Local $lC1
	Local $lS6, $lS7, $lS8, $lS9, $lS10
	Local $lM7, $lM8, $lM9, $lM10, $lM11, $lM12
	Local $lK1, $lK2
	Local $lX1, $lX2, $lX3
	Local $lY1, $lY2, $lY3
	Local $lZ1, $lZ2, $lZ3

	Local $laMacArray = StringSplit($lMac, ":") ; split the mac address by ;

	$lC1 = Dec($laMacArray[$laMacArray[0]-1] & $laMacArray[$laMacArray[0]])
	For $i = StringLen($lC1) To 4 ; fills with leading 0 until $lC1 is 5 chars
		$lC1 = "0" & $lC1
	Next

	$lS6 = StringMid($lC1, 1, 1)
	$lS7 = StringMid($lC1, 2, 1)
	$lS8 = StringMid($lC1, 3, 1)
	$lS9 = StringMid($lC1, 4, 1)
	$lS10 = StringMid($lC1, 5, 1)

	$lMac = StringReplace($lMac, ":", "")

	$lM7 = StringMid($lMac, 7, 1)
	$lM8 = StringMid($lMac, 8, 1)
	$lM9 = StringMid($lMac, 9, 1)
	$lM10 = StringMid($lMac, 10, 1)
	$lM11 = StringMid($lMac, 11, 1)
	$lM12 = StringMid($lMac, 12, 1)

	$lK1 = StringRight(Hex(Dec($lS7) + Dec($lS8) + Dec($lM11) + Dec($lM12)), 1)
	$lK2 = StringRight(Hex(Dec($lM9) + Dec($lM10) + Dec($lS9) + Dec($lS10)), 1)

	$lX1 = StringRight(Hex(BitXOR(Dec($lK1), Dec($lS10))), 1)
	$lX2 = StringRight(Hex(BitXOR(Dec($lK1), Dec($lS9))), 1)
	$lX3 = StringRight(Hex(BitXOR(Dec($lK1), Dec($lS8))), 1)
	$lY1 = StringRight(Hex(BitXOR(Dec($lK2), Dec($lM10))), 1)
	$lY2 = StringRight(Hex(BitXOR(Dec($lK2), Dec($lM11))), 1)
	$lY3 = StringRight(Hex(BitXOR(Dec($lK2), Dec($lM12))), 1)
	$lZ1 = StringRight(Hex(BitXOR(Dec($lM11), Dec($lS10))), 1)
	$lZ2 = StringRight(Hex(BitXOR(Dec($lM12), Dec($lS9))), 1)
	$lZ3 = StringRight(Hex(BitXOR(Dec($lK1), Dec($lK2))), 1)

	$lKey = $lX1 & $lY1 & $lZ1 & $lX2 & $lY2 & $lZ2 & $lX3 & $lY3 & $lZ3

EndFunc
