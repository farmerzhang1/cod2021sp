package RegFile

import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}
import firrtl.options.TargetDirAnnotation

object RegFileDriver extends App {
    (new chisel3.stage.ChiselStage).execute(
        Array("-X", "verilog", "--full-stacktrace"),
        Seq(ChiselGeneratorAnnotation(() => new RegFile(5)(4)),
        TargetDirAnnotation("verilog"))
    )
}

object QueueDriver extends App {
    (new chisel3.stage.ChiselStage).execute(
        Array("-X", "verilog", "--full-stacktrace"),
        Seq(ChiselGeneratorAnnotation(() => new Queue),
        TargetDirAnnotation("verilog"))
    )
}
