;; Program Hello world
section .text
global _start

_start:
        mov     edx,len
        mov     ecx,msg
        mov     ebx,1
        mov     eax,4

    ;WRITE IN SYSTEM
        int     0x80 ;RESERVE INT IN MEMORY CELL

        mov     eax,1 
    ;EXIT SYSTEM
    
        int     0x80

section     .data
        msg     db  'Hello World',0xa
        len     equ $ - msg