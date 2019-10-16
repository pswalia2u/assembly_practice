Name : test
.model small 
.data
num1 db -5 ;signed
num2 db -5   ;signed
.code           
main proc
    mov ax,@data
    mov ds,ax
    
    mov dl,num1
    sub dl,num2
    jz  zero
    js  negative
    jns notnegative
    
   zero: mov dl,0  
   jmp endf
   negative: mov dl,2 
   jmp endf
   notnegative: mov dl,1     
  endf: ret 
    
    
  
    
    
    main endp
end





