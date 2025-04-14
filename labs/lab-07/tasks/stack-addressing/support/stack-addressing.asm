%include "../utils/printf32.asm"

%define NUM 5
section .text

extern printf
global main
main:
    mov ebp, esp
    mov ecx, NUM
push_nums:
    sub esp, 4
    mov [esp], ecx
    loop push_nums
    sub esp, 4
    mov dword [esp], 0
    sub esp, 4
    mov dword [esp], "corn"
    sub esp, 4
    mov dword [esp], "has "
    sub esp, 4
    mov dword [esp], "Bob "
    lea esi, [esp]
    PRINTF32 `%s\n\x0`, esi
    mov eax, ebp

print_stack:
    PRINTF32 `0x%x: 0x%x\n\x0`, eax, [eax]
    sub eax, 4
    cmp eax, esp
    jge print_stack
    lea esi, [esp]
    PRINTF32 `%s\n\x0`, esi
    add esp, 16
    mov eax, esp
print_array:
    PRINTF32 `%d \x0`, [eax]
    add eax, 4
    cmp eax, ebp
    jl print_array
    PRINTF32 `\n\x0`
    mov esp, ebp
    xor eax, eax
    ret
