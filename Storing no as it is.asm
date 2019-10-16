
Name : test
.model small 
.data
char db '?'
.code           
main proc
   mov ah,1 
   int 21h     ;enter upper case letter
   mov bl,al   ;as we need to print the value so, it must b stored in dl
  
  cmp bl,48
  jb    endf
  cmp bl,57
  ja    endf   
  
   sub bl,48  ;storing same no as entered
   mov dl,bl 
   add dl,48  ;adding 48 back to display same no
   mov ah,2
   int 21h
  
   
   
   endf:
   mov ah,4ch
   int 21h
   ret 
    main endp
end





                                                    