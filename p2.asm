org 100h
.data 

output db 'absolute value is: $'
input dw -4
        
        
.code


main proc
    
    mov ax,input
    
    cmp ax,0
    jge pos
    neg ax
    
    pos: 
    add ax,48
    mov input,ax
    lea dx,output
    mov ah,09h
    int 21h
    
    mov ah,02h
    ;int 21h
    mov dx,input 
    int 21h

    
    main endp
end main