Please perform the following:

- Place the value stored at `0x404000` into `rax`.
- Increment the value stored at the address `0x404000` by `0x1337`.

Make sure the value in `rax` is the original value stored at `0x404000` and make sure that `[0x404000]` now has the incremented value.


---------------- CODE ----------------
0x400000:       mov     rax, qword ptr [0x404000]
0x400008:       mov     rbx, qword ptr [0x404000]
0x400010:       add     rbx, 0x1337
0x400017:       mov     qword ptr [0x404000], rbx
--------------------------------------

