;program to multiply
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data
.code
     main proc              ;main procedure
        
          mov al,3      
          
          mov bl,2
                   
          ;syntax of multiplication
          ;multiply automatically with al and store result in al also    
               
          mul bl     ;---> mul ax,bl    
          
          mov dl,al
          add dl,'0'
          mov ah,2
          int 21h
     
     main endp
     
 end main                   ;end program