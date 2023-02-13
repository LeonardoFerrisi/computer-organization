# Topics:
* Subroutines continued
* The stack

# Subroutines
* jal / jr
* stack
* conventions

## Types of Subroutines
* Leaf Subroutine
    * No other subroutine calls

* Non-Leaf Subroutine 
    * Calls Subroutines

**Examples**:

* Example 1:
    * Psuedocode

            int min3(int x, int y, int z)
                {
                    int min = x
                    if y < min:
                        min = y
                    if z < min:
                        min = z
                    return min
                }

    * Assembly

            min3:   
                    move $t0 $a0
                    slt $t1 $a1 $a0
                    beq $t1 $0 if1
                    move $t0 $a1

            if1:    
                    slt $t2 $a2 $t0
                    beq $t2 $0 returnmin
                    move $t0 $a2
            
            returnmin:    

                    jr $ra

* Continued from Example 1:

    * Preconditions

            a = 3
            b = 2
            c = 1
            d = min3(a,b,c)

    * Assembly

            li $s0 3
            li $s1 2
            li $s2 1


            # Move arguments into registers

            move $a0 $s0
            move $a1 $s1 
            move $a2 $s2


            # Jump and link, with the assumption that the returned value 
            # should use registers

            jal min3
            
            move $s4 Sv0


* Example 2

    * Preconditions

            d = min(3,2,1)
            a = d + 5
            b = min(5, 6, 7)

    * Compiled in Assembly

            # Load Arguments for `d` into $a registers
            li $a0 3
            li $a1 2
            li $a2 1

            jal min3
            move $s4 $v0

            addi $s0 $s4 5

            li $a0 5
            li $a1 6
            li $a2 7

            jal min3
            move $s1 $v0


* Reminder from previous class

        jal <label>

        $RA <--- PC + 4
        $PC <--- label

        jr $ra 
        $PC <--- $RA


### Restructured Variant of MIN3

* Preconditions

    * min2 function

            min2:

                $v0 <--- min(a0, a1)
                jr $ra

* Psuedocode

        int min3(int x, int y, int z)
            {
                mymin = min(x,y)
                mymin = min(mymin, z)
                return mymin
            }

* Assembly

        min3: 
            jal min2        # jump and link args to min2
            move $t0 $v0
            move $a0 $t0
            move $a1 $a2
            jal min2

            lw $RA 0($sp)   # Now loading from stack
            add $sp $sp 4   # Move stack pointer down by 4 to next item

            jr $ra

*What if we want to call **min3** from main?*

* Assembly

        main:
            li $a0 3
            li $a1 2
            li $a2 1
            jal min3
            move $s4 $v0    #PC + 4


***Where do we store temporary varaiables / data during subroutine calls?***

# THE STACK

*What is the stack?*

* **The stack is a safe place of unallocated memory where we can safely stash things**
* **Is always pointing to a special register `$sp`**
* `$sp` is always pointing to the `top` of the stack

## Mechanisms of usage for the stack
* `Push`
            
        addi $sp $sp -4
        sw <what we want to store> 0($sp)

* `Pop`

        lw <what we want to load> 0($sp)
        addi $sp $sp 4

**What is the stack most essential for?**

Subroutines that call other subroutines.

AKA....

# **RECURSION**



