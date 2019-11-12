===================================================
 On-hardware debugging of IP cores with free tools
===================================================

Abstract
--------

An approach to challenges of an on-FPGA debugging of IP cores based on
free software tools is demonstrated. Various aspects and related problems
of an on-hardware debugging are presented along with the tools to
address them, such as OpenOCD, sigrok/PulseView, GHDL, etc.  Real-life
working configuration and missing bits of software are accompanied by
the live debug session demo running on Open-source Hardware.

Short description
-----------------

Debugging of hardware blocks on an FPGA is always challenging and may
be frustrating, especially with no reliable tools at hands. Way too
often the process turns into developing and debugging of the tools,
instead of a target design.

Commercial solutions are available (SignalTap, ChipScope, Synopsys
Identify RTL Debugger, MicroSemi Smart Debug), at the same time there
are a lot of well known problems associated with them: vendor lock,
single target, closed source and not always flexible enough, license
terms and costs.

Owing to free software developers essential tools for
on-hardware debugging of IP cores are available today.  However there
are problems associated with these tools too.  Among the most notable
ones are a weak integration between separate tools and small bits of
code and config files missing here and there. A working combination of
tools along with explanations of how they may be used together to
debug IP cores is provided.  A presentation covers such free
software as GHDL, sigrok/PulseView, and OpenOCD.  Source code of free
IP cores, all configuration and script files and presentation slides
will be available in a dedicated repository on github.

A live demonstration of the PulseView connected to an in-FPGA
logic analyzer via JTAG interface and working in parallel with a gdb
debug session on a RISC-V soft-core CPU in the same FPGA with an
open and low-cost hardware will be presented.

An outline of the open tasks and possible future development
directions concludes the presentation.

.. raw:: pdf

         PageBreak

Outline
-------

Simulation first
================

- because it is easier than debugging on hardware and is closer to
  software development
- ghdl
- unit test for the hardware (VPI, Python cototb, Lua busted)

Connecting to a hardware
========================

- ad-hoc interfaces
  - UART/FTDI 232
  - FT245
  - SPI

- JTAG
  - IEEE Std 1149.1, 1149.7
  - OpenOCD
  - USB-JTAG... there are many

- SpaceWire

On-chip instrumentaion
======================

- IEEE Std 1687-2014

How to make it usable and look nice
===================================

- sigrok pulseview

Combining Hardware and Software Debugging
=========================================

- gdb and pulseview sharing the same JTAG connection
  to a target
