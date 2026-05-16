.section text
.org 0
_start:
    OUT_CSTR question
    OUT_CSTR hello
    IN 0
    OUT 0
    IN 0
    OUT 0
    IN 0
    OUT 0
    IN 0
    OUT 0
    IN 0
    OUT 0
    OUT_CSTR suffix
    HLT

.section data
.org 0
question:
    .cstr "What is your name?"
hello:
    .cstr "Hello, "
suffix:
    .cstr "!"
