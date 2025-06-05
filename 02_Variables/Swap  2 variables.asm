
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data    

  var1 db 6
  var2 db 3 
  
.code
     main proc              ;main procedure
        
     mov ax,@data
     mov ds,ax
     
     ;In assembly language we can not not use variables directly
     ;We must pass to any general purpose registers,
     
     
     mov al,var1            ;pass var1 to al
      
     mov bl,var2            ;pass var2 to bl
     
     mov var1,bl            ;pass bl to var1
   
     mov var2,al            ;pass al to var2
     
                      
     
         
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program