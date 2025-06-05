.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data     
    
 
 array db 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'
 
.code
     main proc              ;main procedure
        
      mov ax,@data
      mov ds,ax
                       
      
      mov si,OFFSET array      
                
      
      mov cx,26          ;counter loop< how many times loop runs>
      mov si,25
      print_array:
            
         mov dx,[si]       ;si means index register
                           ;pass value to dx stored at index si
          
         mov ah,2
         int 21h
                  
                  
         mov dl,32        ;ASCII value of space
         mov ah,2
         int 21h          ;print the space
               
         dec si            ;Decrement the address<index register> by 1
         
      loop print_array
    
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program