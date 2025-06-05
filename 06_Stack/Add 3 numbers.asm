
;stack pointer hods the addressof top of stack
;base poiter can hold address of any element of stack   

;operations on stack:
    ;push ---> send value
    ;pop  ---> receive value
                               
.model small            ;reserve memory for whole program
.stack 100h             ;reserve memory for stack
.data
.code
      main proc 
             
      mov ax,2
      mov bx,3    
      mov cx,4
      
      push ax          ;0002   --00<FF> , 02<FE>
      
      push bx          ;0003   --00<FD> , 03<FC>
      
      push cx          ;0004   --00<FB> , 04<FA>
                             
      mov bp,sp          ;moving address of stack pointer to base pointer
      
      pop ax           ;ax=5
      
      pop bx           ;bx=4
      
      add ax,bx        ;adding result of ax and bx in ax
      
      pop cx           ;cx = 3
      
      add ax,cx        ;adding result of ax and cx in ax   
      
      push ax          ;push the final result into stack
                   
      mov [si],0
      mov [si + 2],0
      mov [si + 2],0                                        
        
      mov ah,4ch
      int 21h               ;exit code
      
      main endp           
              

end main
                            ;end program