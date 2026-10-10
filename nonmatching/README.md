# Non-matching C for functions still in asm/

C for functions that are still assembly in `asm/`. It is **not matching**: it does not compile to the
retail bytes with mwccarm. It lives outside `src/`, so the build and the ROM are unchanged. Use it as a
starting point for matching: move a function into its file under `src/`, then match it.

Each function was checked against the game's own machine code. The C was compiled with clang for the
ARM9 in Thumb mode. Both it and the original from the ROM were lifted to native code and run side by
side on 2,000 random inputs, and these were compared:

- the return value, at its declared width;
- every memory write outside the stack frame;
- each call's target and the arguments it passes in registers (r0 to r3; arguments passed on the
  stack are not compared);
- the bytes of any table the C defines, against the ROM's copy.

`VERIFIED.tsv` gives each function's result. Every function still in `asm/` has verified C: here, or as the
unlinked C already in `src/`. As functions are matched, `twins.py prune` drops their rows and drafts. `PASS`
means every trial that finished agreed.
`PASS-BOUNDED` is weaker: no trial finished, because the function loops on a value the stubs never give
or never returns by design (a thread), so each side ran until it was out of cycles, and the calls both
made until then (at least eight, with their arguments) agreed; memory writes were not compared.
`PASS-RESTRICTED` means the check tried fewer inputs than the function takes (a declared type narrower
than the real one, or a path the stubbed callees never reach); the file's `.notes.md` says which. No
function is left at `FAIL`. Notes written while a function still failed keep the reason it did; a
`Status` section at their end says where its verified C is now. The notes also record struct layouts
recovered from the asm, and header declarations that disagree with it.

`ghidra/` holds one file per function, in a folder per asm file. These were made without a person or a
model in the loop: Ghidra decompiled the function, a script made its C compile on its own (Ghidra's
types, prototypes for what it calls, and a link name for each address it uses), and the file was kept
only if it passed the check above, on 500 random inputs rather than 2,000. The `.arities.json` beside a file tells the check how many
arguments each callee takes; for a callee HeartGold's C does not declare, that is the number of
arguments Ghidra's call passes, so an argument Ghidra missed is not compared. This C reads as Ghidra writes it, with raw offsets and casts. Ghidra was
given the prototypes HeartGold's own C declares, so calls pass narrow arguments as the game's compiler
did; a few functions read a register on entry (`unaff_r6`, `in_r2`) with one line of inline asm,
because the asm uses it without setting it.

`written/` holds one file per function, in a folder per asm file, for functions Ghidra's C got wrong.
A model wrote each one, starting from the function's Platinum twin, Ghidra's draft or the asm, and each
passed the check on 2,000 random inputs. Where the asm reads a register or stack slot it never set,
the C reads that register on entry rather than guessing a value.

Many functions started from their twins in pret/pokeplatinum (see issue #1).
