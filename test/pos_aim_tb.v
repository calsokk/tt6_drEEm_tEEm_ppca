`default_nettype none `timescale 1ns / 1ps

/* This testbench just instantiates the module and makes some convenient wires
   that can be driven / tested by the cocotb test.py.
*/
module pos_aim_tb ();

  // Dump the signals to a VCD file. You can view it with gtkwave.
  initial begin
    $dumpfile("pos_aim_tb.vcd");
    $dumpvars(0, tb);
    #1;
  end

  // Wire up the inputs and outputs:
  reg clk;
  reg reset;
  reg left_x;
  reg right_x;
  reg left_aim;
  reg right_aim;
  wire [4:0] x_pos;
  wire [2:0] aim_pos;

  // Replace tt_um_example with your module name:
  tt_um_trajectory_calculator user_project (
    .clk(clk),
    .reset(reset),
    .left_x(left_x),
    .right_x(right_x),
    .left_aim(left_aim),
    .right_aim(right_aim),
    .x_pos(x_pos),
    .aim_pos(aim_pos)
  );

endmodule