;program to add two numbers
.model small                ;reserve memory for whole program
.stack 100h                 ;reserve memory for stack
.data
.code
     main proc              ;main procedure
        
     ;store value in Ah
     mov ah,'1'
     
     ;store value in Bh
     mov bh,'2' 
                                 
     ;add 2 numbers and store result in Bh
     add bh,ah
               
     mov dl,bh
     sub dl,48
              ; store result(bh) in dl
              
     mov ah,2
     int 21h   
              ;to display result on output screen that is stored in dl
    
     mov ah,4ch             ;exit code
     int 21h
     
     main endp
     
 end main                   ;end program