
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data
       
  found db "character is found$"  
  notfound db "character is not found$" 
  
  msg db "Which character you want to find: $"
  
  array db 'a','b','c','d','e','f','g','h'
  

.code
     main proc              ;main procedure
        
     
       mov ax, @data
       mov ds, ax
                    
                    
       LEA dx,msg          ;get address of first character of variable msg
                             
       mov ah,9            ;service outine to display string on screen
       int 21h   
               
       mov ah,1                  ;take user input
       int 21h   
               
               
       mov bl,al
       
         mov dl,10                  ; Next LINE
         mov ah,2
         int 21h
         
         mov dl,13                  ; Carriage return <to start of  new line>
         mov ah,2
         int 21h
         
       mov si, OFFSET array 
       
       mov cx, 8
       check_loop:
                 
             mov dl,[si]       ;pass value to dx stored at index si
                               
             cmp bl,dl          ;compare charcter in the array with character enter by user
             
             je found_block     ;if character found, go to found block 
             inc si
       loop check_loop
       
       jmp notfound_block       ;if character not found, jump to notfound block
       
       found_block:
              LEA dx,found
              mov ah,9
              int 21h
              
              mov ah,4ch          ;exit
              int 21h
                      
                      
       notfound_block:
              LEA dx,notfound
              mov ah,9            ;exit
              int 21h
              
              mov ah,4ch
              int 21h
        
    
     main endp
     
 end main                   ;end program