; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
    FIRST_SET: dd 139   ; The first set
    SECOND_SET: dd 169  ; The second set

section .text
    global main
    extern printf

main:
    ; The two sets can be found in the FIRST_SET and SECOND_SET variables
    mov eax, DWORD [FIRST_SET]
    mov ebx, DWORD [SECOND_SET]
    PRINTF32 `%u\n\x0`, eax ; print the first set
    PRINTF32 `%u\n\x0`, ebx ; print the second set

    ; TODO1: reunion of the two sets
    mov ecx, eax
    or ecx, ebx
    PRINTF32 `%u\n\x0`, ecx


    ; TODO2: adding an element to a set
    or eax, ebx
    PRINTF32 `%u\n\x0`, eax

    ; TODO3: intersection of the two sets
    mov ecx, eax
    and ecx, ebx
    PRINTF32 `%u\n\x0`, ecx

    ; TODO4: the complement of a set
    mov ecx, eax
    not ecx
    PRINTF32 `%u\n\x0`, ecx

    ; TODO5: removal of an element from a set
    and eax, 0xFFFFFFFE
    PRINTF32 `%u\n\x0`, eax

    ; TODO6: difference of two sets
    not ebx
    mov ecx, eax
    and ecx, ebx
    PRINTF32 `%u\n\x0`, ecx

    xor eax, eax
    ret
