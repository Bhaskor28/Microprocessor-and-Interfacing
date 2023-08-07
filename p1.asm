;6.1 suppose AX and BX contain signed numbers.

;write some code to put the biggest one in CX

org 100h
.data 
input1 db 'Enter 1st input: $'
input2 db 'Enter 2nd input: $'
nwline db 10,13, '$'  
output db 'The biggest number is: $'

.code 
main proc
    
    lea dx,input1
    mov ah,09h
    int 21h 
   
    mov ah,01h
    int 21h
    mov cx,ax;taking 1st input
    int 21h
    
    lea dx,nwline
    mov ah,09h
    int 21h
    
    
    ;load the another msg   
    lea dx,input2
    mov ah,09h
    int 21h
    
    
    mov ah,01   ;taking the another input
    mov bx,ax 
    int 21h 
    
    
    lea dx,nwline
    mov ah,09h
    int 21h    
    
    ;comparing 
    cmp bx,cx
    jle next
    mov cx,bx
    next:
    lea dx,output
    mov ah,09h
    int 21h
    
    
    mov dx,cx
    mov ah,02h 
    int 21h
    
        
        
    
    
    main endp
end main
ret