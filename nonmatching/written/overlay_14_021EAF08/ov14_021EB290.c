typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x1e];
    u8 unk1E;
} UnkStruct_ov14_021EB290;

typedef void (*Ov14Fn)(void *, void *, u32, u32);

typedef struct {
    Ov14Fn fn0;
    Ov14Fn fn1;
    s32 unk8;
} Ov14_021F7D50_Entry;

extern Ov14_021F7D50_Entry ov14_021F7D50[];

s32 ov14_021EB290(UnkStruct_ov14_021EB290 *a0)
{
    u32 type = a0->unk1E;
    Ov14Fn fn = ov14_021F7D50[type].fn0;
    fn(a0, (void *)fn, type, type * 0xc);
    return 10;
}
