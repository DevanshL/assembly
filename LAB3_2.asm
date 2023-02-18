.model small                                     ; CS21B2023 DEVANSH LINGAMANENI
.stack 100h                                      
.data
    msg db "The Maximum number in array is : $"
    array db 13h,20h,63h,58h,50h
    max db ? 
.code
    mov ax,@data
    mov ds,ax

    mov si,offset array        		;first element of array
    mov al,[si]                			;storing value
    mov cl,0                   					; c=0

    large:
        inc si                 			;iter

        cmp cl,4               			;c=4
        je exit  	
        inc cl                			 ; count  incr

        cmp al,[si]            			;compare
        jg large               			;if present max is greater then loop continues

        cmp al,[si]           	 	;compare
        jle iteration         	 	;if present array element is greater then update

    iteration:
        mov al,[si]            		;update max val
        jmp large              		; go to next iter

    exit:
        aam 				;display answer 
        add ax,03030h 			; ascii representation	
        mov cx,ax ;

        mov ah,09h
        lea dx,msg
        int 21h

        mov dl,ch 		; print charcater
        mov ah,02h	
        int 21h

        mov dl,cl
        mov ah,02h
        int 21h
        
        mov ax,4c00h         ; exit program
        int 21h
end
    
