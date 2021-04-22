.data
data1:  .word 4
data2:  .word 8
blank:  .string " "

.text
main:
    lw x30, data1
    lw x31, data2
CYCLE:
    add x28, x30, x31
    addi x30, x30, 1
PRINT:
    addi x29, x29, 1
    li  a7, 1
    mv  a0, x28
    ecall
    li  a7, 11
    lw  a0, blank
    ecall
    beq x30, x31, END
    jal CYCLE
END: