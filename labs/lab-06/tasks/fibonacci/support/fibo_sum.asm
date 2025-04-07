; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
    N dd 9 ; DO NOT MOFIDY THIS LINE EXCEPT FOR THE VALUE OF N!
           ; compute the sum of the first N fibonacci numbers
    sum_print_format db "Sum first %d fibonacci numbers is %d", 10, 0

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    mov eax, 0
    mov ebx, 0
    mov ecx, [N]
    mov edx, 1
fibo:
    add eax, ebx
    add ebx, edx
    xchg ebx, edx
    loop fibo


    push eax
    push dword [N]
    push sum_print_format
    call printf
    add esp, 12
    pop ebx
    xor eax, eax
    leave
    ret
