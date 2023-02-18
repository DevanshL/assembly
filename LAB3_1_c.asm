.model small                                                                                          ; CS21B2023 DEVANSH LINGAMANENI
.stack 100h                                                                                          
.data
        msg db "The sum is : $" 
        res dw '0'
.code
        mov ax, @data 
        mov ds,ax
                          ;INPUT
        mov cl,'8'
        sub cl,'0'
        mov bl,'7'
        sub bl,'0'
        clc
        call sum
        mov bx,ax
        mov ah,09h       
        lea dx,msg      ; PRINT MESSAGE
        int 21h
        mov dl,10
        mov ah,02h
        int 21h 
        
        			; print character
        mov dl,bh
        mov ah, 02h
        int 21h
        mov dl,bl
        mov ah, 02h
        int 21h
sum:				;SUM PROCESS
        mov ah,0
        mov al,cl
        add al,bl
        aaa
        add al,30h
        add ah,30h
        ret
        mov ax, 4c00h
        int 21h
end
