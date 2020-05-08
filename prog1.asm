.model small
.stack 100h
.486
.data
a db 10
b db 20
c db 5
d db 20
e db 100
.code
mov ax, @data
mov ds, ax

movsx ax, a
movsx bx, b
add ax, bx 
imul ax 

push dx
push ax 

movsx ax, a
movsx bx, e
add ax,bx 
cwde 
sal eax, 1
mov ecx, eax 

pop eax 
cdq 

idiv ecx 
push eax 

movsx ax,a
movsx bx,b
add ax,bx 
cwde
mov ecx, eax 

pop eax

imul ecx 
push edx
push eax 



movsx ax, c ; ax = c
sal ax,1 ; ax = 2*c
push ax 

mov al,d 
imul al
pop dx 

neg ax 
add ax, dx

movsx cx, a
imul cx 

push dx 
push ax 

movsx ax, a
movsx bx, e
add ax, bx 
mov bx, 4
imul bx 
push dx
push ax

pop ecx 
pop eax
cdq 

idiv ecx 

pop ecx 
pop edx



add eax, ecx
adc edx, 0 

mov ax, 4c00h
int 21h
end