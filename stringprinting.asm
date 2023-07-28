org 100h
.data
;msg1 db 'hello $'  
; DW ?  
p1 db '*****$'  
d1 db ?
d2 db ?
d3 db ?

.code
main proc
            
            
    ;lea d1
    mov ah,1
    int 21h  
    
    
    
    mov d1,al 
    int 21h
    mov d2,al   
    int 21h
    mov d3,al   
    int 21h
    
    
    
     
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13 
    int 21h
    
    mov ah,2
    lea dx,p1 
    mov ah,09h  
    int 21h
    
    
    
    mov ah,2
    mov dl,d1 
    int 21h
    mov dl,d2
    int 21h
    mov dl,d3 
    int 21h
    
    lea dx,p1 
    mov ah,09h
    int 21h
    
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13 
    ;int 21h
    
    
    
    
    
   
    
    
    int 21h
    
    
    
    
    main endp
end main




