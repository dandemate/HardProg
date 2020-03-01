# Legyen adott egy mértani sorozat, melynek
#   a, első eleme 1024, kvóciense 1/2. Számítsa ki a 6. elemét!

        .intel_syntax noprefix
        .globl  main, a, n, i
        .data
a:      .4byte  1024
i:      .4byte  1
n:      .4byte  6
              
main:
        jmp     COND
BODY:
        mov     eax, DWORD PTR [a]
        shr     eax, 1          
        mov     DWORD PTR [a], eax
        mov     eax, DWORD PTR [i]
        inc     eax
        mov     DWORD PTR [i], eax
COND:        
        mov     eax, DWORD PTR [i]
        cmp     eax, DWORD PTR [n]
        jne     BODY
        mov     eax, DWORD PTR[a]
        ret


