org 100h
.data
m1 db 'Enter a  value: $'
m2 db 'Output is: $'

nwline db 10,13, '$'

.code
main proc
    lea dx,m1
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    mov cx,ax
    
    cmp cx,"0"
    jl negetive
    je zero
    jg positive
    
    negetive: 
    lea dx,nwline
    mov ah,09h
    
    mov bl,"-"
    mov bh,"1"
    mov ah,02h
    int 21h
    mov dx,bx
    mov ah,02h 
    int 21h
    jmp end_case
    
    zero: 
    lea dx,nwline
    mov ah,09h
    
    mov dl,"0"
    mov ah,02h
    int 21h
    jmp end_case
    
    positive: 
    lea dx,nwline
    mov ah,09h
    int 21h
    lea dx,m2
    mov ah,09h 
    int 21h
    
    
    mov dl,"1" 
    mov ah,02h
    int 21h
    jmp end_case
    
    end_case:
       
        
        
    
    
    
    
    
    main endp
end main   
ret