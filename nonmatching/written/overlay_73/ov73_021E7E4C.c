typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef volatile u16 vu16;
typedef volatile u32 vu32;

typedef struct {
    u32 w[4];
} UnkStruct_ov73_021EA68C;

extern UnkStruct_ov73_021EA68C ov73_021EA68C;
extern void *_021EA940;

void Main_SetVBlankIntrCB(void *cb, void *arg);
void HBlankInterruptDisable(void);
void GfGfx_DisableEngineAPlanes(void);
void GfGfx_DisableEngineBPlanes(void);
void Heap_Create(u32 parent, u32 heapId, u32 size);
void *OverlayManager_CreateAndGetData(void *ovy, u32 size, u32 heapId);
void *memset(void *p, int c, u32 n);
void *BgConfig_Alloc(u32 heapId);
void SetBothScreensModesAndDisable(void *modes);
void *MessageFormat_New_Custom(u32 a, u32 b, u32 heapId);
void *NewMsgDataFromNarc(u32 type, u32 narcId, u32 msgBank, u32 heapId);
void SetKeyRepeatTimers(u32 a, u32 b);
void ov73_021E8148(void *work, void *ovy);
void ov73_021E8454(void *work);
void Sound_SetSceneAndPlayBGM(u32 scene, u32 seq, u32 flag);
void *Heap_Alloc(u32 heapId, u32 size);
void *NNS_FndCreateExpHeapEx(void *start, u32 size, u32 opt);
void LoadDwcOverlay(void);
void LoadOVY38(void);
void sub_02034D8C(void);

s32 ov73_021E7E4C(void *ovy, s32 *state)
{
    u8 *work;
    UnkStruct_ov73_021EA68C modes;
    void *heapBuf;

    if (*state == 0) {
        Main_SetVBlankIntrCB(0, 0);
        HBlankInterruptDisable();
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        *(vu32 *)0x04000000 = *(vu32 *)0x04000000 & 0xFFFFE0FF;
        *(vu32 *)0x04001000 = *(vu32 *)0x04001000 & 0xFFFFE0FF;
        Heap_Create(3, 0x96, 0x50000);
        work = OverlayManager_CreateAndGetData(ovy, 0x12cc, 0x96);
        memset(work, 0, 0x12cc);
        *(void **)(work + 4) = BgConfig_Alloc(0x96);
        _021EA940 = work;
        modes = ov73_021EA68C;
        SetBothScreensModesAndDisable(&modes);
        *(void **)(work + 0xbd0) = MessageFormat_New_Custom(0xb, 0x20, 0x96);
        *(void **)(work + 0xbd4) = NewMsgDataFromNarc(0, 0x1b, 0x31f, 0x96);
        *(void **)(work + 0xbd8) = NewMsgDataFromNarc(0, 0x1b, 0x30a, 0x96);
        *(void **)(work + 0xbdc) = NewMsgDataFromNarc(0, 0x1b, 0x320, 0x96);
        SetKeyRepeatTimers(4, 8);
        ov73_021E8148(work, ovy);
        ov73_021E8454(work);
        Sound_SetSceneAndPlayBGM(0x34, 0, 0);
        heapBuf = Heap_Alloc(0x96, 0x20020);
        *(void **)(work + 0x24) = heapBuf;
        *(void **)(work + 0x28) = NNS_FndCreateExpHeapEx((void *)(((u32)heapBuf + 0x1f) & ~0x1fu), 0x20000, 0);
        Sound_SetSceneAndPlayBGM(0xb, 0x47d, 1);
        *(vu16 *)0x04000304 = *(vu16 *)0x04000304 & 0x7FFF;
        *state = 1;
    } else if (*state == 1) {
        LoadDwcOverlay();
        LoadOVY38();
        sub_02034D8C();
        *state = 0;
        return 1;
    }
    return 0;
}
