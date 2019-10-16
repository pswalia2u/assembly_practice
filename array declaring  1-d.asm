.model small
.data
marks db 5,6,?,5,9,8
arrword dw  5,1,?,9,8
arrnew  db  10 dup(5) ;array with 10 elements dup(5)
.code
main proc
    mov ax,@data
    mov ds,ax
                                               
    mov ah,marks;stores value at 1th pos into al                                           
    mov al,marks+4;stores value at 5th pos into al 
    
    mov bx,arrword ;stores value at 1st pos into bx
    mov bx,arrword+2 ;here we inc by 2 as it is word 
    
    mov cl,arrnew+9
    
    main endp
end
