typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;

typedef struct {
    u16 unk0;
    u16 unk2;
    u32 unk4;
    char *unk8;
    u32 unkC;
    u16 unk10;
} UnkStruct_ov01_021EB9A8;

BOOL ov01_021EBE4C(void *mgr, UnkStruct_ov01_021EB9A8 *e);
BOOL ov01_021EBD34(void *mgr, UnkStruct_ov01_021EB9A8 *e);
void Heap_Free(void *p);
void ov01_021EC028(void *p);
void ov01_021EBD18(void *mgr, u16 x);

BOOL ov01_021EB9A8(void *mgr, s32 idx)
{
    UnkStruct_ov01_021EB9A8 *e = (UnkStruct_ov01_021EB9A8 *)(*(char **)mgr + idx * 0x1c);
    if (e->unk8 == 0) {
        if (!ov01_021EBE4C(mgr, e)) {
            return 0;
        }
        if (!ov01_021EBD34(mgr, e)) {
            Heap_Free(e->unk8);
            e->unk8 = 0;
            return 0;
        }
        *(u32 *)(e->unk8 + 8) = e->unkC;
        if (e->unk0 != 0xFFFF) {
            ov01_021EC028(e->unk8);
        }
        ov01_021EBD18(mgr, e->unk2);
        e->unk10 = 2;
    }
    return 1;
}
