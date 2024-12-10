# 7-Segment Display Decoder in VHDL

## Overview

This VHDL project implements a simple **4-bit to 7-segment display decoder**. It takes a 4-bit binary input (`Data_In`), which represents a number from 0 to 15 (0x0 to 0xF in hexadecimal), and activates the corresponding segments of a 7-segment display to show the appropriate digit. The system includes outputs for controlling each segment of the 7-segment display, plus an additional output `h` for extra control (which might be used for an additional indicator or custom purpose).

The VHDL code uses a `PROCESS` block and a `CASE` statement to map the 4-bit input to a specific configuration of segments for the 7-segment display.

## Functionality

### Inputs
- **Data_In**: A 4-bit input (`STD_LOGIC_VECTOR(3 downto 0)`), which is the binary representation of the digit to be displayed (from 0 to 15 in decimal or 0x0 to 0xF in hexadecimal).

### Outputs
- **a, b, c, d, e, f, g, h**: Eight `STD_LOGIC` outputs that control the segments of the 7-segment display. Each output corresponds to a specific segment of the display:
  - **a** through **g** control the 7 segments of the display.
  - **h** could be used for an additional indicator or control segment, depending on the specific application.

### Segment Mapping
The 7-segment display has 7 segments arranged in a figure "8" pattern. The outputs (`a` through `g`) are mapped to the segments as follows:
- **a**: Top horizontal segment.
- **b**: Top-right vertical segment.
- **c**: Bottom-right vertical segment.
- **d**: Bottom horizontal segment.
- **e**: Bottom-left vertical segment.
- **f**: Top-left vertical segment.
- **g**: Middle horizontal segment.

In a typical 7-segment display:
- A segment is turned **ON** when its corresponding output is set to '0' (active low).
- A segment is turned **OFF** when its corresponding output is set to '1'.

### Behavior
- **When the input is "0000" (binary for 0)**: The segments `a`, `b`, `c`, `d`, `e`, and `f` are turned ON (set to '0'), and `g` is turned OFF (set to '1'). This displays the number "0".
- **When the input is "0001" (binary for 1)**: The segments `b` and `c` are turned ON, and the others are turned OFF, displaying the number "1".
- **For inputs "0010" to "1001" (binary for 2 to 9)**: Similar mappings are done to display the digits 2 through 9.
- **For any other inputs (from "1010" to "1111")**: The default case turns all segments OFF (set to '1'), which could indicate an error or unused state.

### Example:
- **Input: "0000" (binary 0)** will display **"0"** on the 7-segment display by turning on the segments `a`, `b`, `c`, `d`, `e`, and `f` while turning off `g`.
- **Input: "0001" (binary 1)** will display **"1"** by turning on only segments `b` and `c`, and the rest of the segments off.

## Design Details

### Entity
The entity `7segment` has a single 4-bit input (`Data_In`) and eight output signals (`a`, `b`, `c`, `d`, `e`, `f`, `g`, and `h`). The outputs control the individual segments of the 7-segment display.

### Architecture
The architecture of the design uses a **behavioral approach** (`comportamental`) with a process that triggers on changes to the `Data_In` signal. Inside the process, a `CASE` statement is used to evaluate the 4-bit input and set the appropriate values for the 7-segment control signals.

Each value of the 4-bit input corresponds to a specific pattern of ON/OFF signals for the segments of the 7-segment display. The process handles all the logic for segment activation based on the input value.

### Control Logic
- The `CASE` statement checks the value of the 4-bit input (`Data_In`).
- For each value of `Data_In`, the corresponding segments are activated or deactivated using conditional assignments.
- A default case is included to handle any unexpected or invalid inputs by turning off all segments.

## Technologies Used

- **VHDL**: This design is written in VHDL (VHSIC Hardware Description Language) for FPGA or ASIC implementation.
- **STD_LOGIC and STD_LOGIC_VECTOR**: Standard VHDL data types used for defining the input and output signals.
- **IEEE Libraries**: The design uses the `ieee.std_logic_1164` and `ieee.numeric_std` libraries for the basic logic operations and numeric conversions.

## Conclusion

This VHDL code provides a straightforward way to drive a 7-segment display using a 4-bit binary input. It decodes the input value into the corresponding segment configuration and outputs the control signals to display the appropriate digit. This design can be expanded to support more complex displays or used as a fundamental building block for larger digital systems.

The implementation is modular and can be easily adapted for different applications, such as creating a hexadecimal display or incorporating additional functionality for custom indicators.
