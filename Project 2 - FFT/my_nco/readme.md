```markdown
# `my_nco` Numerically Controlled Oscillator

This folder holds the Verilog implementation of a 32-bit phase-accumulator NCO, generating 14-bit sine & cosine outputs.

## Contents

- `my_nco.v`  
  Top-level NCO module:
  ```verilog
  module my_nco (
    input  wire        clk,
    input  wire        reset_n,
    input  wire        clken,
    input  wire [31:0] phi_inc_i,
    output reg  [13:0] fsin_o,
    output reg  [13:0] fcos_o,
    output reg         out_valid
  );
