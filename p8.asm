org 100h
.data
m1 db 'Enter a  character: $'
m2 db ' comes first in the character sequence.$'

nwline db 10,13, '$'

.code
main proc
        mov cx,80
        mov ah,2
        mov dl,'*'
        
   top:
        int 21h
        loop top
    
    
    main endp
end main