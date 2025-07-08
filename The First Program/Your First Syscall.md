A syscall is when a program asks the operating system to do something it can't do by itself
like exiting, printing, or opening a file.
60= syscall for exit

where we have to use the word syscall whenever we want to invoke a syscall

Your programs "interact" with the CPU using assembly instructions such as the `mov` instruction you wrote earlier. Similarly, your programs interact with the operating system (via the CPU, of course) using the `syscall`, or _System Call_ instruction.

There are a lot of different system calls your program can invoke. For example, Linux has around 330 different ones, though this number changes over time as syscalls are added and deprecated. Each system call is indicated by a _syscall number_, counting upwards from 0, and your program invokes a specific syscall by moving its syscall number into the `rax` register and invoking the `syscall` instruction. For example, if we wanted to invoke syscall 42 (a syscall that you'll learn about sometime later!), we would write two instructions:

```assembly
mov rax, 42
syscall
```


``` req 
In this challenge, we'll learn our first syscall: `exit`. The `exit` syscall causes a program to exit. By explicitly exiting, we can avoid the crash we ran into with our previous program!

Now, the syscall number of `exit` is `60`. Go and write your first program: it should move `60` into `rax`, then invoke `syscall` to cleanly exit!
```