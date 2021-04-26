package SingleCycle

import chisel3.util.BitPat

object Instructions {
    def ADD    = BitPat("b0000000??????????000?????0110011")
    def ADDI   = BitPat("b?????????????????000?????0010011")
    def LW     = BitPat("b?????????????????010?????0000011")
    def SW     = BitPat("b?????????????????010?????0100011")
    def BEQ    = BitPat("b?????????????????000?????1100011")
    def JAL    = BitPat("b?????????????????????????1101111")
}