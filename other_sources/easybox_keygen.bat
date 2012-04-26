@echo off & setlocal enabledelayedexpansion
echo ####### Arcor/EasyBox WPA-Key Generator #######
echo http://www.wotan.cc
echo Use this only on your own AP!
echo.
set /p macu=Bitte geben Sie die MAC ein:
set mac=!macu::=!
set mac=!mac:-=!
set m9=!mac:~8,1!
set m10=!mac:~9,1!
set m11=!mac:~10,1!
set m12=!mac:~11,1!

set /a smac=0x!m9!!m10!!m11!!m12!
if !smac! lss 10 (
	(set smac=0000)
) else (
if !smac! lss 100 (
	(set smac=000!smac!)
) else (
if !smac! lss 1000 (
	(set smac=00!smac!)
) else (
if !smac! lss 10000 (
	(set smac=0!smac!)
))))
set s6=!smac:~0,1!
set s7=!smac:~1,1!
set s8=!smac:~2,1!
set s9=!smac:~3,1!
set s10=!smac:~4,1!
set smac=%s6%%s7%%s8%%s9%%s10%
	
set /a k1=s7+s8+0x!m11!+0x!m12!
set dec=!k1!
call :dectohex
set k1=0x!hex!
		
set /a k2=s9+s10+0x!m9!+0x!m10!
set dec=!k2!
call :dectohex
set k2=0x!hex!
		
set /a x1="k1^s10"
set dec=!x1!
call :dectohex
set x1=!hex!
set /a x2="k1^s9"
set dec=!x2!
call :dectohex
set x2=!hex!
set /a x3="k1^s8"
set dec=!x3!
call :dectohex
set x3=!hex!
set /a y1="k2^^0x!m10!"
set dec=!y1!
call :dectohex
set y1=!hex!
set /a y2="k2^^0x!m11!"
set dec=!y2!
call :dectohex
set y2=!hex!
set /a y3="k2^^0x!m12!"
set dec=!y3!
call :dectohex
set y3=!hex!
set /a z1="0x!m11!^^s10"
set dec=!z1!
call :dectohex
set z1=!hex!
set /a z2="0x!m12!^^s9"
set dec=!z2!
call :dectohex
set z2=!hex!
set /a z3="k1^k2"
set dec=!z3!
call :dectohex
set z3=!hex!
set key=!x1!!y1!!z1!!x2!!y2!!z2!!x3!!y3!!z3!
echo.
echo MAC:		%macu%
echo SSID:		EasyBox-%mac:~6,4%%s6%%s10%
echo SSID:		Arcor-%mac:~6,4%%s6%%s10%
echo SSID:		Vodafone-%mac:~6,4%%s6%%s10%
echo SMAC:		%smac%
echo K1:		%K1%	
echo K2:		%K2%
echo WPA-KEY:	%key%
echo.
pause
	
		:dectohex
set "hex="
set "map=0123456789ABCDEF"
for /L %%N in (1,1,1) do (
    set /a "d=dec&15,dec>>=4"
    for %%D in (!d!) do set "hex=!map:~%%D,1!!hex!"
	)	
set "dec="
