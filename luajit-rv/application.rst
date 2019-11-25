===========================
 Port ``luajit`` to RISC-V
===========================

----------------------------------------
Motivation, first steps and perspectives
----------------------------------------

Abstract
========

There is a need for a lightweight tools for experiments with RISC-V
custom extensions. Adding support for custom instructions in
binutils/gcc/llvm is out of range for many hardware architects. LuaJIT
includes a small and powerful assembler: dynasm, accessible from
within Lua interpreter. Currently dynasm supports following 32 and 64-bit
instruction sets: x86, x64, ARM, PowerPC, and MIPS, and it is just
reasonable to extend this support to RISC-V.

Lua itself is a very compact and simple yet powerful dynamic language,
its JIT compiler (luajit) makes it one of the fastest, if not the
fastest, interpreted language, and it is used in many projects, so
having it running on RISC-V would have use besides the mere internal
need for experimental platform.

Short Description
=================

.. raw:: pdf

         PageBreak

Outline
=======

Project scope and first steps
-----------------------------

Motivation
----------

A tool to experiment with RISC-V extensions and custom instructions
without complexities of mainstream software development tools (bitutils,
gcc, llvm) -- I'm not a real software developer.

Project scope
-------------

- Lua 5.1, luajit 2.1 overview
- rv32/rv64
- dynasm
- interpreter/virtual machine
- jit
- gc
- bit manipulation ('B' extention and bitop in Lua 5.3)

Develpment platforms
--------------------

- spike (ISA simulator)
- rv64: SiFive Unleashed
- rv32: softcore CPU on FPGA

Benchmarks and baseline
-----------------------

Deviation
---------

Yet another Forth and yet another assembler
