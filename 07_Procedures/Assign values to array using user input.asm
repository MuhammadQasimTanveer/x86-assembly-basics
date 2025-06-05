
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data     

 array db 5 dup(?)
                   
 msg1 db "Numbers in the arary are:$" 
 msg2 db "Enter the number: $"
                  
.code
     main proc              ;main procedure
        
      mov ax,@data
      mov ds,ax
                 
       
      mov si,OFFSET array               
      mov cx,5          ;counter loop< how many times loop runs>
      input_array:  
            
          LEA dx, msg2
         mov ah,9
         int 21h 
         
          
         mov ah,1        ;take user input and store result automatically in Al
         int 21h  
     
        mov [si],al        ;pass value to si stored in al
        inc si             ;Increment the address<index register> by 1
               
        
        mov dl,10                  ; Next LINE
         mov ah,2
         int 21h
                  
         mov dl,13                  ; Carriage return <to start of  new line>
         mov ah,2
         int 21h
          
      loop input_array 
      
         mov dl,10                  ; Next LINE
         mov ah,2
         int 21h
         
         mov dl,13                  ; Carriage return <to start of  new line>
         mov ah,2
         int 21h
         
     
     
      LEA dx, msg1
      mov ah,9
      int 21h
      
      mov dl,10                  ; Next LINE
      mov ah,2
      int 21h
         
      mov dl,13                  ; Carriage return <to start of  new line>
      mov ah,2
      int 21h   
      
         
     mov si,OFFSET array       
     mov cx,5 
     print_array:
            
         
        mov dx,[si]         ;pass value to dx stored at index si
                          
         mov ah,2
         int 21h
         
         inc si            ;Increment the address<index register> by 1
         
         mov dl,10                  ; Next LINE
         mov ah,2
         int 21h
         
         mov dl,13                  ; Carriage return <to start of  new line>
         mov ah,2
         int 21h
         
      loop print_array  
      
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program