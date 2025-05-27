%include "printf32.asm"

section .data
    num dd 100

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp
    mov ecx, [num]
    xor ebx, ebx

suma:
    mov eax, ecx
    mul eax
    add ebx, eax
    loop suma
    mov ecx, [num]
    PRINTF32 `Sum(%u): %u\n\x0`, ecx, ebx

    leave
    ret
