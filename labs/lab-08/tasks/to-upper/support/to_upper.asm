section .text

global to_upper

to_upper:
    push ebp
    mov ebp, esp
    push ebx                ; preserve ebx as required by cdecl

    ; TODO
    mov eax, [ebp + 8]

for_arr:
    mov ebx, [eax]
    test bl, bl
    je end
    sub ebx, 32
    mov [eax], ebx
    inc eax
    jmp for_arr

end:
    pop ebx
    leave
    ret
