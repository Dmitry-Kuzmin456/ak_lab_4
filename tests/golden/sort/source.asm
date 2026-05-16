.section text
.org 0
_start:
    IN 0
    ST a
    IN 0
    ST b
    IN 0
    ST c

    LD a
    CMP b
    BGT swap_ab
after_ab:
    LD b
    CMP c
    BGT swap_bc
after_bc:
    LD a
    CMP b
    BGT swap_ab2
after_ab2:
    LD a
    OUT 0
    LD b
    OUT 0
    LD c
    OUT 0
    HLT

swap_ab:
    LD a
    ST tmp
    LD b
    ST a
    LD tmp
    ST b
    JMP after_ab

swap_bc:
    LD b
    ST tmp
    LD c
    ST b
    LD tmp
    ST c
    JMP after_bc

swap_ab2:
    LD a
    ST tmp
    LD b
    ST a
    LD tmp
    ST b
    JMP after_ab2

.section data
.org 0
a:
    .word 0
b:
    .word 0
c:
    .word 0
tmp:
    .word 0
