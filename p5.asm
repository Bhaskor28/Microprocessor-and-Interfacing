org 100h
.data
m1 db 'Enter a  value: $'
m2 db 'output is: $'

nwline db 10,13, '$'

.code
main proc
         
         lea dx,m1
         mov ah,09h
         int 21h
         
         mov ah,1
         mov bl,al 
         int 21h
         
         cmp bl,2
         je even
         ;mov dl,"o"
         cmp bl,4
         je even
         cmp bl,1
         je odd
         cmp bl,3
         je odd
         
         even:
         lea dx,nwline
         mov ah,09h
         int 21h 
         lea dx,m2
         mov ah,09h
         int 21h
         mov dl,"e" 
         mov ah,02
         int 21h
         jmp display
         odd:
         lea dx,nwline
         mov ah,09h
         int 21h  
         lea dx,m2
         mov ah,09h
         int 21h
         
         mov dl,"o"
         mov ah,02
         int 21h 
         jmp display
         
     display:
         
         
         
        
        
    
    
    main endp
end main