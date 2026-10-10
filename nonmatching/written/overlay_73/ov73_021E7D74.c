typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

void MI_CpuFill8(void *dst, u8 data, u32 size);
s32 *ov73_021E7D54(s32 index, s32 *list, void *arg);
void ov73_021E7CD8(void *a, void *b, s32 value, void *c);
void SaveSubstruct_UpdateCRC(u32 id);

// The asm indexes a 16-byte stack table with an unchecked index. Past the table it runs into the
// frame's saved r4-r7/lr and then the caller's stack, so the same bytes are modelled here.
typedef union {
    u8 b[36];
    u32 w[9];
} Ov73CountBuf;

void ov73_021E7D74(void *a, void *b, s32 count, s32 skip, s32 *listArg, void *arg6, void *arg7)
{
    s32 *list = listArg;
    Ov73CountBuf buf;
    u32 entrySp;
    s32 j = 0;
    s32 i;
    s32 k;
    s32 offset;
    u8 *counts;

    // The prologue clobbers r4 right away (it is the first register pushed, just below the frame pointer slot).
    buf.w[4] = ((u32 *)__builtin_frame_address(0))[-2];
    __asm__ volatile("movs %0, r5" : "=l"(buf.w[5]) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(buf.w[6]) : : "cc");
    __asm__ volatile("mov %0, lr" : "=l"(buf.w[8]) : : "cc");
    buf.w[7] = *(u32 *)__builtin_frame_address(0);
    entrySp = (u32)__builtin_frame_address(0) + 8;
    counts = buf.b;

    MI_CpuFill8(counts, 0, 0x10);

    for (i = 0; i < count; i++) {
        if (list[i] != 0) {
            offset = 0;
            for (k = 0; k < 4; k++) {
                for (;;) {
                    u8 *cp = (j < 36) ? &counts[j] : (u8 *)(entrySp + (j - 36));
                    if (list[j] == 0 || j == i || *cp == 4) {
                        j = (j + 1) % count;
                        continue;
                    }
                    break;
                }
                {
                    u8 *cp = (j < 36) ? &counts[j] : (u8 *)(entrySp + (j - 36));
                    *cp = *cp + 1;
                }
                if (j != skip) {
                    s32 *p = ov73_021E7D54(j, list, *(void **)(entrySp + 4));
                    if (p != 0) {
                        ov73_021E7CD8(a, b, p[j] + offset, *(void **)(entrySp + 8));
                    }
                }
                offset += 0x48;
            }
        }
    }
    SaveSubstruct_UpdateCRC(0x17);
}
