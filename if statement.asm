; Checking no is equal to 5 or not
.model small
.data
msg1 db 'Enter an number between 0 and 9',10,13,'$'
msg2 db 10,13,'you have entered the number : $'
msg3 db 10,13,'You are lucky!!!$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;printing msg1
    mov ah,9
    lea dx,msg1
    int 21h
    
    ;taking input
    mov ah,1
    int 21h
    mov bl,al;storing input no in b1     
    
    ;printing msg2    
    mov ah,9
    mov dx,msg2 offset
    int 21h
    
    ;printing input
    mov ah,2
    mov dl,bl
    int 21h 
    
    cmp bl,'5'
    jne endif
    
    ;print msg3
    mov ah,9
    lea dx,msg3
    int 21h
    
    endif:
    mov ah,4ch
    int 21h
    ret
    
    main endp
end
      
    