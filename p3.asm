org 100h
.data
m1 db 'Enter a  character: $'
m2 db ' comes first in the character sequence.$'

nwline db 10,13, '$'

.code
main proc
    
    lea dx,m1
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    mov bl,al
    int 21h  
    
    mov ah,02
    lea dx,nwline
    mov ah,09h
    int 21h
    
    lea dx,m1
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    mov cl,al
    int 21h 
    
    cmp bl,cl
    jnge first
    mov bl,cl
    first:
    lea dx,nwline
    mov ah,09h
    int 21h
    mov ah,02h 
    
    mov dl,bl
    int 21h
    lea dx,m2
    mov ah,09h
    int 21h 
    
    
    
    
    
    main endp
end main
