org 100h
.data
m1 db 'Enter a  character: $'
m2 db 'Output is: $'

nwline db 10,13, '$'

.code
main proc
        
        lea dx,m1
        mov ah,09h
        int 21h
        
        mov ah,1
        
        
        int 21h  
        mov bl,al
        
        cmp al,'Z'
        jle upper
        mov ah,4ch
        int 21h
        
        upper: 
        
        lea dx,nwline
        mov ah,09h
        int 21h
        
        lea dx,m2
        mov ah,09h
        int 21h
        mov ah,2
        mov dl,bl
        int 21h
        
    main endp
end main