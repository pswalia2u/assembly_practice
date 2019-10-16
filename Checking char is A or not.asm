; Checking entered char is A 
.model small
.data
msg1 db 'Enter an character',10,13,'$'
msg2 db 10,13,'you have entered the character : $'
msg3 db 10,13,'Character is not A!$'
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
    
   
    

    ;if  A 
    cmp bl,'A'
    jne else
    
    ;printing msg2    
    mov ah,9
    mov dx,msg2 offset
    int 21h
            
    ;printing input
    mov ah,2
    mov dl,bl
    int 21h 
            
    mov ah,4ch
    int 21h
    ret
    
   
   else: 
    ;print msg3
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,4ch
    int 21h
    ret
    
    main endp
end
      
    