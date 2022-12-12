;
;   Brainfuck in Assembly
;   Dagan Poulin
;   12/12/2022
;
;---------------------------------------------------------------------------
;
;   An assembly program to interpret brainfuck code from a file at runtime
;
;
;

section     .data
    LEN: equ 30000
    dataArray DB $LEN
    codeArray DB $LEN

    dPtr DD 1
    pPtr DD 1


section .text
    global _start, _loadCode, _parse, _findMatch, _opIncPtr, _opDecPtr, _opIncData, _opDecData, _opPrint, _opInput, _opLLoop, _opRLoop

    ;   
    ;   Entry point for program
    ;   Does program setup, execution, and teardown
    ;   Delegates program execution to _parse and various _op functions
    ;
    _start:
        ; 1) Load our code
        call _loadCode

        ; 2) Perform our execution steps until pPtr is out of range
        inRange:
            ; 2-1) Test if our program has underflowed
            cmp DWORD [pPtr], 0
            jl outRange
            ; 2-2) Test if our program has overflowed
            cmp DWORD [pPtr], $LEN
            jge outRange

            call _parse

            ; Return to the beginning of our loop.
            ; This will retest pPtr and exit us if needed.
            jmp inRange
        outRange:
        ; 3) Clean up

        int     0x80
        mov     rax,1
        int     0x80
        ret


    ;
    ;   Accept a filename from command line
    ;   Open file
    ;   Load contents into codeArray
    ;
    _loadCode:

    ret

    ;
    ;   Determines which op to call from string provided
    ;   Basically a glorified switch statement
    ;
    _parse:
        
    ret

    ;
    ;   Increments dPtr
    ;
    _opIncPtr:
        inc DWORD [pPtr]
    ret

    ;
    ;   Decrements dPtr
    ;
    _opDecPtr:
        dec DWORD [pPtr]
    ret

    ;
    ;   Increments data at dPtr in dataArray
    ;
    _opIncData:

    ret

    ;
    ;   Decrements data at dPtr in dataArray
    ;
    _opDecData:

    ret

    ;
    ;   Prints data at dPtr in dataArray to console
    ;
    _opPrint:

    ret

    ;
    ;   Gets input from console and sets data at dPtr in dataArray
    ;
    _opInput:

    ret

    ;
    ;   For use with looping brackets
    ;   Finds matching bracket ( [ or ] )
    ;   Returns location
    ;
    _findMatch:

    ret

    ;
    ;   Jumps to matching ] if value at dPtr in dataArray is zero
    ;
    _opLLoop:

    ret

    ;
    ;   Jumps to matching [ if balue at dPtr in dataArray is non-zero
    ;
    _opRLoop:

    ret
