
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data

.code
     main proc              ;main procedure
       
      mov bl,1              ;row counter stars from 1
      
      outer_loop: 
            mov cl,bl
           inner_loop:
                     
               mov dl,'*'     ;store asterisk to dl
               mov ah,2
               int 21h 
               
               dec cl
               cmp cl,0
               jne inner_loop  
            
            
           mov dl,10          ; Next LINE
           mov ah,2
           int 21h
         
           mov dl,13          ; Carriage return <to start of  new line>
           mov ah,2
           int 21h
          
         inc bl                ;increment row counter
         cmp bl,6              ;compare until no of rows are 6
         jne outer_loop
         
         mov ah,4ch
         int 21h
    
     main endp
     
 end main                   ;end program