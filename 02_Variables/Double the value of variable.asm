
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data    

  var1 db 3 
  
.code
     main proc              ;main procedure
        
     mov ax,@data
     mov ds,ax
     
     ;In assembly language we can not not add variables directly
     ;We must pass to any general purpose registers,
     
     
     mov al,var1
      
     
     add var1,al
                    ; add numbers and store result in var1. we can use memory 
                                   ;        addressing to store data such as add [var1], al   
     
         
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program