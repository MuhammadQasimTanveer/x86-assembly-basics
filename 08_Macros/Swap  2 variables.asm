
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data    

  var1 db 6
  var2 db 3
  mess db "After swapping: $"
  m1 db "var1 = $"
  m2 db "var2 = $" 
  
.code   

  swapping macro var1,var2  
    
     mov cl,var1            ;pass var1 to al
     mov bl,var2            ;pass var2 to bl
     mov var1,bl            ;pass bl to var1
     mov var2,cl            ;pass al to var2
  endM 
     main proc              ;main procedure
        
     mov ax,@data
     mov ds,ax
    
     swapping var1,var2     ;calling macro
      
     lea dx,mess
     call printStr          ;calling procedure
     call space             ;calling procedure
     
     lea dx,m1
     call printStr  
     
     mov dl,var1
     add dl,48
     mov ah,2
     int 21h 
                      
     call space             ;calling procedure
     
     lea dx,m2
     call printStr           ;calling procedure
       
     mov dl,var2
     add dl,48
     mov ah,2
     int 21h 
         
     mov ah,4ch             ;exit code
     int 21h
     
     main endp 
     
     printStr proc
        mov ah,9
        int 21h
        ret
     printStr endp
     
     space proc  
         mov dl,10                  ; Next LINE
         mov ah,2
         int 21h
         
         mov dl,13                  ; Carriage return <to start of  new line>
         mov ah,2
         int 21h
         ret
     space endp
     
 end main                   ;end program