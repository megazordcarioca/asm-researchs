;; Program Hello world
section .text
global _start

                        ; PROGRAMMING WITH INTEL REGISTERS
_start:                 ; CREATE PROGRAM STRUCTURE
        mov     edx,len
        mov     ecx,msg
        mov     ebx,1   ;; ARGUMENT TO EBX POINTER
        mov     eax,4   ;; ACCUMULATOR

    ;WRITE IN SYSTEM
        int     0x80    ; OPEN STRUCTURE PROGRAM

        mov     eax,1   ; MOVE 1 BIT TO ACCUMULATOR FOR EXIT
    
        int     0x80    ; END PROGRAM STRUCTURE

section     .data
        msg     db  'Hello World',0xa
        len     equ $ - msg