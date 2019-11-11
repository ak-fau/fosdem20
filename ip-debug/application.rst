================================================
 Debugging IP cores on-hardware with free tools
================================================

Abstract
--------

An approach to challenges of on-FPGA debugging of IP cores based on
free software tools is presented. Various aspects and related problems
of an on-hardware debugging are discussed along with the tools to
address them, such as OpenOCD, sigrok/PulseView, GHDL, etc.  Real-life
working configuration and missing bits of software are accompanied by
the live debug session demo running on Open-source Hardware.

Short description
-----------------

Debugging of hardware blocks on an FPGA is always challenging and may
be frustrating, especially with no reliable tools at hands. Way to
often the process turns into developing and debugging of the tools,
instead of a target design.

Commercial solutions are available (SignalTap, ChipScope, Synopsys
Identify RTL Debugger, MicroSemi Smart Debug), but there are all well
known problems associated with them: vendor lock, single target,
closed source and not always flexible enough, license terms and costs.

Thanks to the hard working and passionate developers of the free
software, all the essential tools are available today, but they are
not integrated well and there are small bits of code and configs are
missing here and there. In this presentation we will see what tools
are available and how to use them together to debug IP cores in
hardware.

A presentation covers such free software as GHDL, sigrok and
PulseView, OpenOCD.  Source code for free IP cores, all configuration
and script files and presentation slides will be available in a
dedicated repository on github.  An outline of the open tasks and
possible future development directions concludes the presentation.

A live demonstration of the PulseView connected to an in-FPGA
logic analyzer via JTAG interface and working in parallel with a gdb
debug session on a RISC-V soft-core CPU in the same FPGA with a
low-cost and Open-Source Hardware will be presented.

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
