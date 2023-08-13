
org 100h 

.DATA 
 msg db 'ASCII TO NUMBER CONVERSION : $'
nwline db 10,13,'$'

.code

MAIN PROC  
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    MOV Ah,01h
    int 21h
    mov bl,al 
    int 21h   
    
    
    lea dx,nwline
     mov ah,09h
     int 21h;

    and bl,0Fh
    add bl,48 

    mov  ah,02
    ;int 21h
    mov dl,bl
    int 21h
    MAIN ENDP
END MAIN





