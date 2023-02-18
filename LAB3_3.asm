.model small                                                                                          ; CS21B2023 DEVANSH LINGAMANENI
.stack 100h                                                                                           
.data
	msg db "The Given Number is $"
	msg1 db "Even$"
	msg2 db "Odd$"
	num1 equ 07h					; inputs
	num2 equ 04h
	divisor equ 02h
.code
	mov ax, @data
	mov ds, ax
	
	
	mov ax, num1
	mov bl, divisor        ; input store and comparision
	div bl
	add ah, 30h
	mov ch, ah
	cmp ch, 00
	je eve
	cmp ch, 00
	jne od
eve:
	mov ah, 09h		; for even number check
	lea dx, msg
	int 21h
	mov ah, 09h
	lea dx, msg1
	int 21h
	mov dl, 10
od:
	mov ah, 09h
	lea dx, msg           ; for odd number check
	int 21h
	mov ah, 09h
	lea dx, msg2
	int 21h
	mov dl, 10
	
mov ax, 4c00h			; exit the program
int 21h	
end
