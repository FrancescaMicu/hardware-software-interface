%include "printf32.asm"

%define ARRAY_SIZE    10

section .data
    dword_array dd 1392, 12544, 7991, 6992, 7202, 27187, 28789, 17897, 12988, 17992

section .text
extern printf
global main
main:
    mov ecx, ARRAY_SIZE     ; Use ecx as loop counter.
    xor esi, esi            ; Store even number in `esi`.
    xor edi, edi            ; Store odd number in `edi`.
parcurgere:

    xor edx, edx
    mov eax, dword [dword_array + 4*(ecx - 1)]
    mov ebx, 2
    div ebx

    ; edx stores remainder. If remainder is 0, number is even, otherwise number is odd.
    test edx, edx
    je par
    add edi, 1
    jmp end
par:
    add esi, 1
end:
    loop parcurgere

    PRINTF32 `Num even is %u, num odd is %u\n\x0`, esi, edi

    ret
