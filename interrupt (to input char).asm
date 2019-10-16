
Name : test
.model small 
.data
char db '?'
.code           
main proc
   mov ah,1 
   int 21h     ;char will be stored in register al  
    
    main endp
end





                                                    