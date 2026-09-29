`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 25.04.2026 10:30:12
// Design Name: 
// Module Name: digital_safe_tb
// Project Name: digital_safe_verilog
//////////////////////////////////////////////////////////////////////////////////


module digital_safe_tb();
reg [3:0] user_input;
wire unlock,lock;
digital_safe uut(user_input,unlock,lock);
initial
 begin
      user_input=4'b0101;
  #10 user_input=4'b1001;
  #10 $finish;
 end
endmodule
