# 4-bit ALU in Verilog HDL

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU is capable of performing four basic arithmetic and logic operations: **Addition**, **Subtraction**, **Bitwise AND**, and **Bitwise OR**.

##  Overview

The ALU was built using both:
- **Structural modeling** (for basic gates, adders)
- **Behavioral & Dataflow modeling** (for the top-level ALU module)

Each operation was tested through waveform simulations.

##  Features

- 4-bit **Bitwise AND**
- 4-bit **Bitwise OR**
- 4-bit **Adder** (built using full adders and half adders)
- 4-bit **Subtractor** (using two’s complement)
- ALU control via 3-bit `OpCode`:
  - `000` – Addition
  - `001` – Subtraction
  - `010` – AND
  - `011` – OR

##  Module Structure

- `half_adder.v`
- `full_adder.v`
- `adder.v`
- `subtractor.v`
- `and_gate.v`
- `or_gate.v`
- `alu_structural.v`
- `alu_behavioral.v`
- `mux.v` (for operation selection)

## Simulations

All modules were verified using testbenches. Waveforms are provided in the `waveform_images/` folder to show operation results.


## Tools Used

- **ModelSim** for simulation
- **Verilog HDL**

## Report

A full report describing the design process, code snippets, and waveform results is available in `docs/Verilog HDL project.pdf`.

## Author

Leen Alqazaqi  
Computer Engineering – Section 8  
Student ID: 1220380
