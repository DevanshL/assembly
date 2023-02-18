.model small                                                                                    ; CS21B2023 DEVANSH LINGAMANENI
.stack 100h                                                                                     
.data
	msg db "(a^b) : $"
	a equ 09h
	b equ 02h				; equating inputs
.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 09h
	lea dx, msg		; print message
	int 21h
	
	mov bl, a
	mov cl, b
	mov al, 01h
exp:				; exponent working
	mul bl
	aam			
	dec cl
	jnz exp
	add al, 30h
	add ah, 30h		; converting to ascii
	mov bx, ax
	mov dl, bh
	mov ah, 02h
	int 21h			
	mov dl, bl		; print character
	mov ah, 02h
	int 21h
	
	
	mov ax, 4c00h
	int 21h				; end of program
end	
