typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef unsigned long long u64;

typedef struct UnkStruct_ov40_02242DF0_860 {
    u8 filler_000[0x4B0];
    u32 lo;             // 0x4B0
    u32 hi;             // 0x4B4
} UnkStruct_ov40_02242DF0_860;

typedef struct UnkStruct_ov40_02242DF0 {
    u8 filler_00[0x860];
    UnkStruct_ov40_02242DF0_860 *work; // 0x860
} UnkStruct_ov40_02242DF0;

void *ov40_0223D540(UnkStruct_ov40_02242DF0 *p);
u64 ov39_02227FEC(void *a);

void ov40_02242DF0(UnkStruct_ov40_02242DF0 *p, const s32 *param1)
{
    UnkStruct_ov40_02242DF0_860 *w = p->work;

    if (*param1 != 1) {
        u64 v = ov39_02227FEC(ov40_0223D540(p));
        w->lo = (u32)v;
        w->hi = (u32)(v >> 32);
    }
}
