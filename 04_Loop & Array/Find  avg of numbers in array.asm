.model small;
.stack 100h
.data    

   array dw 0,1,2,3,4,5,6,7,8,9;
 
.code

   main proc 
            
      mov ax,@data         ;get the ref of data section  
      mov ds,ax            ;and pass it to DS register           
         
      mov bx,0             ;Initialize to bx 0 to clear it
      
      mov si,OFFSET array
      mov cx, 10;          ;counter loop
             
        sum_array:
          mov dx,[si];       ; move value of idx to dx
          add bx, dx;        ; add the values in array
          
          add si, 2          ;Move to next array element (each is 2 bytes>
      
        loop sum_array;  
    
      
      mov ax, bx; 
      
      mov bl, 10;         ;store the divisor in bl                   
      div bl;              ;divide
      
      mov bx,ax           ;Storing the result in Base register
      
      add al,30h          ;Convert to ASCII               
      mov dl, al;         ;final result move to dl
    
      mov ah, 2;
      int 21h  
       
   main endp   
   

end main