Name : test
.model small 
.data
 
var db 6
.code           
main proc
    mov ax,@data
    mov ds,ax
    mov al,var
    inc al
    inc var  
    dec al
    dec var
        
  
    
    
    
    main endp
end




