Name : test
.model small 
.data
num1 db -127
num2 db -5
.code           
main proc
    mov ax,@data
    mov ds,ax
    
    mov dl,num1
    add dl,num2
    jo  overflow
    
    mov dl,0
    jmp endf
   overflow: mov dl,1     
  endf: ret 
    
    
  
    
    
    main endp
end





