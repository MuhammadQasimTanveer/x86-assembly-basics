
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data    

  var1 db 4
  var2 db 2 
  
.code
     main proc              ;main procedure
        
     mov ax,@data           ;get the ref of data section 
     mov ds,ax
     
     ;In assembly language we can not not use variables directly
     ;We must pass to any general purpose registers,
     
              
     ;to mutiply two numbers ,one number must be in accumulator
     
     mov al,var1            ;pass var1 to al
      
     mov bl,var2            ;pass var2 to bl
     
           
     ;syntax of multiplication 
     ;result of multiplication is store in accumulator automaticaly           
     mul bl              ;---> mul al,bl
     
     
     mov var1,al         ;pass al to var1
         
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program