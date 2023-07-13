section .data
   message: db "Hello World!", 0xA ; db = define byte ; 0xA = 10 = '\n'
   message_length: equ $-message

section .text
    global _start ; entry point for linker

    _start: ; start here
        mov eax, 0x4            ; use the write syscall - write(int fd, const void *buf, size_t count)
        mov ebx, 1              ; stdout
        mov ecx, message
        mov edx, message_length
        int 0x80                ; invoke syscall

        ; exit program
        mov eax, 0x1
        mov ebx, 0              ; exit code (success)
        int 0x80                ; invoke syscall