The CPU thinks in very simple terms. It moves data around, changes data, makes decisions based on data, and takes action based on data. Most of the time, this data is stored in _registers_.
run *lscpu* command to see cpu arch.
	 for x86_64, there are 16 GRP  
	 `RAX`, `RBX`, `RCX`, `RDX`, `RSI`, `RDI`, `RBP`, `RSP`,  
	**plus** 8 new ones: `R8` to `R15`.

In this challenge, we will learn about our first one: `rax`.
You _move_ data into `rax` with the `mov` instruction. Instructions are specified as an _operator_ (in this case, `mov`), and _operands_, which represent additional data (in this case, it will be the specification of `rax` as a destination, and the value we will want to store there).

For example, if you wanted to store the value `1337` into `rax`, the x86 Assembly would look like:

```assembly
mov rax, 1337
```
You can see a few things:

1. The destination (`rax`) is specified _before_ the source (the value `1337`).
2. The operands are separated by a comma.

```Req
In this challenge, you will write your first assembly. You must move the value `60` into `rax`. Write your program in a file with a `.s` extension, such as `rax-challenge.s` (while not mandatory, `.s` is the typical extension for assembly files), and pass it as an argument to the `/challenge/check` file (e.g., `/challenge/check rax-challenge.s`). You can use either your favorite text editor or the text editor in pwn.college's VSCode Workspace to implement your `.s` file!
```
