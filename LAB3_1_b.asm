.model small  		  ;  CS21B2023 LINGAMANENI DEVANSH
.stack 100h
.data
    msg db "Sum is : $"
    msg1 db "Enter first number : $"
    msg2 db "Enter second number : $"
.code
    mov ax,@data
    mov ds,ax

    mov ah,09h
    lea dx, msg1
    int 21h

    mov ah, 01h     ; taking first number input
    int 21h

    sub al, 30h     ; converting ascii to decimal
    mov bl, al      ; storing first number in bl

    mov dl, 10      ; printing a new-line
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h

    mov ah,09h
    lea dx, msg2
    int 21h

    mov ah, 01h     ; taking second number input
    int 21h

    sub al, 30h     ; converting ascii to decimal

    mov ah, 0       ; initiating ah = 0
    add al,bl       ; adding first number to second number
    aaa             ; adjusting the result
    
    add ah,30h      ; converting decimal to ascii
    add al,30h      
    mov bx,ax       ; storing the result in bx

    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h

    mov ah,09h
    lea dx, msg
    int 21h

    mov dl,bh       ; printing the first digit
    mov ah, 02h
    int 21h
    mov dl,bl       ; printing the second digit
    mov ah, 02h
    int 21h

    mov ax, 4c00h
    int 21h
end
