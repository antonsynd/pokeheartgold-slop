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
} UnkStruct_ov01_021EBA44;

extern char NNS_G3dGlb[];
void *SysTask_CreateOnMainQueue(void *func, void *data, u32 priority);
void *Heap_Alloc(u32 heapId, u32 size);
void *memset(void *dst, int c, u32 n);
void GfGfx_EngineATogglePlanes(u32 planes, u32 enable);

BOOL ov01_021EBA44(void *mgr, s32 idx, u16 a2, u16 a3)
{
    UnkStruct_ov01_021EBA44 *e = (UnkStruct_ov01_021EBA44 *)(*(char **)mgr + idx * 0x1c);
    if (e->unk0 != 0xFFFF && e->unkC == 0) {
        return 0;
    }
    if (e->unk8 == 0) {
        return 0;
    }
    if (e->unk10 != 2) {
        return 0;
    }
    *(void **)(e->unk8 + 0xF48) = SysTask_CreateOnMainQueue(e->unk18, e->unk8, 4);
    if (*(void **)(e->unk8 + 0xF48) == 0) {
        return 0;
    }
    e->unk10 = 3;
    *(u16 *)(e->unk8 + 0xF62) = a2;
    *(u16 *)(e->unk8 + 0xF66) = 0;
    *(char **)(e->unk8 + 0x40) = e->unk8 + 0xc;
    *(char **)(e->unk8 + 0x44) = e->unk8 + 0xc;
    *(u16 *)(e->unk8 + 0xF64) = a3;
    *(u32 *)(e->unk8 + 0xF5C) = 0;
    {
        u32 *dst = (u32 *)(e->unk8 + 0xF4C);
        u32 *src = (u32 *)(NNS_G3dGlb + 0x258);
        dst[0] = src[0];
        dst[1] = src[1];
        dst[2] = src[2];
    }
    if (e->unk4 > 0) {
        *(void **)(e->unk8 + 0xF58) = Heap_Alloc(4, e->unk4);
        memset(*(void **)(e->unk8 + 0xF58), 0, e->unk4);
    } else {
        *(void **)(e->unk8 + 0xF58) = 0;
    }
    if (e->unk2 != 0xFFFF) {
        GfGfx_EngineATogglePlanes(4, 0);
        *(volatile u16 *)0x0400000C = (*(volatile u16 *)0x0400000C & ~3) | 1;
        *(volatile u16 *)0x04000008 = (*(volatile u16 *)0x04000008 & ~3) | 2;
    }
    return 1;
}
