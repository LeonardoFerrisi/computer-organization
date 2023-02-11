# New Assembly Commands

| Command | Meaning                          | Syntax | Example |
|---------|----------------------------------|-----------------|------|
| slt     | Store if Less Than               |   slt `<store addr>` `<address>` `<comparison addr>`   |
| sgt     | Store if Greater Than            |        |
| blt     | Branch if Less Than              |        |
| bne     | Branch if Not Equal              |        |
| beq     | Branch if Equal                  |        |
| ble     | Branch if Less Than or Equal To  |        |
| jal     | Jump and Link                    |        |
| j       | Jump                             |        |
| move    | Move                             |        |

#

## How Branch and Jump really work (Data Paths)

text

# More Assembly, Subroutines

*A reminder of the syntax*

**branch**:

    beq $s0 $s1 foo
    bne

**jump**:

    j foo

**Notes**:
* Branch is more computationaly more expensive than jump
* For now we are assuming all instructions take a single clock cycle

#

## Different implementations of a loop in Assembly:

Where:
    
    li = load immediate (psuedo code for addi into register) 

**Example 1**:

Assembly Code (*of a loop*) :

    li $t0 10                     # load immediate value `10` into register $t0

    test:   beq $t0 $0 end
            ( mystery code )
            addi $t0 $t0 -1
            j test

    end: 
            ( mystery code )

**Example 2**

    li $t0 10

    j test

    body:   ( mystery code )
            addi $t0 $t0 -1
    
    test:   bne $t0 $0 body


#

# Subroutines

### **Subroutine Convention**:

**Caller ( main )**:

* arguments go into $a0 .... $a3
* look for return value in $v0, $v1 ...

**Callee ( function ):**

* args are in $ a0 ... $a3
* return values are in $v0, $v1 ...
* DO NOT MESS with $S registers


# 

**Example**

    main:   ________
            ________
            ________
            jal foo
    --->

    foo: 





# Additional Notes
* There is only ever pass by value in assembly code

# Additional Topics
* The Stack
* Recursion
* Subroutines
* Data Paths 