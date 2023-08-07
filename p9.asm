org 100h  
.data
ms db "To exit input a blank space.",10,13,"Input any character: $"
.code 
count dw '0' 
nwline db 10,13, '$'
ms2 db 'length is: $'

main proc
    lea dx,ms
    mov ah,09h
    int 21h
    
    while: 
    mov ah,01h
    int 21h
    cmp al," "
    je exit 
    
    add count,1
    
    jmp while 
    
    
    exit:
     
    lea dx,nwline 
    
    mov ah,09h
    int 21h 
    
    lea dx,ms2
    mov ah,09h
    int 21h 
    
    mov ah,2 
    ;int 21h
    mov dx,count
    int 21h
    
    main endp
end main
ret