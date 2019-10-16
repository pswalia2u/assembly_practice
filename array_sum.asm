.model small
.data
;var1 db 1
array db 3,2,5,6,7   
index db ?
sum db ?
.code

main proc 
  mov ax,@data
  mov ds,ax
  
  mov cx,5;stores no of elements in array
  lea si,array ;storing offset of array in si
  mov dl,0
  
  for:
  add dl,[si]
  inc si
  loop for
  
  mov sum,dl  
    
  mov ah,4ch
  int 21h
  ret
 main endp
end


