
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data    

  var1 db ?
  var2 db ? 
  
.code
     main proc              ;main procedure
        
     mov ax,@data
     mov ds,ax
     
     
                               
     mov ah,1               ;take user input and store result automatically in Al
     int 21h   
     
     
     ;Value is stored as AScii in the backend ,that's why we subtract it and sebd the actual value
             
     sub al,48
     mov bl,al
     mov var1,bl
     
     mov dl,10             ; Next LINE
     mov ah,2
     int 21h  
                           ;Carriage return <to start of  new line>
     mov dl,13
     mov ah,2
     int 21h
     
     
     mov ah,1               ;take user input and store result automatically in Al
     int 21h
             
             
     ;Value is stored as AScii in the backend ,that's why we subtract it and sebd the actual value
     sub al,48
     mov var2,al
     
     add al,bl 
     
     mov var2,al  
     
         
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program