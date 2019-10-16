
Name : test
.model small 
.data
char db '?'
.code           
main proc
   mov ah,1 
   int 21h     ;enter upper case letter
   mov dl,al
   add dl,32
   
   mov ah,2
   int 21h
           
   mov ah,4ch
   int 21h
    
    main endp
end





                                                    