.model small                                                                                         ; CS21B2023 DEVANSH LINGAMANENI
.stack 100h                                                                                           
.data
	msg db "The factorial for 3 is $"
	n1 db 03h   						; input allocating
	n2 db 01h
.code
	mov ax, @data
	mov ds,ax
		mov ah, 09h
		lea dx, msg 					; message printing
		int 21h

		mov cl,n1
		mov al,n2
loop1:	
		mul cl
		dec cl					; looping and traversing each value
		jnz loop1
	add al,30h
		mov bl,al
		mov dl,bl
		mov ah,02h
	int 21h
	mov ax, 4c00h						; end of program
	int 21h
end
