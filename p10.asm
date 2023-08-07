org 100h  
.data
ms db "To exit input a blank space.",10,13,"Input any character: $"
.code
main proc
    lea dx,ms
    mov ah,09h
    int 21h
    
    while: 
    mov ah,01h
    int 21h
    cmp al," "
    je exit
    jmp while
    exit:
    
    main endp
end main
ret