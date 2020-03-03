	.intel_syntax noprefix
        .globl     main        
	.globl     a,b
        .data
k:      .4byte     30
a:      .4byte     9
main:        
        mov        eax, DWORD PTR [k]      # eax=?  ebx=6  ecx=?  edx=?
	cdq
	mov        ecx, 2
	idiv	   ecx
	mov        ebx, DWORD PTR [a]
	sub        eax, ebx
        ret


