#include "global.h"
#include "bg_window.h"
#include "filesystem.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "sound_02004A44.h"
#include "system.h"
#include "unk_020210A0.h"
#include "unk_02034B0C.h"
#include "unk_02035900.h"
#include "unk_02037C94.h"
#include "unk_0203A3B0.h"
#include "unk_0205A44C.h"

typedef struct UnkStruct_ov37_021E5900 {
    BgConfig *bgConfig;
    u8 filler_004[4];
    void *args;
    MessageFormat *msgFmt;
    MsgData *msgData;
    u8 filler_014[0x940C - 0x14];
} UnkStruct_ov37_021E5900;

void ov37_021E5CC8(void *arg);
void ov37_021E5CF0(void);
void ov37_021E5D10(BgConfig *bgConfig);
void ov37_021E5E30(UnkStruct_ov37_021E5900 *work);
void ov37_021E5F98(UnkStruct_ov37_021E5900 *work, NARC *narc);
void ov37_021E6090(void);
void ov37_021E60C0(UnkStruct_ov37_021E5900 *work, NARC *narc);
void ov37_021E6244(UnkStruct_ov37_021E5900 *work);
void ov37_021E6418(UnkStruct_ov37_021E5900 *work, OverlayManager *man);
void sub_0208F814(UnkStruct_ov37_021E5900 *work);

int ov37_021E5900(OverlayManager *man, int *state) {
    UnkStruct_ov37_021E5900 *work;
    NARC *narc;

    switch (*state) {
    case 0:
        Main_SetVBlankIntrCB(NULL, NULL);
        HBlankInterruptDisable();
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        *(vu32 *)0x04000000 &= 0xFFFFE0FF;
        *(vu32 *)0x04001000 &= 0xFFFFE0FF;
        Heap_Create(3, 0x27, 0x40000);
        work = OverlayManager_CreateAndGetData(man, 0x940C, 0x27);
        memset(work, 0, 0x940C);
        work->bgConfig = BgConfig_Alloc(0x27);
        work->msgFmt = MessageFormat_New(0x27);
        work->msgData = NewMsgDataFromNarc(0, 0x1B, 0xFC, 0x27);
        SetKeyRepeatTimers(4, 8);
        ov37_021E5CF0();
        ov37_021E5D10(work->bgConfig);
        sub_0200FBF4(0, 0);
        sub_0200FBF4(1, 0);
        BeginNormalPaletteFade(0, 0x11, 0x11, 0, 0x10, 1, 0x27);
        work->args = OverlayManager_GetArgs(man);
        narc = NARC_New(0x4E, 0x27);
        ov37_021E5F98(work, narc);
        sub_020210BC();
        sub_02021148(2);
        Main_SetVBlankIntrCB(ov37_021E5CC8, work->bgConfig);
        ov37_021E5E30(work);
        ov37_021E6090();
        ov37_021E60C0(work, narc);
        ov37_021E6244(work);
        ov37_021E6418(work, man);
        Sound_SetSceneAndPlayBGM(0x34, 0, 0);
        *(vu16 *)0x04000304 = *(vu16 *)0x04000304 & 0x7FFF;
        sub_0208F814(work);
        sub_020398D4(0, 1);
        if (sub_0203769C() == 0) {
            sub_02038C1C(3);
        }
        sub_0203A880();
        if (sub_0203769C() == 0) {
            sub_0205A904(1);
            sub_020356EC(1);
        }
        NARC_Delete(narc);
        (*state)++;
        break;
    case 1:
        OverlayManager_GetData(man);
        *state = 0;
        return 1;
    }
    return 0;
}
