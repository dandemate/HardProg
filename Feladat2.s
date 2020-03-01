# A program számítsa ki a Fibonacci sorozat n-edik elemét! 
# (n < 14 értékekre teszteljétek (a túlcsordulás miatt.))
# 1. 2. 3. 4. 5. 6. 7. 8. 9. 10. 11. 12. 13.
# 0  1  1  2  3  5  8  13 21 34  55  89  144

        .intel_syntax noprefix
        .globl main, n, i, sum, tmp
        .data
n:      .4byte  13
i:      .4byte  1
sum:    .4byte  0
tmp:    .4byte  1

main:
    jmp     COND

BODY:
    mov     eax, DWORD PTR [sum]
    mov     ecx, DWORD PTR [tmp]
    add     eax, ecx
    mov     ecx, DWORD PTR [sum]
    mov     DWORD PTR [tmp], ecx    
    mov     DWORD PTR [sum], eax
    mov     ecx, DWORD PTR [i]
    inc     ecx
    mov     DWORD PTR [i], ecx

COND:
    mov     eax, DWORD PTR [i]
    cmp     eax, DWORD PTR [n]
    jne     BODY
    mov     eax, DWORD PTR [sum]
    ret      
