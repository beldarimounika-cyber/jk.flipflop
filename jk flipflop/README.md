# JK Flip-Flop Using Verilog

## 📌 Project Description

This project implements a **JK Flip-Flop** using Verilog HDL. A JK Flip-Flop is a sequential logic circuit that is used to store one bit of data.

The JK Flip-Flop is an improved version of the SR Flip-Flop because it eliminates the invalid condition that occurs when both inputs are active.

## 🎯 Objective

To design and simulate a JK Flip-Flop using Verilog HDL and verify its operation using a testbench.

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* GitHub

## 📋 JK Flip-Flop Truth Table

| J | K | Q(next) | Operation |
| - | - | ------- | --------- |
| 0 | 0 | Q       | No Change |
| 0 | 1 | 0       | Reset     |
| 1 | 0 | 1       | Set       |
| 1 | 1 | Q̅      | Toggle    |

## 💻 Verilog Design

The JK Flip-Flop is implemented using a positive-edge-triggered clock.

## 🧪 Testbench

The testbench applies different combinations of J and K inputs and observes the output Q.

## ▶️ Simulation

Compile the Verilog files using:

```bash
iverilog -o jk_sim jk_flipflop.v jk_flipflop_tb.v
```

Run the simulation:

```bash
vvp jk_sim
```

To generate a waveform:

```bash
iverilog -o jk_sim -g2012 -s jk_flipflop_tb jk_flipflop.v jk_flipflop_tb.v
vvp jk_sim
```

If using GTKWave:

```bash
gtkwave jk_flipflop.vcd
```

## 📊 Expected Result

The output follows the JK Flip-Flop truth table:

* J=0, K=0 → No change
* J=0, K=1 → Reset
* J=1, K=0 → Set
* J=1, K=1 → Toggle

## ✅ Conclusion

The JK Flip-Flop was successfully designed and simulated using Verilog HDL. The simulation verifies the expected behavior for all combinations of J and K inputs.
