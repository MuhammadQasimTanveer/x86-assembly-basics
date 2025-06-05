;program to multiply
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data
.code
     main proc              ;main procedure
        
          mov al,9      ;to divide two numbers ,dividend must be in accumulator
          
          mov bl,2
                        ;while divisor must be in other register
                   
          ;syntax of division    
               
          div bl     ;quotient in al ,remainder in ah
          
          mov dl,al
          add dl,'0'
          mov ah,2
          int 21h    
          
     
     main endp
     
 end main                   ;end program