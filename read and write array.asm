.model small
.data
msg1 db 'Enter 5 values',10,13,'$'
msg2 db 10,13,'You have entered!',10,13,'$'
array db 5 dup(?)   

.code

main proc 
  mov ax,@data
  mov ds,ax
  
  mov ah,9
  lea dx,msg1 ;moving address of msg1 to lea
  int 21h 
   
  mov cx,5;stores no of elements in array
  lea si,array ;storing offset of array in si
  
for:          ;storing elements into array
  mov ah,1
  int 21h
  mov [si],al
  inc si
  loop for 
  
  mov ah,9
  lea dx,msg2 ;moving address of msg2 to lea
  int 21h
         
  mov cx,5
  lea si,array;storing array offset in si
 
  for1:       ;displaying elements in athe array
  mov ah,2
  mov dl,[si]
  int 21h
  inc si
  loop for1
  
  
  mov ah,4ch
  int 21h
  ret
 main endp
end


