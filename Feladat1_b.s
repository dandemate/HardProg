# Legyen adott egy mértani sorozat, melynek
#   b, első eleme 729, kvóciense 1/3. Számítsa ki az 5. elemét!

        .intel_syntax noprefix
        .globl main, a, n, q, i
        .data
a:      .4byte  729
q:      .4byte  3
i:      .4byte  1
n:      .4byte  5
              
main:
        jmp     COND
BODY:
        mov     eax, DWORD PTR [a]
        cdq
        mov     ecx, DWORD PTR [q]
        idiv    ecx         
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
