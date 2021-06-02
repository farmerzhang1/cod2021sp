package CPU

import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}
import firrtl.options.TargetDirAnnotation

object CoreDriver extends App {
    (new chisel3.stage.ChiselStage).execute(
        Array("-X", "verilog", "--full-stacktrace"),
        Seq(ChiselGeneratorAnnotation(() => new CPU),
        TargetDirAnnotation("verilog"))
    )
}
