When a program ends, it gives the system an **exit code** — a number that tells the OS (and any script or program that ran it) **how it ended**.

- **`0`** usually means: ✅ success
    
- **Any other number** (like 1, 42, 255, etc.) means: ❌ something specific happened
    

This exit code is **passed to the OS using a register** — specifically:  
👉 **`rdi` holds the exit code**  
👉 **`rax = 60` tells the OS you want to exit**

### So to exit with code 42, your program should:
mov rdi, 42      ; Set exit code
mov rax, 60      ; Tell the OS: I want to exit
syscall          ; Do it

Then you do a **`syscall`** to actually ask the OS to perform the exit.
In this challenge, you must make your program exit with the exit code of `42`. Thus, your program will need three instructions:

1. Set your program's exit code (move it into `rdi`).
2. Set the system call number of the `exit` syscall (`mov rax, 60`).
3. `syscall`!

Now, go and do it!
fun fact: in nerd culture, **42 is "The Answer to Life, the Universe, and Everything"** from _The Hitchhiker’s Guide to the Galaxy_