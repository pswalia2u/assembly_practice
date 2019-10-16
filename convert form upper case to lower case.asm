
Name : test
.model small 
.data
char db '?'
.code           
main proc
   mov ah,1 
   int 21h     ;enter upper case letter
   mov bl,al   ;as we need to print the value so, it must b stored in dl
   
   cmp al,65
   jb  endf ;checking if al is less than 65
   cmp al,90
   ja  endf  ;checking if al is greater than 90                         
   
   mov ah,2
   mov dl,10 ;for leaving a blank line
   int 21h
   mov dl,13 ;for moving to starting of new line
   int 21h
   
   
   add bl,32
   mov dl,bl 
   mov char,dl
   mov ah,2
   int 21h
           
   
   
   endf:
   mov ah,4ch
   int 21h
   ret 
    main endp
end





                                                    