AreaDataManager_Load_pad is check-harness padding only (see the comment in the C): without it, trials
with the manager pointer just below the 0x02380000 blob base fail because the manager stores overwrite
the compiled function's literal pool. sprintf's r2/r3 are the registers ov01_021EA724 leaves behind
(read with inline asm). header[3] is read from an uninitialised stack buffer the NARC read would fill
(a recorded call here), so the check always takes the header[3] == 0 branch.
