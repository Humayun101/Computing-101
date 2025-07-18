
In this level, you will be working with control flow manipulation. This involves using instructions to both indirectly and directly control the special register `rip`, the instruction pointer. You will use instructions such as `jmp`, `call`, `cmp`, and their alternatives to implement the requested behavior.

We will be testing your code multiple times in this level with dynamic values! This means we will be running your code in a variety of random ways to verify that the logic is robust enough to survive normal use.

We will now introduce you to conditional jumps--one of the most valuable instructions in x86. In higher-level programming languages, an if-else structure exists to do things like:

```plaintext
if x is even:
    is_even = 1
else:
    is_even = 0
```

This should look familiar since it is implementable in only bit-logic, which you've done in a prior level. In these structures, we can control the program's control flow based on dynamic values provided to the program.

Implementing the above logic with jmps can be done like so:

```assembly
; assume rdi = x, rax is output
; rdx = rdi mod 2
mov rax, rdi
mov rsi, 2
div rsi
; remainder is 0 if even
cmp rdx, 0
; jump to not_even code if it's not 0
jne not_even
; fall through to even code
mov rbx, 1
jmp done
; jump to this only when not_even
not_even:
mov rbx, 0
done:
mov rax, rbx
; more instructions here
```

Often though, you want more than just a single 'if-else'. Sometimes you want two if checks, followed by an else. To do this, you need to make sure that you have control flow that 'falls-through' to the next `if` after it fails. All must jump to the same `done` after execution to avoid the else.

There are many jump types in x86, it will help to learn how they can be used. Nearly all of them rely on something called the ZF, the Zero Flag. The ZF is set to 1 when a `cmp` is equal, 0 otherwise.

Using the above knowledge, implement the following:

```plaintext
if [x] is 0x7f454c46:
    y = [x+4] + [x+8] + [x+12]
else if [x] is 0x00005A4D:
    y = [x+4] - [x+8] - [x+12]
else:
    y = [x+4] * [x+8] * [x+12]
```

Where:

- `x = edi`, `y = eax`.

Assume each dereferenced value is a signed dword. This means the values can start as a negative value at each memory position.

A valid solution will use the following at least once:

- `jmp` (any variant), `cmp`


Extracting binary code from provided ELF file...
Executing your code...
---------------- CODE ----------------
0x400000:       mov     esi, dword ptr [edi]
0x400003:       cmp     esi, 0x7f454c46
0x400009:       jne     0x400019
0x40000b:       mov     eax, dword ptr [edi + 4]
0x40000f:       add     eax, dword ptr [edi + 8]
0x400013:       add     eax, dword ptr [edi + 0xc]
0x400017:       jmp     0x40003d
0x400019:       cmp     esi, 0x5a4d
0x40001f:       jne     0x40002f
0x400021:       mov     eax, dword ptr [edi + 4]
0x400025:       sub     eax, dword ptr [edi + 8]
0x400029:       sub     eax, dword ptr [edi + 0xc]
0x40002d:       jmp     0x40003d
0x40002f:       mov     eax, dword ptr [edi + 4]
0x400033:       imul    eax, dword ptr [edi + 8]
0x400038:       imul    eax, dword ptr [edi + 0xc]
