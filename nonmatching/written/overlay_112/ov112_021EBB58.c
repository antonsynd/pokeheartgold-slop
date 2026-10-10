/* The state functions take only the work pointer; r1-r3 are passed exactly as
   the asm leaves them at the blx (the function pointer, the table offset and
   the caller's untouched r3). */
typedef int (*UnkFunc_ov112_021EBB58)(void *work, void *self, int offset, int r3);
extern UnkFunc_ov112_021EBB58 ov112_021FF740[];
void ov112_021EA864(void *work);

int ov112_021EBB58(unsigned char *work, int r1, int r2, int r3) {
    int offset = *(int *)(work + 8) * 4;
    UnkFunc_ov112_021EBB58 func = *(UnkFunc_ov112_021EBB58 *)((unsigned char *)ov112_021FF740 + offset);
    *(int *)(work + 8) = func(work, (void *)func, offset, r3);
    if (*(int *)(work + 8) == 0x23) {
        *(int *)(work + 8) = 0;
        return 3;
    }
    ov112_021EA864(work);
    return 2;
}
