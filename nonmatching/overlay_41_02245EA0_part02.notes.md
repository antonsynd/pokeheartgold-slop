# overlay_41_02245EA0 part 02

- ov41_0224683C (char loader) and ov41_0224689C (palette loader) do not pass. The gate reports one rare trial (1275 and 232, both with a huge count argument and the 512-call cutoff) where the memory at the struct counter (+0x0C, +0x18) and the return register differ. Typical trials agree.
- Tried: plain loop, volatile counters, a volatile struct pointer, u32 array element types, and evaluating the call before the index read. None cleared the rare trial.
- The loops write through a pointer array that can alias the struct itself, so the order of the element store and the counter reload matters. Likely cause is an aliasing or call-ordering detail that the -O0 build does not reproduce, but I did not confirm it.
