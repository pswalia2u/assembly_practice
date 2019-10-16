.model small
.data

arr db 1h,10h,2h,3h
    db 19h,20h,80h,13h
    db 13h,12h,15h,20h
    db 5,2,3,17
    len=($-arr) 
sum db ?    
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,len-12
   
    lea si,arr
    add si,11
     
   
    
    for:inc si
        add bl,[si]
        
    lp:loop for
    mov sum,bl
        
    
   mov ah,4ch
  int 21h
  ret 
    main endp
end