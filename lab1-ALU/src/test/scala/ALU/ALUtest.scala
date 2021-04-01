package ALU
import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class ALUSpec extends FreeSpec with ChiselScalatestTester {
    "ALU should do some arithmetic operations" in {
        test (new ALU(32)) { dut =>
        }
    }
}