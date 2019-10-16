Name : test
.model small 
.data

.code           
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,4
    inc al
    
    jp par
    
    mov dl,0
    jmp endf
    
    par: mov dl,1
    
    endf:ret
    
    
    main endp
end





