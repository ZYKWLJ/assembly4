; assume cs:code,ds:data
assume ds:data
data segment
    dd 1
data ends
end

; code segment
;     start:
;         mov ax,4c00h
;         int 21h
; code ends
; end start

