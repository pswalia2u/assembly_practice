.model small
.data 
.code
;referse the sign of ch register
main proc
mov ch,-5
xor ch,0ffh
inc ch
main endp
end