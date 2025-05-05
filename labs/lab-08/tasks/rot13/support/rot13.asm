section .text
global rot13

rot13:
    push ebp
    mov ebp, esp
    push ebx                ; preserve ebx as required by cdecl

    ; TODO
    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]

    xor ecx, ecx
for_arr:
    cmp ecx, 0
    je end
    add [eax], 13 

end:
    pop ebx
    leave
    ret
