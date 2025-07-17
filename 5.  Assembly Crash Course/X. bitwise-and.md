In this level, you will be working with bit logic and operations. This will involve heavy use of directly interacting with bits stored in a register or memory location. You will also likely need to make use of the logic instructions in x86: `and`, `or`, `not`, `xor`.

Bitwise logic in assembly is yet another interesting concept! x86 allows you to perform logic operations bit by bit on registers.

For the sake of this example, say registers only store 8 bits.

The values in `rax` and `rbx` are:

- `rax = 10101010`
- `rbx = 00110011`

If we were to perform a bitwise AND of `rax` and `rbx` using the `and rax, rbx` instruction, the result would be calculated by ANDing each bit pair one by one, hence why it's called bitwise logic.

So from left to right:

- 1 AND 0 = 0
- 0 AND 0 = 0
- 1 AND 1 = 1
- 0 AND 1 = 0
- ...

Finally, we combine the results together to get:

- `rax = 00100010`

Here are some truth tables for reference:

- **AND**
    
    ```
    A | B | X
    ---+---+---
    0 | 0 | 0
    0 | 1 | 0
    1 | 0 | 0
    1 | 1 | 1
    ```
    
- **OR**
    
    ```
    A | B | X
    ---+---+---
    0 | 0 | 0
    0 | 1 | 1
    1 | 0 | 1
    1 | 1 | 1
    ```
    
- **XOR**
    
    ```
    A | B | X
    ---+---+---
    0 | 0 | 0
    0 | 1 | 1
    1 | 0 | 1
    1 | 1 | 0
    ```
    

Without using the following instructions: `mov`, `xchg`, please perform the following:

Set `rax` to the value of `(rdi AND rsi)`


Extracting binary code from provided ELF file...
Executing your code...
---------------- CODE ----------------
0x400000:       xor     rax, rax
0x400003:       and     rdi, rsi
0x400006:       or      rax, rdi
--------------------------------------
