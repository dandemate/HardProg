# Adott A osztályú IP cím (/8 prefix). A program visszatérési értéke legyen ezen IP cím hálózati azonosítója!
#	pl. 0x7F000001 (127.0.0.1 - a pontozott decimális alak nem egyenlő a decimálissal!)
#		0x51A9B5B3 (81.169.181.179)

        .intel_syntax noprefix
        .globl main
        .data
ipadrs: .4byte  0x7F000001

main:
        mov     eax, DWORD PTR[ipadrs]
        shr     eax, 24
        mov     DWORD PTR[ipadrs], eax
        
        mov     eax, DWORD PTR[ipadrs]
        shr     eax, 16
        mov     eax, 0
        mov     DWORD PTR[ipadrs], eax

        mov     eax, DWORD PTR[ipadrs]
        shr     eax, 8
        mov     eax, 0
        mov     DWORD PTR[ipadrs], eax
        
        mov     eax, DWORD PTR[ipadrs]
        mov     eax, 1
        mov     DWORD PTR[ipadrs], eax
        mov     eax, DWORD PTR[ipadrs]
        ret

