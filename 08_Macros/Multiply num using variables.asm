
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data    

  var1 db 4
  var2 db 2 
  mess db "Result is: $"
  
  multiply macro var1,var2
         
     ;to mutiply two numbers ,one number must be in accumulator
     
     mov al,var1            ;pass var1 to al
     mov bl,var2            ;pass var2 to bl
      
     ;result of multiplication is store in accumulator automaticaly           
     mul bl              ;---> mul al,bl
     
     mov var1,al         ;pass al to var1   
     
  endM
  
.code
     main proc              ;main procedure
        
     mov ax,@data           ;get the ref of data section 
     mov ds,ax
  
     multiply var1,var2     ; calling macro
     
     lea dx,mess
     mov ah,9
     int 21h
     
     mov dl,var1
     add dl,48
     mov ah,2
     int 21h
         
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program