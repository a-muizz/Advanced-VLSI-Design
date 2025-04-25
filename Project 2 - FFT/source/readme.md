# Source Code

All primary Verilog files for the FFT Analyzer live here.

## Files

- `control_for_fft.v`  
  Generates valid/​SOP/​EOP control signals and feeds 1 024 samples into the FFT core.
- `fft_wrapper.v`  
  Instantiates `control_for_fft`, `my_fft` IP, and provides the final real/imag power outputs.
- `testbench.v`  
  Top-level simulation that clocks `my_nco` and the FFT wrapper, capturing output signals.
- `my_nco.v`  
  32-bit NCO generating the input sine wave.
- (Optional) Synthesis constraints or scripts (`.sdc`, `.qsf`) if you plan to map to FPGA.

## Simulation

```bash
# Example with ModelSim/Questa
vlog *.v
vsim -c testbench -do "run -all; quit"
