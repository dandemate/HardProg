# Integer multiplication and division

        .intel_syntax noprefix
        .globl     main
main:        
        mov        eax, -5         # eax = -5
        imul       eax, -4         # eax = eax*-4
        cdq                        # eax is sign-extended to edx
        mov        ecx, 3          # ecx = 3
        idiv       ecx             # eax = (edx:eax)/ecx ; edx = (edx:eax)%ecx
#        mov        eax, edx       # eax = edx
        ret


### C style ### 
# int main(){
#   return -5*-4/3;
#   //return 5*4%3;
#   }


