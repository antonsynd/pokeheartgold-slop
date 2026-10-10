typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef volatile u16 vu16;
typedef volatile u32 vu32;

void Main_SetVBlankIntrCB(void *cb, void *arg);
void HBlankInterruptDisable(void);
void GfGfx_DisableEngineAPlanes(void);
void GfGfx_DisableEngineBPlanes(void);
void Heap_Create(u32 parent, u32 heapId, u32 size);
void *NARC_New(u32 narcId, u32 heapId);
void *OverlayManager_CreateAndGetData(void *ovy, u32 size, u32 heapId);
void *OverlayManager_GetArgs(void *ovy);
void *OverlayManager_GetData(void *ovy);
void *memset(void *p, int c, u32 n);
void *BgConfig_Alloc(u32 heapId);
s32 MenuInputStateMgr_GetState(void *mgr);
void *MessageFormat_New(u32 heapId);
void *NewMsgDataFromNarc(u32 type, u32 narcId, u32 msgBank, u32 heapId);
void FontID_Alloc(u32 fontId, u32 heapId);
void SetKeyRepeatTimers(u32 a, u32 b);
void ov73_021E5D00(void);
void ov73_021E5D20(void *bgConfig);
void SetMasterBrightnessNeutral(u32 screen);
void BeginNormalPaletteFade(u32 a, u32 b, u32 c, u32 d, u32 e, u32 f, u32 heapId);
void ov73_021E5F38(void *work, void *narc);
void sub_020210BC(void);
void sub_02021148(u32 a);
void ov73_021E5CD8(void *arg);
void ov73_021E5E0C(void *work, void *narc);
void ov73_021E6060(void);
void ov73_021E6090(void *work, void *narc);
void ov73_021E6184(void *work);
void ov73_021E629C(void *work, void *ovy);
void ov73_021E7230(void *work);
void Sound_SetSceneAndPlayBGM(u32 scene, u32 a, u32 b);
void sub_0208FB64(void *work);
void sub_0203893C(void);
void sub_02038C1C(u32 a);
u32 sub_0203769C(void);
void sub_0205A904(u32 a);
void sub_0203A880(void);
void ov73_021EA374(u32 a, void *b);
void *SysTask_CreateOnVBlankQueue(void *func, void *data, u32 priority);
void ov73_021E5C74(void *task, void *data);
void NARC_Delete(void *narc);

s32 ov73_021E5900(void *ovy, s32 *state)
{
    u8 *work;
    void *narc;
    u32 *args;

    if (*state == 0) {
        Main_SetVBlankIntrCB(0, 0);
        HBlankInterruptDisable();
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        *(vu32 *)0x04000000 = *(vu32 *)0x04000000 & 0xFFFFE0FF;
        *(vu32 *)0x04001000 = *(vu32 *)0x04001000 & 0xFFFFE0FF;
        Heap_Create(3, 0x32, 0x41000);
        narc = NARC_New(0x54, 0x32);
        work = OverlayManager_CreateAndGetData(ovy, 0x4a8c, 0x32);
        memset(work, 0, 0x4a8c);
        *(void **)(work + 0) = BgConfig_Alloc(0x32);
        args = OverlayManager_GetArgs(ovy);
        *(u32 **)(work + 8) = args;
        *(u32 *)(work + 0x4a0c) = args[0];
        *(s32 *)(work + 0x314) = MenuInputStateMgr_GetState(*(void **)(*(u8 **)(work + 8) + 0x10));
        *(void **)(work + 0x24) = MessageFormat_New(0x32);
        *(void **)(work + 0x28) = NewMsgDataFromNarc(0, 0x1b, 0x1a6, 0x32);
        FontID_Alloc(4, 0x32);
        SetKeyRepeatTimers(4, 8);
        ov73_021E5D00();
        ov73_021E5D20(*(void **)(work + 0));
        SetMasterBrightnessNeutral(0);
        SetMasterBrightnessNeutral(1);
        BeginNormalPaletteFade(0, 0x11, 0x11, 0, 0x10, 1, 0x32);
        ov73_021E5F38(work, narc);
        sub_020210BC();
        sub_02021148(2);
        Main_SetVBlankIntrCB(ov73_021E5CD8, work);
        ov73_021E5E0C(work, narc);
        ov73_021E6060();
        ov73_021E6090(work, narc);
        ov73_021E6184(work);
        ov73_021E629C(work, ovy);
        ov73_021E7230(work);
        Sound_SetSceneAndPlayBGM(0x34, 0, 0);
        *(vu16 *)0x04000304 = *(vu16 *)0x04000304 & 0x7FFF;
        sub_0208FB64(work);
        sub_0203893C();
        sub_02038C1C(3);
        if (sub_0203769C() == 0) {
            sub_0205A904(2);
        }
        sub_0203A880();
        ov73_021EA374(*(u32 *)(work + 0x4a0c), work + 0x388);
        *(void **)(work + 0x20) = SysTask_CreateOnVBlankQueue(ov73_021E5C74, work, 5);
        NARC_Delete(narc);
        *state = *state + 1;
    } else if (*state == 1) {
        OverlayManager_GetData(ovy);
        *state = 0;
        return 1;
    }
    return 0;
}
