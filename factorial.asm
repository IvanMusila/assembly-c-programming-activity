section .text
    global factorial

factorial:
    mov eax, 1        
    mov ecx, [esp+4]  
    cmp ecx, 1
    jbe done

loop_fact:
    mul ecx           
    dec ecx
    cmp ecx, 1
    ja loop_fact

done:
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
