
Name : test
.model small 
.data
char db '?'
.code           
main proc
   mov ah,1 
   int 21h     ;char will be stored in register al
   
   mov dl,al  ;we will move anything which we want to print in dl register 
   mov ah,2
   int 21h 
   
   mov ah,4ch ; it is better to write this, so that we can return to the operating system
   int 21h
     
    
    main endp
end





                                                    