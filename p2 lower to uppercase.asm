
org 100h 
.model small
.DATA
   msg db 'lower case to uppercase conversion$'
   nwline db 10,13,'$'
 
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
    

    and bl,05Fh
    ;add bl,48 
    
     lea dx,nwline
   mov ah,09h
   int 21h
    
    mov  ah,02
    ;int 21h
    mov dl,bl
    int 21h  
   

    
    MAIN ENDP
END MAIN





