section .data
    sum dw 0

section .text
    global _start

_start:
    mov cx, 25      
    mov ax, 0       

loop_sub:
    add ax, cx      
    dec cx          
    cmp cx, 14      
    jne loop_sub

    
    mov bx, ax
    mov eax, 1
    int 0x80
