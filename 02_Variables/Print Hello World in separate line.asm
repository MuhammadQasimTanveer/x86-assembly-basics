
.model small
.stack 100h
.data  

 ;var1 db ?
 ;var2 db 5
 var3 db "Hello$"
 var4 db "World$"
.code

    main proc
                
         mov ax,@data         ;get the ref of data section  (must use  16 bit register  to pass reference of data section>
         mov ds,ax            ;and pass it to DS register
    
         ;LEA-> load effective address, OFFSET        ->mov dl, OFFSET var3
    
         LEA dx, var3          ;get address of first character of variable var3
                          
                               ;this step is necessary       
                                        
         mov ah,9     ;service outine to display string on screen
         int 21h
    
            
         mov dl,10                  ; Next LINE
         mov ah,2
         int 21h
         
         mov dl,13                  ; Carriage return <to start of  new line>
         mov ah,2
         int 21h
                  
                  
         LEA dx, var4          ;get address of first character of variable var4
         
         mov ah,9        ;service outine to display string on screen
         int 21h
    
         mov ah,4ch
         int 21h
    
    
         main endp
    
   end main