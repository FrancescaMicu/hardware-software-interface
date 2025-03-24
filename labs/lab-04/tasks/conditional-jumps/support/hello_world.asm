; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
    myString: db "Hello, World!", 0
    N: dd 6                         ; N = 6

section .text
    global main
    extern printf

main:
    mov ecx, DWORD [N]              ; ecx will store the value of N
    PRINTF32 `%d\n\x0`, ecx         ; DO NOT REMOVE/MODIFY THIS LINE

    mov eax, 2
    mov ebx, 1
    cmp eax, ebx
    jg print                        ; TODO1: eax > ebx?
    ret

print:
    PRINTF32 `%s\n\x0`, myString
    sub ecx, 1
    cmp ecx, 0
    jnz print
    PRINTF32 'Goodbye, World!'       ; TODO2.2: print "Hello, World!" N times
                                    ; TODO2.1: print "Goodbye, World!"

    ret
