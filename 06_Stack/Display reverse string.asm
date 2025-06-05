;stack pointer holds the address of top of stack
;base poiter can hold address of any element of stack   

;operations on stack:
    ;push ---> send value
    ;pop  ---> receive value   
       
.model small            ;reserve memory for whole program
.stack 100h             ;reserve memory for stack
.data 
          
 string db 'ahmed$'

.code                               
      main proc
        mov ax, @data
        mov ds, ax
        mov si, offset string
        
        mov cx,5

        psh:
          mov bx, [si]
          push bx
          inc si
       loop psh

       mov cx,5

       pp:
         pop dx
         mov ah,2
         int 21h
      loop pp

                 
      mov ah,4ch
      int 21h               ;exit code
      
      main endp           
              
end main
                            ;end program