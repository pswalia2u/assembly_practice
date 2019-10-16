Name : test
.model small 
.data
 
var db 6
.code           
main proc
    mov al,5
    mov bl,5
    sub al,bl
    jz  label ;jump if flag zero is raised
    label: inc al   
  
    
    
    
    main endp
end




