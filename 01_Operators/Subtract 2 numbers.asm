; program to subtract two numbers 

.model small            ;reserve memory for whole program
.stack 100h             ;reserve memory for stack
.data
.code
      main proc 
             
      ;store value in Al      
      mov al,'4' 
      
      ;store value in Bl
      mov bl,'1'
              
      ;sub 2 numbers and store result in Al
      sub al,bl
      
      mov dl,al
      add dl,48   
               ; store result(dl) in dl
                  
                  
      mov ah,2
      int 21h
               ;to display result on output screen that is stored in dl
        
      mov ah,4ch
      int 21h               ;exit code
      
      main endp           
              

end main
                            ;end program