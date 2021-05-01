package SingleCycle
import chisel3._

class DataPathIO extends Bundle {
    val inst = Input(UInt(32.W))
    // 还没搞清楚datapath需要啥IO
}

class DataPath extends Module {
    val io = IO (new DataPathIO)

}
