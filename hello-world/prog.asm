.intel_syntax noprefix

.section .data
message:
    .asciz "Hello, World!\n"

.section .text
.global _start

_start:
    # write syscall
    mov eax, 4         # syscall number for write
    mov ebx, 1         # file descriptor (stdout)
    lea ecx, [message] # pointer to the message
    mov edx, 14        # message length
    int 0x80

    # exit syscall
    mov eax, 1         # syscall number for exit
    xor ebx, ebx       # exit status
    int 0x80
