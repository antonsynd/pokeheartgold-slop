#include "global.h"
#include "overlay_manager.h"
#include "system.h"

extern void sub_02034D8C(void);
extern void LoadDwcOverlay(void);
extern void LoadOVY38(void);
extern void sub_02039FD8(int arg);
extern BOOL sub_02034DB8(void);
extern void sub_020394A0(void *saveData);
extern void sub_0203A880(void);

extern void ov00_021EC294(void *alloc, void *free);
extern void ov00_021EC3F0(void *work, int dmaNo, int powerMode, int sslPriority);
extern void ov00_021EC454(int authServer);
extern void ov00_021EC4A4(void);
extern void ov00_021EC60C(void);
extern int ov00_021EC5B4(void);
extern int ov00_021ECD04(void);
extern int ov00_021ECDC8(void);
extern void ov00_021ECEC0(void);
extern void ov00_021EC8D8(void);
extern int ov00_021ED1F0(void *callback, const char *gameName, const char *gameKey);
extern int ov00_021ED354(const char *a, const char *b, const char *c);
extern int ov00_021ED388(int *outCount);
extern int ov00_021ED3AC(void *fileList, int offset, int num);
extern int ov00_021ED3F4(void *fileName, void *buffer, int bufferSize);
extern int ov00_021ED444(u32 *received, u32 *total);
extern int ov00_021ED428(void);
extern int ov00_021EC938(void);
extern void ov00_021EC210(void);
extern int ov00_021ECB40(void);

extern int ov74_022369D8(void *work);
extern int ov74_02236A2C(void *work);
extern void ov74_02236A54(void *work, int *state, int nextState);
extern void ov74_02236A78(void *work, int arg1, int *state, int arg3, int arg4);
extern void ov74_02236AC8(void);
extern void ov74_0222ACD8(void *work);
extern void ov74_022369A8(void);
extern void ov74_022369C8(void);
extern void ov74_02236AAC(void);

extern u8 ov74_0223D038[];
extern u8 ov74_0223D040[];
extern u8 ov74_0223D054[];

typedef struct {
    s32 downloadDone;
    s32 unk_04;
    s32 result;
    s32 error;
    s32 unk_10;
} UnkStruct_ov74_0223E304;

extern UnkStruct_ov74_0223E304 ov74_0223E304;
extern u8 ov74_0223E318[];

typedef int (*UnkFn_ov74_02236AE0)(void *, u32, u32, u32);

typedef struct {
    u8 filler_00[4];
    void *saveData;
    u8 filler_08[0x15E8 - 0x08];
    u8 inetWork[0x1650 - 0x15E8];
    int nextState;
    int fileListNum;
    u8 buffer[0x265C - 0x1658];
    u32 received;
    u32 total;
    u32 percent;
    u8 filler_2668[0x2674 - 0x2668];
    int errorType;
    int exitRequested;
    UnkFn_ov74_02236AE0 callback;
} UnkStruct_ov74_02236AE0;

int ov74_02236AE0(OverlayManager *man, int *state) {
    UnkStruct_ov74_02236AE0 *work = OverlayManager_GetData(man);
    u32 callerR1, callerR2, callerR3;
    __asm__ volatile("movs %0, r1" : "=l"(callerR1) : : "cc");
    __asm__ volatile("movs %0, r2" : "=l"(callerR2) : : "cc");
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    if (work->callback != NULL) {
        if (work->callback((void *)work->callback, callerR1, callerR2, callerR3) == 1) {
            *state = ov74_022369D8(work);
        }
    }

    switch (*state) {
    case 0x1000:
        sub_02034D8C();
        LoadDwcOverlay();
        LoadOVY38();
        sub_02039FD8(3);
        *state = 0x1001;
        break;
    case 0x1001:
        if (sub_02034DB8()) {
            ov00_021EC294(ov74_022369A8, ov74_022369C8);
            sub_020394A0(work->saveData);
            *state = 0x1002;
        }
        break;
    case 0x1002:
        ov00_021EC3F0(work->inetWork, 2, 1, 0x14);
        ov00_021EC454(2);
        ov00_021EC4A4();
        sub_0203A880();
        *state = 0x1003;
        work->exitRequested = 0;
        break;
    case 0x1003:
        ov00_021EC60C();
        if (ov00_021EC5B4() != 0) {
            if (ov74_02236A2C(work) == 1) {
                if (work->exitRequested == 1) {
                    ov74_0223E304.result = 3;
                    *state = 0x100D;
                } else {
                    *state = 0x1004;
                }
            } else {
                *state = ov74_022369D8(work);
            }
        }
        if (gSystem.newKeys & PAD_BUTTON_B) {
            work->exitRequested = 1;
        }
        break;
    case 0x1004:
        if (ov00_021ECD04() == 0) {
            *state = ov74_022369D8(work);
        } else {
            *state = 0x1005;
        }
        break;
    case 0x1005: {
        int loginState = ov00_021ECDC8();
        if (loginState == 3) {
            *state = 0x1006;
            work->callback = (UnkFn_ov74_02236AE0)ov00_021ECB40;
        } else if (loginState == 4) {
            *state = ov74_022369D8(work);
            ov00_021EC8D8();
        } else if (loginState == 5) {
            ov74_0223E304.result = 3;
            *state = 0x100D;
        }
        if (gSystem.newKeys & PAD_BUTTON_B) {
            ov00_021ECEC0();
        }
        break;
    }
    case 0x1006:
        if (ov00_021ED1F0(ov74_02236AAC, (const char *)ov74_0223D038, (const char *)ov74_0223D040) == 0) {
            *state = ov74_022369D8(work);
        } else {
            ov74_02236A54(work, state, 0x1007);
        }
        break;
    case 0x1007:
        if (work->exitRequested == 1) {
            ov74_02236A78(work, 3, state, 0x100C, 0x100C);
        } else if (ov00_021ED354((const char *)ov74_0223D054, (const char *)ov74_0223D054, (const char *)ov74_0223D054) == 0) {
            *state = ov74_022369D8(work);
        } else {
            *state = 0x1008;
        }
        break;
    case 0x1008:
        if (ov00_021ED388(&work->fileListNum) == 0) {
            *state = ov74_022369D8(work);
        } else {
            ov74_02236A54(work, state, 0x1009);
        }
        break;
    case 0x1009:
        if (work->fileListNum != 1) {
            ov74_02236A78(work, 2, state, 0x100D, 0x100D);
        } else if (ov00_021ED3AC(ov74_0223E318, 0, 10) == 0) {
            *state = ov74_022369D8(work);
        } else {
            ov74_02236A54(work, state, 0x100A);
        }
        break;
    case 0x100A:
        if (ov00_021ED3F4(ov74_0223E318, work->buffer, 0x1000) == 0) {
            *state = ov74_022369D8(work);
        } else {
            *state = 0x100B;
            work->percent = 0;
        }
        break;
    case 0x100B:
        if (ov74_0223E304.downloadDone == 0) {
            if (gSystem.newKeys & PAD_BUTTON_B) {
                ov74_02236A78(work, 3, state, 0x100C, 0x100C);
            } else if (ov00_021ED444(&work->received, &work->total) == 1) {
                u32 percent = (work->received * 100) / work->total;
                if (work->percent != percent) {
                    work->percent = percent;
                }
            }
        } else if (ov74_0223E304.error != 0) {
            *state = ov74_022369D8(work);
        } else if (work->exitRequested == 0) {
            ov74_02236A78(work, 1, state, 0x100D, 0x100D);
        } else {
            ov74_02236A78(work, 3, state, 0x100D, 0x100D);
        }
        break;
    case 0x100C:
        if (ov00_021ED428() == 0) {
            *state = 0x100D;
        } else {
            work->callback = NULL;
            ov74_02236AC8();
            return ov74_0223E304.result;
        }
        break;
    case 0x100D:
        if (ov00_021EC938() == 1) {
            work->callback = NULL;
            ov74_02236AC8();
            return ov74_0223E304.result;
        }
        break;
    case 0x100E:
        break;
    case 0x100F:
        if (ov74_0223E304.unk_10 == 1) {
            ov74_0222ACD8(work);
            if ((u32)(work->errorType - 5) <= 1) {
                ov74_02236A78(work, 3, state, 0x1011, 0x1010);
            } else {
                *state = 0x1011;
            }
        }
        break;
    case 0x1010:
        if (gSystem.newKeys & PAD_BUTTON_A) {
            work->callback = NULL;
            ov00_021EC210();
            ov74_02236AC8();
            return 4;
        }
        break;
    case 0x1011:
        ov00_021EC8D8();
        *state = 0x1010;
        break;
    case 0x1012:
        if (ov74_0223E304.downloadDone == 1) {
            ov74_0223E304.downloadDone = 0;
            if (ov74_0223E304.error != 0) {
                *state = ov74_022369D8(work);
            } else {
                *state = work->nextState;
            }
        } else if (gSystem.newKeys & PAD_BUTTON_B) {
            work->exitRequested = 1;
        }
        break;
    case 0x1013:
        if (ov74_0223E304.unk_04 == 1) {
            ov74_0223E304.unk_04 = 0;
            *state = work->nextState;
        } else if (gSystem.newKeys & PAD_BUTTON_B) {
            work->exitRequested = 1;
        }
        break;
    }

    return 0;
}
