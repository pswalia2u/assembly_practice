.model small
.data

.code  
main proc   
    mov al,5
    mov bl,3
    
    and al,bl ;now al has 1
    
    or  al,bl
    
    xor al,bl   
    
    mov ah,00000011b
    mov bh,00010101b
    
    xor ah,bh
    
    
    
    main endp
end


