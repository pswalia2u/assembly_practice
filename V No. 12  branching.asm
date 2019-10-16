Name : test
.model small 
.data
var1 db ?
.code           
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,2
    mov ah,3
      
    cmp al,ah ;we can use sub also but only diff is that it will store result in al
    ja above
    mov var1,0
    jmp endf
    
    above: mov var1,1
 
    
    
    
    jmp endf
     
 
  
    endf: ret
    
    main endp
end





