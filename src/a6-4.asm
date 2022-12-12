;
;
;---------------------------------------------------------------------------
;
;
;

section     .data


section .text
    global _start

    
    _start:
        
        

        int     0x80
        mov     rax,1
        int     0x80

