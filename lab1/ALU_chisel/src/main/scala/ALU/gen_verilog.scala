package ALU
import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}
import firrtl.options.TargetDirAnnotation

object ALUtestDriver extends App {
    (new chisel3.stage.ChiselStage).execute(
        Array("-X", "verilog", "--full-stacktrace"),
        Seq(ChiselGeneratorAnnotation(() => new ALU_test),
        TargetDirAnnotation("verilog"))
    )
}

object ALUDriver extends App {
    (new chisel3.stage.ChiselStage).execute(
        Array("-X", "verilog", "--full-stacktrace"),
        Seq(ChiselGeneratorAnnotation(() => new ALU(32)),
        TargetDirAnnotation("verilog"))
    )
}

object FLSDriver extends App {
    (new chisel3.stage.ChiselStage).execute(
        Array("-X", "verilog", "--full-stacktrace"),
        Seq(ChiselGeneratorAnnotation(() => new FLS),
        TargetDirAnnotation("verilog"))
    )
}
