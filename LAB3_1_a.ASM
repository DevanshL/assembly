.model small
.stack 100h
.data									; CS21B2023 DEVANSH LINGAMANENI
	n1 db 5
	n2 db 5
        msg db "The sum is :  $"
.code
        mov ax,@data
        mov ds,ax

        mov al,n1
	mov bl,n2

        			;print message
        mov ah,09h
	lea dx,msg
        int 21h 
				; double addition
	mov ah,0
	add al,bl
	aaa		
	
        add ah,30h
	add al,30h

	mov bx,ax
			;print answer
	mov dl,bh
	mov ah,02h
	int 21h

	mov dl,bl
	mov ah,02h
	int 21h

        mov ax,4c00h     ;exit program
        int 21h
end
