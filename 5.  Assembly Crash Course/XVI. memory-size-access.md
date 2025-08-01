Recall the following:

- The breakdown of the names of memory sizes:
    - Quad Word = 8 Bytes = 64 bits
    - Double Word = 4 bytes = 32 bits
    - Word = 2 bytes = 16 bits
    - Byte = 1 byte = 8 bits

In x86_64, you can access each of these sizes when dereferencing an address, just like using bigger or smaller register accesses:

- `mov al, [address]` <=> moves the least significant byte from address to `rax`
- `mov ax, [address]` <=> moves the least significant word from address to `rax`
- `mov eax, [address]` <=> moves the least significant double word from address to `rax`
- `mov rax, [address]` <=> moves the full quad word from address to `rax`

Please perform the following:

- Set `rax` to the byte at `0x404000`
- Set `rbx` to the word at `0x404000`
- Set `rcx` to the double word at `0x404000`
- Set `rdx` to the quad word at `0x404000`



Extracting binary code from provided ELF file...
Executing your code...
---------------- CODE ----------------
0x400000:       mov     al, byte ptr [0x404000]
0x400007:       mov     bx, word ptr [0x404000]
0x40000f:       mov     ecx, dword ptr [0x404000]
0x400016:       mov     rdx, qword ptr [0x404000]
--------------------------------------
