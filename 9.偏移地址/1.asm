assume cs:code
    code segment
        start:
            mov ax,offset start
        mov ds,ax
        s: 
            mov ax,offset s
        mov ds,ax
        
        mov ax,4c00h
        int 21h
    code ends
end start