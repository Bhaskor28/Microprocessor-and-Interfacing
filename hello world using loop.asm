include 'emu8086.inc'
.stack 100h
.data
.code

    main proc 
        mov cx,10
        
        start:
        
            print 'Hello world'
            mov dl,10
            mov ah,2
            int 21h
            
            mov dl,13
            mov ah,02
            int 21h
        
        
        loop start 
        int 21h
        
        main endp
    end main