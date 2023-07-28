ORG 100H
.DATA
    C DW ?


.CODE




MAIN PROC

        MOV AX,1000
        MOV BX,32
        sub AX,BX
        
        MOV BX,5
        MUL BX   
        
        
        
        
        MOV BX,9  
        
        DIV BX
        
        
        
        
        MOV BX,1 

        
        ADD AX,BX   
        
        
        
        
        
        MOV C,AX
        
        
        
        
        
        
        
        
        
        
       
        INT 21H
        MAIN ENDP
END MAIN
  ret