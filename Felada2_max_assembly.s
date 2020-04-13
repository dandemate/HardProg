        .intel_syntax noprefix
        .globl  max

max:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR[rbp-16], edi          # kezdőcím
        mov     DWORD PTR[rbp-12], esi          # elemszám
        mov     DWORD PTR[rbp-8], 0             # i
        mov     DWORD PTR[rbp-4], 0             # max
        jmp     COND
        mov     rsp, rbp
        pop     rbp
        ret

BODY:   mov     ebx, DWORD PTR[rbp-8]                   # i
        mov     ecx, DWORD PTR[rbp-4]                   # max
        mov     eax, DWORD PTR[rbp-16+ebx*4]            # kezdőcím - i*4  (aktuális elem) 
        cmp     ecx, eax                                # ecx-> max, eax -> tömb i. eleme
        jl      IF                                      # ha max kisebb mint tomb i. eleme
        inc     ebx                                     
        mov     DWORD PTR[rbp-8], ebx                           

COND:   cmp     edx, esi
        jl      BODY
        mov     eax, DWORD PTR[rbp-4]
        mov     rsp, rbp
        pop     rbp
        ret


IF:     mov     DWORD PTR[rbp-4], eax        
        inc     ebx
        mov     DWORD PTR[rbp-8], ebx
