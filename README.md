# Digital Safe (Verilog)

A simple digital safe project in Verilog. The user sets a 4-bit code using switches. If it matches the stored key (1001, which is 9), the safe unlocks. Otherwise it stays locked.

## Tech and Tools

- Verilog HDL
- Xilinx Vivado (simulation and synthesis)
- FPGA board (switches as inputs, LEDs as outputs)

## Files

- `digital_safe.v` - main design
- `digital_safe_tb.v` - testbench for simulation
- `digital_safe.xdc` - pin constraints for the FPGA board

## Logic

```
unlock = (user_input == 1001)
lock = ~unlock
```