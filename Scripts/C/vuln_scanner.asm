section .data
    buffer db 1024
    prompt db "Enter IP address to scan: ", 0
    result_format db "Port %d is open\n", 0
    port db 0

section .text
    global _start

_start:
    ; Print prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 23
    int 0x80

    ; Read IP address from user
    mov eax, 3
    mov ebx, 0
    mov ecx, buffer
    mov edx, 4096
    int 0x80

    ; Connect to ports 1-1024 and check for open ports
    mov ecx, 1  ; Start port number
.check_ports:
    cmp ecx, 1025  ; Check up to port 1024
    jg .end_scan

    ; Socket creation
    mov eax, 102  ; socket syscall
    mov ebx, 1    ; AF_INET (IPv4)
    mov edx, 2    ; SOCK_STREAM (TCP)
    int 0x80
    mov edi, eax  ; Save socket descriptor

    ; Fill in sockaddr_in structure
    xor eax, eax
    mov word [port], cx  ; Port number
    mov word [edi+2], ax  ; Family (AF_INET)
    mov dword [edi+4], 0  ; IP address (INADDR_ANY)
    mov dword [edi+8], 0  ; IP address (INADDR_ANY)

    ; Connect to IP address and port
    mov eax, 103  ; connect syscall
    mov ebx, edi  ; Socket descriptor
    mov ecx, buffer  ; IP address
    mov edx, 16  ; Length of sockaddr structure
    int 0x80

    ; Check if connection was successful
    cmp eax, -1
    je .port_closed

    ; Print result
    mov eax, 4
    mov ebx, 1
    mov ecx, result_format
    mov edx, 15
    int 0x80

    ; Close socket
    mov eax, 6  ; close syscall
    mov ebx, edi  ; Socket descriptor
    int 0x80

    ; Increment port number and loop
    inc ecx
    jmp .check_ports

.port_closed:
    ; Close socket
    mov eax, 6  ; close syscall
    mov ebx, edi  ; Socket descriptor
    int 0x80

    ; Increment port number and loop
    inc ecx
    jmp .check_ports

.end_scan:
    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80
