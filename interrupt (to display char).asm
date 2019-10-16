
Name : test
.model small 
.data
char db '?'
.code           
main proc
   mov ah,2
   mov dl,63 ; or we can use '?' 
   int 21h 
    
    main endp
end





                                                    