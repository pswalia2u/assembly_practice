
Name : test
.model small 
.data
msg dw 'Hello',10,13,'world!!!',14,'$'
.code           
main proc
   mov ax,@data
   mov ds,ax
   
   mov ah,9
   lea dx,msg ;moving address of msg to lea
   int 21h
   
   mov ah,4ch
   int 21h
   ret 
    main endp
end





                                                    