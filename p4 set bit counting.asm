
org 100h 

.DATA
msg db 'set bit counting$'
nwline db 10,13,'$'

var dw ? 
.code 

main proc  
    
     lea dx,msg
     mov ah,09h;
     int 21h;
     
     
     lea dx,nwline
     mov ah,09h
     int 21h;
     
     mov bx,5   

     xor ax,ax
     
     mov cx,16
     
     top:
        rol bx,1
        jnc next
        inc ax
        
        next:
            loop top 
            
     
     mov var,ax
     add var,48
            
            
     mov ah,2
     ;int 21h
     mov dx,var
     int 21h

    
    main endp
end main