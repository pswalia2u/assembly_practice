Name : test
.model small 
.data

.code           
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,5
    sub bl,1
    sub al,bl
    ja above
    jae aboveorequal
    jb jumpbelow
    jbe jumpbeloworequal
    je eq
    
    
    
  
    
    
    main endp
end





