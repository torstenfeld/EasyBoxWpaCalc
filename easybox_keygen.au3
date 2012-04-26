#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         Torsten Feld
 Website:		 Feldstudie.net

 Script Function:
	Calculates WPA default key for several EasyBox WLan routers

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>



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

	; testing
	GUICtrlSetData($Input_Ssid, "Arcor-910B02")
	GUICtrlSetData($Input_Mac, "00:12:BF:91:0B:EC")

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE, $Button_Exit
				Exit
			Case $Button_Calc
				$lSsid = GUICtrlRead($Input_Ssid)
				$lMac = GUICtrlRead($Input_Mac)
				_CalcKey($lSsid, $lMac, $lKey)
				GUICtrlSetData($Input_Key, $lKey)
		EndSwitch
	WEnd



EndFunc

Func _CalcKey($lSsid, $lMac, ByRef $lKey)

	; testing
	$lKey = $lSsid & $lMac

	Return 0


EndFunc
