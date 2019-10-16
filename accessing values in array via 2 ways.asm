.model small
.data

arr db 1h,10h,2h,3h
    db 19h,20h,80h,13h
    db 13h,12h,15h,20h
    db 5h,2h,3h,17h
    len=($-arr) 
max db ?    
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,len
    dec cx; as we need to run loop len-1 times
    lea si,arr
    mov al,[si] 
    
    for:inc si
        cmp [si],al
        jb lp
        mov al,[si]
    lp:loop for
        
        mov max,al
    
    
    main endp
end