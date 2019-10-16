.model small
.data

arr db 1h,10h,2h,3h,30h
    db 19h,20h,80h,13h,55h
    db 13h,12h,15h,20h,16h
    len=($-arr) 
sum db ?    
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;al will contain sum
    mov al,0
    mov bx,0;bx is used for rows
    mov si,0;si is used for columns
    
    while1:cmp bx,len
    je endw1
    
    mov si,0
    while2:cmp si,5
        je endw2
    
        ;if si=2=>column no 2
        cmp si,2
        jne endif
        
        add al,arr[bx][si]
    endif:inc si 
        jmp while2
    
    endw2:
        add bx,si
        jmp while1
    
    endw1:
        mov sum,al
    
    
   
   mov ah,4ch
  int 21h
  ret 
    main endp
end