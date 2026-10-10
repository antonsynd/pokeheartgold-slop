typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;
typedef signed long long s64;

extern const s16 FX_SinCosTable_[];
s32 ov91_0225E6F8(void *p);
u16 FX_Atan2Idx(s32 y, s32 x);
void sub_020182E0(void *p, u32 a, u32 b);

void ov91_02260B5C(void *self)
{
    char *p = (char *)self;
    s16 cnt = *(s16 *)(p + 0x104);
    cnt--;
    *(s16 *)(p + 0x104) = cnt;
    if (*(s16 *)(p + 0x104) < 0) {
        void *other = *(void **)(p + 0xf8);
        s32 v0 = ov91_0225E6F8(other);
        void *o2 = *(void **)(p + 0xf8);
        u16 idx = FX_Atan2Idx(*(s32 *)((char *)o2 + 0x10), *(s32 *)((char *)o2 + 8));
        s32 base = (idx >> 4) << 1;
        u16 v2 = (u16)((v0 << 9) / 0x1E200);
        s32 fx = (s32)v2 << 12;
        s32 sn = (s32)(((s64)FX_SinCosTable_[base] * fx + 0x800LL) >> 12);
        *(s16 *)(p + 0x100) = (s16)((sn >> 12) + 0x200);
        s32 cs = (s32)(((s64)FX_SinCosTable_[base + 1] * fx + 0x800LL) >> 12);
        *(s16 *)(p + 0x102) = (s16)((cs >> 12) + 0x200);
        *(s16 *)(p + 0x104) = 8;
    }
    *(u16 *)(p + 0xfc) = (u16)(*(u16 *)(p + 0xfc) + *(u16 *)(p + 0x100));
    *(u16 *)(p + 0xfe) = (u16)(*(u16 *)(p + 0xfe) + *(u16 *)(p + 0x102));
    sub_020182E0(p + 4, *(u16 *)(p + 0xfc), 0);
    sub_020182E0(p + 4, *(u16 *)(p + 0xfe), 2);
}
