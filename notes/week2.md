# Week 2

## Day 3

Starting off with the coin problem

The minimum divides of 64 coins to find the dud is 4.

By splitting into 3 piles.

#### Agenda
- Administrivia
- Spotify
- Group Activity
- Binary Arithametic
- Addition
- Subtraction
- Logic

### Binary Additon

2-Bit addition carries 2 bits of information**

### Multi-Bit

   *1 *1
    0 1 1 0      =  4 + 2 = 6
+   0 0 1 1      =  2 + 1 = 3
___________
    1 0 0 1      =  8 + 1 = 9

**But is this the correct SIGNED TWOS-COMPLIMENT NUMBER?**
>>  No. Why Not?

### Multi-bit addition, with SIGNED TWOS-COMPLIMENT

    0 1 1 0      = 
+   0 0 1 1      =  
___________
    1 0 0 1      =  

1 0 0 1 -> *flip bits* -> 0110

---> 0 1 1 0 --> -7
   +       1
   _________
     0 1 1 1 --> +7


### The Half-Adder

A - (           ) - Result
B - (           ) - CarryOut


### The Full-Adder

      A - (           ) -  Result
      B - (           ) 
CarryIn - (           ) -  CarryOut


### More notes:

All ones is ALWAYS -1 in TWOS-COMPLIMENT

##### Twos - Compliment SIGNED

1 1 1 1 = -1 --> *Why?* Because adding 1 to 1111 = 0000 with an extra one, ergo -1 + 1 = 0

So basic table: **With 4 bits the max we can get is 7 and minimum we can get is -8**

# Reference of Signed Binary
    1 1 1 1 = -1
    1 1 1 0 = -2
    1 1 0 1 = -3 
    1 1 0 0 = -4
    1 0 1 1 = -5
    1 0 1 0 = -6
    1 0 0 1 = -7
    1 0 0 0 = -8
-------------
    0 0 0 1 = 1
    0 0 1 0 = 2
    0 0 1 1 = 3
    0 1 0 0 = 4
    0 1 0 1 = 5
    0 1 1 0 = 6
    0 1 1 1 = 7

# Subtraction with Binary

### Unsiged Example

*Carry over in reverse direction*

         / *1
      0 1 1 0
    - 0 0 0 1
    __________
    0 1 0 1

# 

        / *1
            / *1
        0 1 1 0
    -   0 0 1 1
    ____________
        0 0 1 1

#

        1 0 1 0 
    -   0 0 1 1
    ____________
        0 1 1 1 


### Signed Example

*With Two's Compliment*

    0 0 1 1  =  3
    - 1 1 1 0  = -2
    __________
    0 1 0 1  =  5


  *How?*

  Borrow from the *Next* one
  Example: 0000 has a fifth bit - the **1** --> 1 0 0 0 (*otherwise it is just 0 0 0 0 = 0*)


### Okay, now the easy way

    A - B **is the same as** A + -B

*We can TURN subtration into addition with a negative number*

**How to change sign on a value**

To turn B into -B --> Flipping all the BITS in B, and add 1

So.... 
    
    A - B **is the same as** A + (Flipped B + 1)




<!-- ### Some practice with this concept:

      0 1 1 1
    - 1 1 0 1
    __________
      
      V
      V
    
      0 1 1 1
    + 0 0 1 1
    __________
    0 1 1 0 0 -->

**So how does a circuitry work out with this?**



        