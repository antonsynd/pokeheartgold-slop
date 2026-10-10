typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;

typedef struct {
    u16 unk0;
    u16 unk2;
    s32 unk4;
    char *unk8;
    void *unkC;
    u16 unk10;
    u16 pad12;
    void *unk14;
    void *unk18;
} UnkStruct_ov01_021EBB90;

void GfGfx_EngineATogglePlanes(u32 planes, u32 enable);
void ov01_021EB968(void *mgr, u16 id, void *p);
void Heap_FreeExplicit(u32 heapId, void *p);
void SysTask_Destroy(void *task);
void ov01_021EC2CC(void *p);
void ov01_021EC058(void *p);
void ov01_021EDAE0(void *p);
void ov01_021EA864(void *fog, s32 a1, BOOL enable, u32 mode, u32 slope, s32 offset);

void ov01_021EBB90(void *mgr, s32 idx)
{
    UnkStruct_ov01_021EBB90 *e = (UnkStruct_ov01_021EBB90 *)(*(char **)mgr + idx * 0x1c);
    if (e->unk2 != 0xFFFF) {
        GfGfx_EngineATogglePlanes(4, 0);
        *(volatile u16 *)0x0400000C = (*(volatile u16 *)0x0400000C & ~3) | 3;
        *(volatile u16 *)0x04000008 = (*(volatile u16 *)0x04000008 & ~3) | 1;
        *(volatile u16 *)0x04000050 = 0;
    }
    if (e->unkC != 0) {
        ov01_021EB968(mgr, e->unk0, e->unkC);
        Heap_FreeExplicit(4, e->unkC);
        e->unkC = 0;
        if (e->unk14 != 0) {
            SysTask_Destroy(e->unk14);
            e->unk14 = 0;
        }
    }
    if (e->unk8 != 0) {
        ov01_021EC2CC(e->unk8 + 0xc);
        if (e->unk0 != 0xFFFF) {
            ov01_021EC058(e->unk8);
        }
        if (*(s32 *)(e->unk8 + 0xF5C) == 1) {
            ov01_021EDAE0(e->unk8);
        }
        if (*(void **)(e->unk8 + 0xF58) != 0) {
            Heap_FreeExplicit(4, *(void **)(e->unk8 + 0xF58));
            *(void **)(e->unk8 + 0xF58) = 0;
        }
        if (e->unk10 == 1) {
            if (e->unk14 != 0) {
                SysTask_Destroy(e->unk14);
            }
        } else if (e->unk10 == 3) {
            SysTask_Destroy(*(void **)(e->unk8 + 0xF48));
        }
        if (*(void **)(e->unk8 + 0xF6C) != 0) {
            SysTask_Destroy(*(void **)(e->unk8 + 0xF6C));
        }
        Heap_FreeExplicit(4, e->unk8);
        e->unk8 = 0;
    }
    ov01_021EA864(*(void **)(*(char **)((char *)mgr + 0x104) + 0x4c), 1, 0, 0, 0, 0);
}
