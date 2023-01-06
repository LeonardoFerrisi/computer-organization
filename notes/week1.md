# What is a BIT?

*The 'smallest' unit of information we can represent* (ignore partial bits for now)
In Layman's terms, the **The answer to a Yes / No question**

### Examples:
- 0 or 1
- Yes or No

### Basic Usage:

You quantify the amount of things that can be represented with **Bits** by understanding that Binary is a Base-2 representation of information

*Ergo:*

- 5 bits results in 2^5 things possible to represent or 32 things


# Data are agnostic

What does this mean?

*It means they are general until otherwized specified*

# Representing with Bits
AKA: **Encoding**

You can use:
- Numbers
- Positive Integers

## Example:

*Positive Integers*

- 0000 -> 0
- 0001 -> 1
- 0010 -> 2
- 0011 -> 3

## Understanding Base - 2

0001 = 2^3 * 0 + 2^2 * 0 + 2^1 * 0 + 2^0 * 1 = 1

# Twos Complement



# Defintions:

* **Binary** : Composed of 2 states
* **Boolean**: True or False
* **Digital**: Composed of Discrete Elements
* **Analog** : Composed of Continous Elements

# 

#### *Day 2*

#### Agenda:
- Administrivia
- Lab
- Puzzle
- Binary Numbers
- Arithmetic

###### We discussed Micro HW assignments


# Binary Numbers

- Unsigned Integers
- Base 2
- Example: 2^3, 2^2, 2^1, 2^0


- Signed Two's Complement
- Lets you do negative numbers

# Decimal

- *Based* on bases

- Example: 10^5, 10^4, 10^3, 10^2, 10^1

#

## Puzzle

Binary input -> Decimal Output

**1011.0101** -> ?

4 places before decimal, 4 places after

* **1011** -> 2^3 * 1 + 2^2 * 0 + 2^1 * 1 + 2^0 * 1 = **11**
* **0101** -> 1/2 * 0 + 1/4 * 1 + 1/8 * 0 + 1/16 * 1 = **3125**

*Answer:* **1011.0101** -> **11.3125**

#

# Binary Mathematics

* Arithmetic
    - Addition
    - Subtraction


## 1 - Bit Addition

* 0 + 0 = 0  
* 0 + 1 = 1
* 1 + 0 = 1
* 1 + 1 = 0 **Cannot have more than 1 or 0**

*So what do we do for 1 + 1 in binary?*

**Remember that Binary is Base 2**

So 1 + 1 = 0, carry over 1. Where **10** would be **2**.

## 2 - Bit Addition

* 01 + 10 = 11
* 10 + 01 = 11
* 01 + 01 = 10 **Same as our 1 + 1** 
* 11 + 01 = 00 **Carry the one** --> 100 (equal to 4)

# Signed Binary - *Allowing Negative Numbers*

* 1011 -> 5
* 0001 -> 1

# Binary Addition

* like decimal w/ carriers
* works regardless of signed or unsigned!
