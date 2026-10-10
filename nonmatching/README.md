# Non-matching C for functions still in asm/

C for functions that are still assembly in `asm/`. It is **not matching**: it does not compile to the
retail bytes with mwccarm. It lives outside `src/`, so the build and the ROM are unchanged. Use it as a
starting point for matching: move a function into its file under `src/`, then match it.

Each function was checked against the game's own machine code. The C was compiled with clang for the
ARM9 in Thumb mode. Both it and the original from the ROM were lifted to native code and run side by
side on 2,000 random inputs, and these were compared:

- the return value, at its declared width;
- every memory write outside the stack frame;
- each call's target and arguments;
- the bytes of any table the C defines, against the ROM's copy.

`VERIFIED.tsv` gives each function's result. `PASS` means every trial that finished agreed. `FAIL`
means the check found a difference, or could not model the function; the file's `.notes.md` says
which. The notes also record struct layouts recovered from the asm, and header declarations that
disagree with it.

`ghidra/` holds one file per function, in a folder per asm file. These were made without a person or a
model in the loop: Ghidra decompiled the function, a script made its C compile on its own (Ghidra's
types, prototypes for what it calls, and a link name for each address it uses), and the file was kept
only if it passed the check above, on 500 random inputs rather than 2,000. The `.arities.json` beside a file tells the check how many
arguments each callee takes. This C reads as Ghidra writes it, with raw offsets and casts. Ghidra was
given the prototypes HeartGold's own C declares, so calls pass narrow arguments as the game's compiler
did; a few functions read a register on entry (`unaff_r6`, `in_r2`) with one line of inline asm,
because the asm uses it without setting it.

`written/` holds one file per function, in a folder per asm file, for functions Ghidra's C got wrong.
A model wrote each one, starting from the function's Platinum twin, Ghidra's draft or the asm, and each
passed the check on 2,000 random inputs. Where the asm reads a register or stack slot it never set,
the C reads that register on entry rather than guessing a value.

Many functions started from their twins in pret/pokeplatinum (see issue #1).
