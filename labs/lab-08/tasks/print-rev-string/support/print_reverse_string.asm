section .data
    store_string times 64 db 0

section .text
extern printf
extern puts
global print_reverse_string

reverse_string:
    push ebp
    mov ebp, esp
    push ebx                ; preserve ebx as required by cdecl
    mov eax, [ebp + 8]
    mov ecx, [ebp + 12]
    mov edx, [ebp + 16]
    test ecx, ecx
    jz end
    add eax, ecx
    dec eax

copy_loop:
    mov ebx, [eax]
    mov [edx], ebx
    dec eax
    inc edx
    dec ecx
    jnz copy_loop

end:
    mov byte[edx], 0
    pop ebx
    leave
    ret

print_reverse_string:
    push ebp
    mov ebp, esp
    push ebx
    mov eax, [ebp + 8]
    mov ecx, [ebp + 12]
    push store_string
    push ecx
    push eax
    call reverse_string
    add esp, 12
    push store_string
    call puts
    add esp, 4
    pop ebx
    leave
    ret
