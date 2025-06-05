;program to add two numbers
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data
.code
     main proc              ;main procedure
              
              
     mov ah,1        ;take user input and store result automatically in Al
     int 21h  
     
     mov bl,al       ; Now store result of Al in Bl because there is another user input whose
                        ;data has to be stored in Al also, that's why we have to free Al
      
           
           
           mov dl,10          ; Next LINE
           mov ah,2
           int 21h
     
           mov dl,13          ; Carriage return <to start of  new line>
           mov ah,2
           int 21h 
                                                   
               
     mov ah,1         ;take user input and store result automatically in Al
     int 21h
               
               ;add 2 num and store in Bl
     add bl,al  
     ;sub bl,48      
     
           
           mov dl,10          ; Next Line
           mov ah,2
           int 21h
     
           mov dl,13          ; Carriage return <to start of  new line>
           mov ah,2
           int 21h 
     
     
     mov dl,bl          
     sub dl,48            ;store result <bl> in dl
     
       
     mov ah,2
     int 21h   
              ;to display result on screen that is stored in dl
    
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program