; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
source_text: db "ABCABCBABCBABCBBBABABBCBABCBAAACCCB", 0 ; DO NOT MODIFY THIS LINE EXCEPT FOR THE STRING IN QUOTES
substring: db "BABC", 0 ; DO NOT MODIFY THIS LINE EXCEPT FOR THE STRING IN QUOTES

print_format: db "Substring found at index: %d", 10, 0

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp
    mov ebx, source_text
    mov ecx, substring

strstr:
    cmp ebx, 0
    je exit
    cmp byte[ebx], byte[ecx]
    je substr 
    mov ebx, byte[ebx]+1
substr:
    cmp ecx, 0
    je out1
    cmp byte[ebx], byte[ecx]
    je substr
    mov ecx, substring
    jump strstr
out1:
    call printf
    

    leave
    ret
