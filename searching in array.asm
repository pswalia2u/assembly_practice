.model small
.data

array db 'a','b','c','d','z'
msg1 db 'Enter the character to search:',10,13,'$'
var db ? 
msgyes db 'Yes found',10,13,'$'
msgno  db 'Not found $' 

.code

main proc 
  mov ax,@data
  mov ds,ax
  
  ;print msg1
  mov ah,9
  lea dx,msg1
  int 21h
   
  ;taking input
  mov ah,1
  int 21h
  mov var,al
  
  mov cx,5;stores no of elements in array
  lea si,array ;storing offset of array in si
  dec si  
  for:
  inc si
  cmp [si],al
  je  found
  loop for
    
    notfound:
    ;print msgno
  mov ah,9
  lea dx,msgno
  int 21h 
  jmp endd
  
  
  cmp si,4
  je notfound
  
  found:
  ;print msgyes
  mov ah,9
  lea dx,msgyes
  int 21h
  

      

  
 endd :
  mov ah,4ch
  int 21h
  ret
 main endp
end





