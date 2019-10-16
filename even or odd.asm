.model small
.data 
.code
main proc 
    mov al,11010010b
    
    and al,00000001b 
    
    ;if zf is 0 then it is even otherwise odd
    
    main endp
end