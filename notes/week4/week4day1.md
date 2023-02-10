# Week 4 - Day 1

## *Topic*

# -----------------------------------------------------

## MIPS ( Multiprocessor without Interlocked Pipeline Stages ) Processor:

**RISC**: Reduced Instruction Sets

*MIPS* is a RISC Processor

**Where CISC is Complex Instruction Sets**

Some features of RISC processors:

    - Simple Architecture
    - High Clock Rates
    - Instructions
        - 2 Operands
        - 1 Results


### Why do we care about the **MIPS** Processor?

- It is a 32-bit processor

- ALU takes in and outputs 32 bit values
- Register File takes in 32 bit values

- 32 Registers - **More Cowbell Principle**

# 

Register $0 is always 0




# C Code to Assemby Example

x = 3     :: ADDI $S1 $0   3 **x is stored at $S1**
y = x + 3 :: ADDI $S2 $S1  3 **y is stored at $S2**
z = x + y :: ADD  $S3 $S1 $S2 

z = ( x + y ) + z - 3  :: ADD $S3 $S3 $S3 **How do we subtract?**


# 

# Data Memory

Data Memory is far simpler than the File Register