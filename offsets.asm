.model small
.data
var1 db 5
var2 db 2
var3 dw 0
var4 db 3
.code 
main proc
    mov ax,@data
    mov ds,ax   ;storing address of data segment to ds       
    
    mov [0],1 ;storing 1 in var1 
    mov [2],256
    
endp
end
    
    
    
    

