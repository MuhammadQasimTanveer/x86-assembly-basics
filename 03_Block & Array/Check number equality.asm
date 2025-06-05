
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data

  equal db "both numbers are equal$"  
  Notequal db "both numbers are NOT equal$"

.code
     main proc              ;main procedure
        
     
       mov ax, @data
        mov ds, ax
        
            
        mov bl, 4
        mov dl, 4
        
        
        cmp dl, bl
        je equal_block
        
        lea dx,Notequal
        mov ah,9
        int 21h
          mov ah, 4ch
          int 21h
        
         
         equal_block:

                lea dx,equal
                mov ah,9
                int 21h
     
    
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program