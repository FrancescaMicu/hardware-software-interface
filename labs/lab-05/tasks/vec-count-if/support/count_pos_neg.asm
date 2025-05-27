%include "../utils/printf32.asm"

%define ARRAY_SIZE    10

section .data
    dword_array dd 1392, -12544, -7992, -6992, 7202, 27187, 28789, -17897, 12988, 17992

section .text
extern printf
global main
main:
    mov ecx, ARRAY_SIZE     ; Use ecx as loop counter.
    xor ebx, ebx            ; Store positive number in ebx.
    xor edx, edx            ; Store negative number in edx.
parcurgere:
    mov eax, dword [dword_array + ecx*4 - 4]
    cmp eax, 0
    jg poz
    add edx, 1
    jmp end
poz:
    add ebx, 1
end:
    loop parcurgere
    PRINTF32 `Num pos is %u, num neg is %u\n\x0`, ebx, edx
    ret
