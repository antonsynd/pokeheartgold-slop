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

Many functions started from their twins in pret/pokeplatinum (see issue #1).
