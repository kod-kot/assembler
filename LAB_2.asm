.model small
.stack 100h
.486 ;last 2 bits
.data
a dw 1011101100001101b
s dw 1011000000000000b
.code
mov ax, @data
mov ds, ax

mov ax, a

mov cx, 16 

cycle: 
	mov bx, ax
	and bx, 1111000000000000b 
	mov dx, s
	xor bx, dx 
jnz m2
	bts ax, 14
	btr ax, 13
m2:
	rol ax, 1

loop cycle

mov ax, 4c00h
int 21h
end