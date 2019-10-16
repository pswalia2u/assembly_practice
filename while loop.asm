; Checking no is between 3 and 7 
.model small
.data
.code
main proc
    mov ax,@data
    mov ds,ax
     
    
    mov ah,2
    mov dl,'a'
;    int 21h
while:  cmp dl,'z'
    ja  endwhile     
    
    int 21h
    inc dl
    jmp while
    
    
    endwhile:
    mov ah,4ch
    int 21h
    ret
    
    main endp
end
      
    