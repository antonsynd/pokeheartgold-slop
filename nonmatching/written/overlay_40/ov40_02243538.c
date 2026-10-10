typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_02243538 {
    u8 filler_000[0x1F4];
    s32 unk_1F4;        // 0x1F4
} UnkStruct_ov40_02243538;

// The asm calls through the table with r0 = the struct and leaves the loaded pointer in r1,
// the byte offset of the table entry in r2 and the caller's r3 in r3.
extern s32 (*const ov40_02245C18[])(UnkStruct_ov40_02243538 *p, u32 fn, u32 offset, u32 callerR3);

void ov40_02243F88(UnkStruct_ov40_02243538 *p);

s32 ov40_02243538(UnkStruct_ov40_02243538 *p)
{
    u32 callerR3;
    s32 result;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    result = ov40_02245C18[p->unk_1F4](p, (u32)ov40_02245C18[p->unk_1F4], (u32)p->unk_1F4 * 4, callerR3);
    if (result == 0) {
        ov40_02243F88(p);
    }
    return result;
}
