.model small 
.data
var1 db 12
var2 db  ? 
C EQU 15
.code 
main proc     
    mov ax,@data
    mov ds,ax
    mov var2,C        
    mov bl,var1
    mov var2,bl
    mov var1,C         
    
    main endp
end