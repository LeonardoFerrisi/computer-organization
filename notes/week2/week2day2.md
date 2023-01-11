# Week 2: Day 2
## Day 4
#

## How do programs go from code into something we execute?

1. We start out with code. The **source code**
2. The source code is compiled
3. The compiled code is then *converted* into **assembly language**
4. *assembler* -> converts to bits
5. *linker*
6. **Program is executable**

## Hexadecimal Code

A base 16 way of converting 4-bit values to Hexadecimal digits

Converts a **4-bit value** *(nibble)* -> 0xCharChar...

### Example:

*Basic Syntax for Binary to Hex Conversion*

    1  -> 0b0000 -> 0x0
    2  -> 0b0001 -> 0x1
    3  -> 0b0010 -> 0x2
    ...
    9  -> 0b1001 -> 0x9
    10 -> 0b1010 -> 0xA
    ...
    16 -> 0b1111 -> 0xF


What if we are utilizing decimal values great than 16? (cannot be represented with **just** 4-bits)

**Split it into 4s**

    0110 1111 1010 0001

    6     F    A    1

    0b0110111110100001 -> 0x6FA1

What if we have a binary number that is not divisible by 4?

**You can pad**

    110 1111 1010 0001

            V

    0110 1111 1010 0001

    6     F    A    1

    0b0110111110100001 -> 0x6FA1


## Exercises

**0111 + 0111**

### Unsigned

    1110 -> No Overflow

### Signed

    Overflow

    **Biggest (postive) 4-bit 2s - compliment num is 7**

#

**1100 + 1100**

### Unsigned

    Overflow

### Signed

    1000 -> No Overflow


## **How to tell if there will be an Overflow?**

### For Unsigned

    Carryout from the Most Significant Bit

### For Signed



## Digital Logic Gates

- OR
- AND
- XOR
- NOT


### OR

| A | B | OR |
|---|---|----|
| 0 | 0 |  0 |
| 1 | 0 |  1 |
| 0 | 1 |  1 |
| 1 | 1 |  1 |

~ Note! Include OR symbol

### AND

| A | B | AND|
|---|---|----|
| 0 | 0 |  0 |
| 1 | 0 |  0 |
| 0 | 1 |  0 |
| 1 | 1 |  1 |

~ Note! Include AND symbol

### XOR

| A | B | XOR |
|---|---|-----|
| 0 | 0 |  0  |
| 1 | 0 |  1  |
| 0 | 1 |  1  |
| 1 | 1 |  0  |

~ Note! Include XOR symbol

## Half-Adder

    A - (  ) - Sum
    B - (  ) - CarryOut


| A | B | SUM | Cout |
|---|---|-----|------|
| 0 | 0 |  0  |  0   |
| 1 | 0 |  1  |  0   |
| 0 | 1 |  1  |  0   |
| 1 | 1 |  0  |  1   |