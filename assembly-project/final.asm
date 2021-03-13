extern printf
extern scanf

section .data

    int_inMsg db "Digite um valor inteiro nao negativo" , 10, 0 ;10 nova linha, 0 NULL
    intFormat db "%d", 0
    printFormat db "O elemendo %d da sequencia de Fibonacci eh %d", 0xa, 0xd ; 0xa = 10

section .bss
    var1 resd 1

section .text
    global main

main: 

        push rbp 

        ; print na tela pedindo um número
        lea rdi, [int_inMsg] 
        xor rax, rax
        call printf

        ; Lendo o que foi digitado
        lea rdi, [intFormat]
        lea rsi, [var1]
        xor rax, rax
        call scanf

        ; chamada da função
        mov rdi, [var1]            ; 
        call fib

        ; printa na tela o resultado
        lea rdi, [printFormat]
        mov rsi, [var1]  ; os [] passam o valor de var1 e não um ponteiro para ele
        mov rdx, rax
        xor rax, rax
        call printf

        ; return
        pop rbp 
        mov rax, 0 
        ret

fib:
    cmp rdi, 1
    je fib_1 ; f(1) = 1
    jb fib_0 ; f(0) = 0

    push rdi
    sub rdi, 1
    call fib
    push rax

    pop rcx
    pop rdi
    push rcx
    sub rdi, 2
    call fib
    
    pop rcx
    add rax, rcx
    ret

fib_1:
    mov rax, 1
    ret

fib_0:
    mov rax, 0
    ret