typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x14];
    void *unk14;
    u8 pad18[0x6];
    u8 unk1E;
    u8 pad1F[0x11];
    s32 unk30;
} UnkStruct_ov14_021EB2A8;

typedef void (*Ov14Fn)(void *, void *, u32, u32);

typedef struct {
    Ov14Fn fn0;
    Ov14Fn fn1;
    s32 unk8;
} Ov14_021F7D50_Entry;

extern Ov14_021F7D50_Entry ov14_021F7D50[];

BOOL OverlayManager_Run(void *ovy);
void OverlayManager_Delete(void *ovy);

s32 ov14_021EB2A8(UnkStruct_ov14_021EB2A8 *a0)
{
    u32 type;
    Ov14Fn fn;
    if (!OverlayManager_Run(a0->unk14)) {
        return 10;
    }
    OverlayManager_Delete(a0->unk14);
    type = a0->unk1E;
    fn = ov14_021F7D50[type].fn1;
    fn(a0, (void *)fn, type, type * 0xc);
    a0->unk30 = ov14_021F7D50[a0->unk1E].unk8;
    return 0;
}
