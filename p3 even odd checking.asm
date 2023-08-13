
org 100h 

.DATA    

   msg db 'evem odd checking$'
   nwline db 10,13,'$'

even db 'even$'

odd db 'odd$' 

.code

MAIN PROC  
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    lea dx,nwline
    mov ah,09h
    int 21h
    
    MOV Ah,01h
    int 21h
    mov bl,al 
    ;int 21h 
    
        
    lea dx,nwline
    mov ah,09h
    int 21h
     
    test bl,1h 
    jz bellow 
    lea dx,odd
    mov ah,09h
    int 21h
    mov ah,4ch
    int 21h 
    
    bellow:
    lea dx,even
    mov ah,09h
    int 21h
    mov ah,4ch
    int 21h
    
    
    
   
    
    
    MAIN ENDP
END MAIN





