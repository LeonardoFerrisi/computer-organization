# Data Types

## What is a BIT?

*The 'smallest' unit of information we can represent* (ignore partial bits for now)
In Layman's terms, the **The answer to a Yes / No question**

### Examples:
- 0 or 1
- Yes or No

### Basic Usage:

You quantify the amount of things that can be represented with **Bits** by understanding that Binary is a Base-2 representation of information

*Ergo:*

- 5 bits results in 2^5 things possible to represent or 32 things


## Data are agnostic

What does this mean?

*It means they are general until otherwized specified*

## How we represent data, is important

[Coin example using proper Logarithm]

## Representing with Bits
AKA: **Encoding**

You can use:
- Numbers
- Positive Integers

### Example:

*Positive Integers*

- 0000 -> 0
- 0001 -> 1
- 0010 -> 2
- 0011 -> 3

# Binary

## Understanding Base - 2

    0001 = 2^3 * 0 + 2^2 * 0 + 2^1 * 0 + 2^0 * 1 = 1

*Better Visualization*:

|Binary Value| 0    | 0   |  0  |  1 |
|------------|------|-----|-----|----|
| Twos Place |2^3   |2^2  | 2^1 |2^0  |
| Result     |0 * 8 | 0*4 | 0*2 | 1 *1 |


## Sign and Magnitude Notation

* Sign (Negative or Positive) is the **left-most** bit

**Potential Issues**:
* Can result in problems because you waste one possible value of representation


## Twos Complement

* **Most signed integers are represented in this manner**
* More efficient usage of bits
* First bit is still sign, but a value of all 1s is **-1**, this value when added to it's compliment is **always** zero

**Example**

    1111 = -1
    0001 = 1

        1111
        0001
    + ______
      1 0000
    
    *We ignore the carry over

    Result is 0

* If you flip the bits of a negative Two's Compliment number and add one, **you can determine the negative value being represented**

**Remember**!

To find the value of a negative number:

1. Flip all bits
2. Add one

**Example**

    1111 = ?

    0000 = flipped version

    0000 + 1 = 0001
    0001 = 1

    Therfore...
    1111 = -1

    -------------------

    1011 = ?

    0100 = flipped version

    0100 + 1 = 0101
    0101 = 5

    Therfore...
    1011 = -5

# Binary Math

## Addition

### **Basic Concepts**

    0 + 0 = 0
    1 + 0 = 1
    1 + 1 = 0 ( carry over 1 )

* When a summation is made that exceeds the amount of bits availble, the result of the operation is whatever value exists within the amount of bits you have available

**Example**

        1011        (11)
        0101        (5)
    + ______
    1   0000        (16, which would be 10000 )

    We keep the 4-bit value of 0000, the carry over is not used as the output as we cannot represent 16 with 4-bits

*Note*: In computers, when doing addition - **the bit-width of all numbers you are adding together must be the same**

### **Signed Examples**

        1011        (-5)
        0001        (1)
    + ______
        1100        (-4)  --> 0011+1 = 0100 = 4, hence 1100 = -4

### **Multi-Bit Addition**

[Insert Image of Half-Adder]

[Insert Image of Full-Adder]

### **Takeaways**
* Carry over values just like with decimal addition ( think to base-10 addition when two values add to a value over 10)
* Works regardless of whether numbers are signed or not

## Subtraction

**Similar to Addition, except we can use the left-most 1s**

* When using the reverse carry in, use the left-carried 1 in output

**Example**:

* Unsigned 


            1 0 0 0             (8)
            0 0 0 1             (1)
        - __________          - ___
            0 1 1 1             (7)

* Signed

            0 1 0 1             (5)
            0 0 1 0             (2)
        - _________           - ___
            0 0 1 1             (3)

* Okay, this is confusing as f**k. Theres got to be a better way

### **Better Binary Subtraction**

What if, **instead** we used the laws of Binary Addition, for Binary Subtraction

**Remember**

    A - B == A + (-B)

**So with Binary Subtraction the rule can become**

    A - B == A + (-B)

    Where B --> (-B) = (not B)
    Where (-B) = ( not B ) + 1

    A - B == A + (not B) + 1

    **Note**: Represent one in binary

**Example**:

* Signed (Twos Compliment)

            0 1 0 1 --> A ----------------> 0 1 0 1
            0 0 1 0 --> B --> -B + 0001 --> 1 1 1 0 
        - _________                       + ________

            becomes

            0 1 0 1                     (5)
            1 1 1 0                     (-2)
        + _________                   + ____
            0 0 1 1                      (3)


# Defintions:

* **Binary** : Composed of 2 states
* **Boolean**: True or False
* **Digital**: Composed of Discrete Elements
* **Analog** : Composed of Continous Elements