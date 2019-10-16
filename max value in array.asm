.model small
.data

array dw 12h,15h,5h,17h,3h
max dw ?   

.code

main proc 
  mov ax,@data
  mov ds,ax
  
  
   
  mov cx,5;stores no of elements in array
  lea si,array ;storing offset of array in si
mov ax,[si]
  
for:
add si,2
cmp [si],ax
jb update
mov ax,[si]

update:
loop for

mov max,ax
      

  
  
  mov ah,4ch
  int 21h
  ret
 main endp
end





