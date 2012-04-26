	.intel_syntax noprefix

	#keygen.bas' compilation started at 09:09:51 (FreeBASIC 0.23.0)

.section .text
.balign 16

.globl DEHEX
DEHEX:
.type DEHEX, @function
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_0004:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov byte ptr [ebp-20], 0
mov byte ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_UCASE
add esp, 4
push eax
push 0
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 1
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-28], eax
jmp .Lt_0007
.Lt_000A:
push 1
push 1
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_ASC
add esp, 8
mov bl, al
mov byte ptr [ebp-20], bl
mov bl, byte ptr [ebp-20]
mov byte ptr [ebp-32], bl
movsx ebx, byte ptr [ebp-32]
cmp ebx, 65
jl .Lt_000D
movsx ebx, byte ptr [ebp-32]
cmp ebx, 70
jg .Lt_000D
.Lt_000E:
movsx ebx, byte ptr [ebp-20]
add ebx, -55
mov al, bl
mov byte ptr [ebp-24], al
jmp .Lt_000B
.Lt_000D:
movsx eax, byte ptr [ebp-20]
push eax
push 1
call fb_CHR
add esp, 8
push eax
call fb_VAL
add esp, 4
sub esp, 4
fistp dword ptr [esp]
mov al, byte ptr [esp]
mov byte ptr [ebp-24], al
add esp, 4
.Lt_000F:
.Lt_000B:
fild dword ptr [ebp-16]
movsx eax, byte ptr [ebp-24]
push eax
fild dword ptr [esp]
add esp, 4
mov eax, dword ptr [ebp-12]
sub eax, dword ptr [ebp-8]
push eax
fild dword ptr [esp]
add esp, 4
sub esp,8
fstp qword ptr [esp]
push dword ptr [Lt_0010+4]
push dword ptr [Lt_0010]
fstp qword ptr [ebp-40]
fstp qword ptr [ebp-48]
call pow
add esp, 16
fmul qword ptr [ebp-40]
fadd qword ptr [ebp-48]
fistp dword ptr [ebp-16]
.Lt_0008:
inc dword ptr [ebp-8]
.Lt_0007:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-8], eax
jle .Lt_000A
.Lt_0009:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0005:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size DEHEX, .-DEHEX
.balign 16
fb_ctor__keygen:
.type fb_ctor__keygen, @function
push ebp
mov ebp, esp
sub esp, 476
push ebx
.Lt_0002:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 1
push 41
push offset Lt_0013
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 20
push offset Lt_0014
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 19
push offset Lt_0015
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 0
push offset Lt_0000
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 38
push offset Lt_0016
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 0
push offset Lt_0000
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 50
push offset Lt_0017
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push -1
push 0
push 5
push offset Lt_0018
call fb_StrAllocTempDescZEx
add esp, 8
push eax
call fb_ConsoleInput
add esp, 12
push 0
push -1
lea eax, [ebp-12]
push eax
call fb_InputString
add esp, 12
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
push 1
push 1
lea eax, [ebp-12]
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-152]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-152]
call DEHEX
add esp, 4
lea ebx, [ebp-152]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 1
push 2
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-164]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-164]
call DEHEX
add esp, 4
lea ebx, [ebp-164]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push 1
push 3
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-176]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-176]
call DEHEX
add esp, 4
lea ebx, [ebp-176]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push -1
push 1
push 4
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-188]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-188]
call DEHEX
add esp, 4
lea ebx, [ebp-188]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push 1
push 5
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-200]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-200]
call DEHEX
add esp, 4
lea ebx, [ebp-200]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 1
push 6
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-212]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-212]
call DEHEX
add esp, 4
lea ebx, [ebp-212]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-36], ebx
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push 1
push 7
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-224]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-224]
call DEHEX
add esp, 4
lea ebx, [ebp-224]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-40], ebx
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push -1
push 1
push 8
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-236]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-236]
call DEHEX
add esp, 4
lea ebx, [ebp-236]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
push 1
push 9
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-248]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-248]
call DEHEX
add esp, 4
lea ebx, [ebp-248]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-48], ebx
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push -1
push 1
push 10
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-260]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-260]
call DEHEX
add esp, 4
lea ebx, [ebp-260]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-52], ebx
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
push 0
push -1
push 1
push 11
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-272]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-272]
call DEHEX
add esp, 4
lea ebx, [ebp-272]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-56], ebx
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 1
push 12
lea ebx, [ebp-12]
push ebx
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-284]
call DEHEX
add esp, 4
lea ebx, [ebp-284]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-60], ebx
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
push 0
push -1
push -1
push dword ptr [ebp-60]
call fb_HEX_i
add esp, 4
push eax
push -1
push -1
push dword ptr [ebp-56]
call fb_HEX_i
add esp, 4
push eax
push -1
push -1
push dword ptr [ebp-52]
call fb_HEX_i
add esp, 4
push eax
push -1
push dword ptr [ebp-48]
call fb_HEX_i
add esp, 4
push eax
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-332]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-332]
call DEHEX
add esp, 4
lea ebx, [ebp-332]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-128], ebx
push 1
push -1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
push 7
push offset Lt_0029
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
lea eax, [ebp-344]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
push -1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrLen
add esp, 8
cmp eax, 5
jne .Lt_002C
push 1
push 1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-72]
push 1
push 2
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-76]
push 1
push 3
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-80]
push 1
push 4
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-84]
push 1
push 5
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-88]
jmp .Lt_002B
.Lt_002C:
push -1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrLen
add esp, 8
cmp eax, 4
jne .Lt_002D
mov dword ptr [ebp-72], 0
push 1
push 1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-76]
push 1
push 2
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-80]
push 1
push 3
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-84]
push 1
push 4
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-88]
jmp .Lt_002B
.Lt_002D:
push -1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrLen
add esp, 8
cmp eax, 3
jne .Lt_002E
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
push 1
push 1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-80]
push 1
push 2
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-84]
push 1
push 3
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-88]
jmp .Lt_002B
.Lt_002E:
push -1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrLen
add esp, 8
cmp eax, 2
jne .Lt_002F
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-80], 0
push 1
push 1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-84]
push 1
push 2
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-88]
jmp .Lt_002B
.Lt_002F:
push -1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrLen
add esp, 8
cmp eax, 1
jne .Lt_0030
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-84], 0
push 1
push 1
push dword ptr [ebp-128]
call fb_IntToStr
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-88]
.Lt_0030:
.Lt_002B:
push 1
push -1
push dword ptr [ebp-88]
call fb_IntToStr
add esp, 4
push eax
push -1
push -1
push dword ptr [ebp-72]
call fb_IntToStr
add esp, 4
push eax
push -1
push -1
push dword ptr [ebp-52]
call fb_HEX_i
add esp, 4
push eax
push -1
push -1
push dword ptr [ebp-48]
call fb_HEX_i
add esp, 4
push eax
push -1
push -1
push dword ptr [ebp-44]
call fb_HEX_i
add esp, 4
push eax
push -1
push -1
push dword ptr [ebp-40]
call fb_HEX_i
add esp, 4
push eax
push 15
push offset Lt_0031
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
lea eax, [ebp-356]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
lea eax, [ebp-368]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
lea eax, [ebp-380]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
lea eax, [ebp-392]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
lea eax, [ebp-404]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
lea eax, [ebp-416]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
mov eax, dword ptr [ebp-80]
add eax, dword ptr [ebp-76]
add eax, dword ptr [ebp-56]
add eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-52]
add eax, dword ptr [ebp-48]
add eax, dword ptr [ebp-84]
add eax, dword ptr [ebp-88]
mov dword ptr [ebp-68], eax
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
push 0
push -1
push 1
push -1
push dword ptr [ebp-64]
call fb_HEX_i
add esp, 4
push eax
call fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-64]
call fb_HEX_i
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-428]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-428]
call DEHEX
add esp, 4
lea ebx, [ebp-428]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-64], ebx
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
push 0
push -1
push 1
push -1
push dword ptr [ebp-68]
call fb_HEX_i
add esp, 4
push eax
call fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-68]
call fb_HEX_i
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-440]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-440]
call DEHEX
add esp, 4
lea ebx, [ebp-440]
push ebx
mov ebx, eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-68], ebx
push 1
push -1
push dword ptr [ebp-64]
call fb_HEX_i
add esp, 4
push eax
push 5
push offset Lt_003A
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
lea eax, [ebp-452]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push -1
push dword ptr [ebp-68]
call fb_HEX_i
add esp, 4
push eax
push 5
push offset Lt_003C
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
lea eax, [ebp-464]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
mov eax, dword ptr [ebp-88]
xor eax, dword ptr [ebp-64]
mov dword ptr [ebp-92], eax
mov eax, dword ptr [ebp-84]
xor eax, dword ptr [ebp-64]
mov dword ptr [ebp-96], eax
mov eax, dword ptr [ebp-80]
xor eax, dword ptr [ebp-64]
mov dword ptr [ebp-100], eax
mov eax, dword ptr [ebp-52]
xor eax, dword ptr [ebp-68]
mov dword ptr [ebp-104], eax
mov eax, dword ptr [ebp-56]
xor eax, dword ptr [ebp-68]
mov dword ptr [ebp-108], eax
mov eax, dword ptr [ebp-60]
xor eax, dword ptr [ebp-68]
mov dword ptr [ebp-112], eax
mov eax, dword ptr [ebp-88]
xor eax, dword ptr [ebp-56]
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-84]
xor eax, dword ptr [ebp-60]
mov dword ptr [ebp-120], eax
mov eax, dword ptr [ebp-68]
xor eax, dword ptr [ebp-64]
mov dword ptr [ebp-124], eax
push 0
push -1
push dword ptr [ebp-92]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-104]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-116]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-96]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-108]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-120]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-100]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-112]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-124]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-140]
push eax
call fb_StrConcatAssign
add esp, 20
push 1
push -1
lea eax, [ebp-140]
push eax
push 10
push offset Lt_003E
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
lea eax, [ebp-476]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push 0
push offset Lt_0000
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
push -1
push 0
push 19
push offset Lt_0040
call fb_StrAllocTempDescZEx
add esp, 8
push eax
call fb_ConsoleInput
add esp, 12
push 0
push -1
lea eax, [ebp-140]
push eax
call fb_InputString
add esp, 12
lea eax, [ebp-140]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.Lt_0003:
pop ebx
mov esp, ebp
pop ebp
ret
.size fb_ctor__keygen, .-fb_ctor__keygen
	#keygen.bas' compilation took 0.005026075872592628 secs

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 8
Lt_0010:	.double	16
.balign 4
Lt_0013:	.ascii	"EasyBox KeyGen for Standart WPA2-Password\0"
.balign 4
Lt_0014:	.ascii	"By Sebastian Petters\0"
.balign 4
Lt_0015:	.ascii	"http://www.wotan.cc\0"
.balign 4
Lt_0016:	.ascii	"Use this only on your own AccessPoint!\0"
.balign 4
Lt_0017:	.ascii	"Enter MAC-Adress in following format: 01234567890A\0"
.balign 4
Lt_0018:	.ascii	"MAC: \0"
.balign 4
Lt_0029:	.ascii	"SMAC: \0"
.balign 4
Lt_0031:	.ascii	"SSID: EasyBox-\0"
.balign 4
Lt_003A:	.ascii	"K1: \0"
.balign 4
Lt_003C:	.ascii	"K2: \0"
.balign 4
Lt_003E:	.ascii	"WPA-Key: \0"
.balign 4
Lt_0040:	.ascii	"Press Enter to quit\0"

.section .ctors, "aw", @progbits
.int fb_ctor__keygen
