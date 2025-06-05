
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data     

 array db 1,2,3,4,5
 
.code
     main proc              ;main procedure
        
      mov ax,@data
      mov ds,ax
                
      mov si,OFFSET array      
                
      
      mov cx,5          ;counter loop< how many times loop runs>
      mov si,4
      print_array:
            
         mov dx,[si]       ;si means index register
                           ;pass value to dx stored at index si
          
         add dx,48
         mov ah,2
         int 21h
         
         dec si            ;Decrement the address<index register> by 1
         
      loop print_array
    
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program