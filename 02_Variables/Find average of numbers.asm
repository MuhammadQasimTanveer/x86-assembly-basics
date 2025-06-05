.model small
.stack 100h
.data 
    
  msg db "The average of numbers : $";

.code

    main proc   
        
    mov ax, @Data   ; import data
    mov ds,ax
      
      
    LEA dx,msg;      ; loop for printing msg
    mov ah,9;
    int 21h
    
    mov bl,5
    mov cl,2
    mov dl,4
    
    
    add bl,cl
    add bl,dl
           
    mov cl,3
    mov dl,1  
    add cl,dl
    add bl,cl  
    
    mov al,bl       ;store sum in al
             
    
    mov ah,00       ;make ah free or clear because division is made by ax, and we ax is combination 
                    ;of al and ah and if there is any value in ah ,it affects the result
    mov bl,5
    div bl
           
    add al,30h      ;Convert to ASCII 
    mov dl,al
    
    mov ah,2
    int 21h 
    
    mov ah,4ch
    int 21h   
    
    main endp

end main