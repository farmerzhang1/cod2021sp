.data
d0: .word 12
d1: .word 3
n: .word 5 # we print n numbers
delimiter: .string " "

.text
main:
    lw x30, d0
    lw x31, d1
    lw x22, n
    # d0, 1 for ints
    beq x22, x0, exit
    addi x22, x22, -1
    li a7, 1
    addi a0 x30, 0
    ecall
    beq x22, x0, exit
    # delim, 11 for strings
    li a7, 11
    addi a0 x22, 0
    ecall
    addi x22, x22, -1
    # d1
    li a7, 1
    addi a0 x31, 0
    ecall
    # delim, 11 for strings
    li a7, 11
    addi a0 x22, 0
    ecall
    beq x22, x0, exit
    li x19, 0
fls:
    bge x19, x22, exit # test

    add t0, x30, x31
    addi x30, x31, 0
    addi x31, t0, 0 # iteration

    # print
    li a7, 1
    addi a0, x31, 0
    ecall
    # delim
    li a7, 11
    addi a0, x22, 0
    ecall

    addi x19, x19, 1 # i++
    jal fls
exit:nop
