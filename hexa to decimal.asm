org 100h
.data
;msg1 dw 'hello $'  
DECIMAL db ?
.code
main proc  
    
    
    
    
    mov ah,1
    int 21h 
    
    
    mov bl,al
    
    SUB bl,17
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h 
    
    
    mov cl,49  
    
    mov ah,2
    mov dl,cl
     
    int 21h
     
 
    
    
    mov ah,2
    mov dl,bl
     
    
    
    int 21h
    
    
    
    
    main endp
end main


