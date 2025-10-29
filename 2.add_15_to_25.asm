section .data
    sum dw 0

section .text
    global _start

_start:
    mov cx, 15      
    mov ax, 0       

loop_add:
    add ax, cx      
    inc cx          
    cmp cx, 26      
    jne loop_add

   
    mov bx, ax
    mov eax, 1
    int 0x80
