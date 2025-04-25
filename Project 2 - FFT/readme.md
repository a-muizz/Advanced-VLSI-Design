# FFT Analyzer in Verilog

This project implements a Fast Fourier Transform (FFT) pipeline in Verilog—wrapping Intel’s FFT megafunction in a custom controller and testbench—to demonstrate and analyze a spike in a single FFT bin.

---

## Table of Contents

1. [Overview](#overview)  
2. [Background](#background)  
   - [Fast Fourier Transform](#fast-fourier-transform)  
   - [Numerically Controlled Oscillator (NCO)](#numerically-controlled-oscillator-nco)  
3. [Repository Structure](#repository-structure)  
4. [References](#references)  

---

## Overview

This design exercises a 1 024-point FFT on a 14-bit input stream, driven by a 40 MHz clock, generated from a 32-bit NCO. We inject a single-tone 390.625 kHz sine wave, which maps exactly to FFT bin 10 (  
\  
_f_bin = _F_s_ / N = 40 MHz/1024 ≈ 39.0625 kHz; 10×39.0625 kHz = 390.625 kHz  
\  
). The result is a clear spike in **bin 10**, validating both the FFT functionality and our wrapper/testbench.

---

## Background

### Fast Fourier Transform

The FFT is an efficient algorithm to compute the Discrete Fourier Transform (DFT) in **O(N log N)** time versus the naïve **O(N²)** approach.  
- Founded by **Cooley & Tukey** in 1965 (John Tukey coined the term “FFT”).  
- YouTube overview: Veritasium’s [“Fast Fourier Transform”](https://www.youtube.com/watch?v=nmgFG7PUHfo&ab_channel=Veritasium).

### Numerically Controlled Oscillator (NCO)

A hardware NCO generates a digital sine (and cosine) wave by accumulating a phase word and looking up (or computing) trigonometric outputs.  
- Here, we use a 32-bit phase increment of **41 943 040** on a 40 MHz clock to produce exactly **390.625 kHz**.  
- Outputs are 14-bit signed samples.

---

## Repository Structure
- This repository contains multiple sub folders.
- my_fft contains the mega function the wrapper initializes to integrate an FFT core.
- my_nco contains the Numerically controlled oscillator used to generate an input signal.
- reports contains a pdf slideshow overviewing this project
- screenshots contains images of the bin 10 spike
- source contains the files for my_fft, my_nco, fft_wrapper, control_for_fft and the testbench code files

## References
- YouTube overview: Veritasium’s [“Fast Fourier Transform”](https://www.youtube.com/watch?v=nmgFG7PUHfo&ab_channel=Veritasium).
- YouTube overview: Visual Electric's ["FFT on FPGA"](https://www.youtube.com/watch?v=DgRVqS4Dw9g&ab_channel=VisualElectric).
