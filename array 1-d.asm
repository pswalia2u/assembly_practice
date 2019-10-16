.model small
.data
marks db 5,6,?,5,9,8
.code
main proc
    mov ax,@data
    mov ds,ax
                                               
    mov ah,marks;stores value at 1th pos into al                                           
    mov al,marks+4;stores value at 5th pos into al
    
    main endp
end
