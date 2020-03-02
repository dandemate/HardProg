# A program egy negatív számból kettes komplemensének visszafejtésével állítsa elő az ellentetjét!
#	pl. -33 -> 33
#		0xC6 -> 58
#		0B11101111 -> 17

        .intel_syntax noprefix
        .globl main, x
        .data
x:      .4byte  0B11101111

main:
        mov     eax, DWORD PTR [x]
#       neg     eax                  # egyszerűbb
        not     eax                 # egyes komplemens
        add     eax, 1              # kettes komplemens
        ret
