# Verilog Fundamentals & Design Reference

This repository serves as a comprehensive collection and study guide for
**Verilog HDL** (Hardware Description Language), covering everything
from fundamental syntax and modeling styles to advanced concepts like
sequential circuits, memory design, tasks, functions, and testbenches.

Based on the [Mastering Verilog in 1 Hour
Guide](https://www.youtube.com/watch?v=YUB-OyGr1oA), this document
provides an overview of the key concepts required to design, simulate,
and synthesize digital integrated circuits.

## 1. Introduction to Verilog HDL

Verilog is a Hardware Description Language used to model digital systems
through code.

-   **Design & Simulation:** Write functional code, apply stimulus, and
    observe waveforms to verify correctness before hardware
    implementation.
-   **Synthesis:** Convert high-level descriptions into gate-level
    netlists that map directly to silicon logic gates (ASICs/FPGAs).

## 2. Basic Syntax & Module Structure

A Verilog module encapsulates functionality, starting with the `module`
keyword and ending with `endmodule`.

``` verilog
module and_gate (
    input wire a,
    input wire b,
    output wire c
);
    // Logic implementation
    assign c = a & b;
endmodule
```

## 3. Data Types & Operators

-   **Net Types (`wire`):** Represents physical connections. Defaults to
    high-impedance (`z`). Used primarily for inputs and continuous
    assignments.
-   **Variable Types (`reg`):** Represents data storage elements.
    Defaults to unknown (`x`). Used inside procedural blocks (`always`,
    `initial`).
-   **Other Types:** `integer` (32-bit signed) and `real`
    (floating-point).
-   **Operators:** Includes bitwise (`&`, `|`, `~`), logical (`&&`,
    `||`, `!`), arithmetic (`+`, `-`, `*`), relational, shift, and
    concatenation/replication operators.

## 4. Assignment Styles: Continuous vs. Procedural

  -----------------------------------------------------------------------
  Feature                 Continuous Assignment   Procedural Assignment
  ----------------------- ----------------------- -----------------------
  **Keyword / Block**     `assign`                `always`, `initial`

  **Target Type**         Left-hand side          Left-hand side
                          traditionally uses a    traditionally uses a
                          net such as `wire`      variable such as `reg`

  **Execution**           Evaluated continuously  Triggered by events in
                          when inputs change      the sensitivity list or
                                                  procedural flow
  -----------------------------------------------------------------------

## 5. Modeling Styles

1.  **Gate-Level Description (Lowest Level):** Uses built-in logic gate
    primitives (e.g., `and`, `not`, `or`).
2.  **Data Flow Description:** Uses expressions and continuous
    assignments (e.g., conditional/ternary operators like
    `y = (select) ? b : a;`).
3.  **Behavioral Description (Highest Level):** Describes functionality
    using algorithmic constructs like `if-else`, `case`, and loops
    (`for`, `while`).

## 6. Sequential Circuits & Reset Types

Sequential designs (such as D, T, SR, and JK flip-flops) utilize clock
edges and reset mechanisms.

-   **Synchronous Reset:** Reset condition is evaluated on the active
    clock edge.
-   **Asynchronous Reset:** Reset condition acts independently of the
    clock signal, clearing the output immediately when asserted.

## 7. Blocking vs. Non-Blocking Assignments

-   **Blocking (`=`):** Executes sequentially (line-by-line). Later
    statements wait for the current statement to execute.
-   **Non-Blocking (`<=`):** Schedules updates so that multiple
    assignments can occur without the race conditions commonly
    associated with blocking assignments. It is the standard choice for
    clocked sequential RTL.

## 8. Submodule Instantiation

Complex systems (like processors or arithmetic logic units) are built by
instantiating lower-level modules inside a top-level module (e.g.,
building a full adder using two half adders and an OR gate).

``` verilog
half_adder h0 (.sum(sum1), .carry(carry1), .a(a), .b(b));
```

## 9. Testbenches & Clock Generation

Testbenches provide test vectors (stimulus) to the Design Under Test
(DUT).

-   **Time Scale:** Defined via `` `timescale 1ns/1ps `` to specify
    delay units and precision.
-   **Clock Generation:** Created using `always` or `forever` blocks to
    toggle signals at specified intervals.

## 10. Arrays & Parameterized Modules (RAM Design)

-   **Arrays:** Single-dimensional arrays can represent memories or sets
    of registers, while multi-dimensional arrays can represent rows and
    columns.
-   **Parameters:** Allow modules to be scaled dynamically (e.g.,
    adjusting data width or address depth for flexible RAM
    architectures).

## 11. Tasks vs. Functions

  -----------------------------------------------------------------------
  Feature                 Task (`task`)           Function (`function`)
  ----------------------- ----------------------- -----------------------
  **Time Delays**         Can contain simulation  Traditionally zero-time
                          delays/timing controls  execution; timing
                                                  controls are not
                                                  permitted in
                                                  synthesizable-style
                                                  functions

  **Inputs / Outputs**    Can have multiple       Primarily accepts input
                          input, output, and      arguments and returns a
                          inout arguments         value

  **Usage**               Reusable blocks for     Used for calculations
                          complex procedural      and reusable
                          operations              combinational-style
                                                  operations
  -----------------------------------------------------------------------

## 12. Compiler Directives

Directives evaluated during compilation include:

-   `` `define ``: Defines macros and constants.
-   `` `include ``: Embeds external files into the source code.
-   `` `ifdef `` / `` `ifndef ``: Enables conditional compilation.
-   `` `timescale ``: Sets simulation time units and precision.
