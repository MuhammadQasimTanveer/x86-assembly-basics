
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data

.code
     main proc              ;main procedure
       
      mov bl,2 
      mov dl,'1'
      
      outer_loop: 
                    
           mov bh,4
           
           inner_loop:
          
               mov ah,2
               int 21h 
               
               inc dl
               dec bh
            
               cmp bh,0
               jne inner_loop  
               mov cl,dl
            
            
           mov dl,10
           mov ah,2
           int 21h
         
           mov dl,13
           mov ah,2
           int 21h
          
           
         mov dl,cl 
         dec bl
         cmp bl,0
         jne outer_loop
         
         mov ah,4ch
         int 21h
    
     main endp
     
 end main                   ;end program