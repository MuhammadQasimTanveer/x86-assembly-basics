
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data
       
  msg db "Enter a number between 0 to 9: $"
  even db "number is even$"  
  odd db "number is odd$"

.code
     main proc              ;main procedure
        
     
       mov ax, @data
       mov ds, ax
                    
       lea dx,msg
       mov ah,9
       int 21h
       
       
       mov ah,1                  ;take user input
       int 21h
                   
                                      
       mov bl,2
       div bl
       mov bh,ah                 ;store remaider of ah to bh  
       
        
       mov dl,10                  ; Next LINE
       mov ah,2
       int 21h
         
       mov dl,13                  ; Carriage return <to start of  new line>
       mov ah,2
       int 21h    
        
                
          cmp bh,0               ;compare bh with 0
          je even_block
          jne odd_block
                        
                        
          even_block:
                lea dx,even
                mov ah,9
                int 21h
                mov ah,4ch             ;exit code
                int 21h     
          
          odd_block:
              lea dx,odd
              mov ah,9
              int 21h
              mov ah, 4ch              ;exit code
              int 21h
        
    
     main endp
     
 end main                   ;end program