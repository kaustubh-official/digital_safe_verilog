`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 25.04.2026 10:26:47
// Module Name: digital_safe
// Project Name: digital_safe_verilog 
//////////////////////////////////////////////////////////////////////////////////


module digital_safe(
    input [3:0] user_input,
    output reg unlock,
    output reg lock
    );
    reg [3:0] w;
    reg [3:0] key_val=4'b1001; // key_val = 9
    always@(*)
     begin
      w=~(key_val^user_input);
      if (w==4'b1111)
        unlock=1'b1;
      else
        unlock=1'b0;
      lock=~unlock; 
     end
endmodule
