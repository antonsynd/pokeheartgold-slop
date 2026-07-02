#include "global.h"

#include "heap.h"
#include "sound_radio.h"
#include "sys_task.h"
#include "sys_task_api.h"

extern void GF_SndSetState(u32 state);
extern void *GF_SdatGetAttrPtr(u32 attr);
extern void GF_Snd_SaveState(int *level_p);
extern void GF_Snd_LoadState(int level);
extern void GF_Snd_LoadSeq(int seqNo);
extern void GF_Snd_LoadSeqEx(int seqNo, u32 loadFlag);
extern NNSSndHandle *GF_GetSoundHandle(int playerNo);
extern int GF_GetSndHandleByPlayerNo(int playerNo);
extern void sub_02004920(u16 seqNo);
extern void GF_SndWorkSetGbSoundsVolume(u8 volume);
extern u32 GF_SndPlayerCountPlayingSeqByPlayerNo(u32 playerNo);
extern void GF_SndHandleMoveVolume(int handleNo, int volume, int frames);
extern BOOL SoundSys_GetGBSoundsState(void);
extern u16 GF_GetCurrentPlayingBGM();
extern void sub_020053A8(u8 a0, u8 a1);
extern void GF_SetVolumeBySeqNo(u16 a0, u16 a1);
extern void GF_SndHandleSetInitialVolume(s32 a0, s32 a1);
extern BOOL sub_02005738(int a0);
extern void sub_02005600(int a0);
extern void sub_020058B8(int a0);
extern void sub_02005680(int a0);
extern void sub_02005774(int a0, int a1);
extern BOOL sub_02006D04(void *a0, u32 a1, s32 a2, s32 a3);
extern void sub_02006DB8(void);
extern void sub_02006E3C(u8 a0);
extern u8 GF_GetPlayerNoBySeq(int seqNo);
extern int GF_NNS_SndPlayerGetSeqNo(NNSSndHandle *handle);
extern void GF_GetBankInfoBySeqNo(u16 seqNo);
extern u16 GF_GetBankBySeqNo(int seqNo);
extern void GF_SetCurrentPlayingBGM(u16 seqNo);
extern void sub_02004A60(u16 seqNo);
extern void sub_02004AB8(u16 seqNo);
extern void sub_020051A4(int seqNo, int a1);
extern int sub_02005328(int a0);
extern void sub_02005464(int seqNo, int a1);
extern void sub_0200592C(u16 seqNo, int a1, int a2);
extern void sub_02005990(int a0);
extern void sub_020059E0(int a0);
extern BOOL sub_02005BFC(void);
extern void sub_02005728(int a0);
extern void sub_02005748(int a0, u8 a1);
extern void sub_02005760(int a0, int a1);
extern void sub_020057AC(int a0, int a1, int a2, int a3, int a4);
extern u16 GBSounds_GetGBSeqNoByDSSeqNo(u16 seqNo);
extern void GBSounds_SetAllocatableChannels(void);
extern void NNS_SndPlayerStopSeq(NNSSndHandle *handle, int fadeFrame);
extern void NNS_SndPlayerStopSeqBySeqNo(int seqNo, int fadeFrame);
extern void NNS_SndPlayerStopSeqAll(int fadeFrame);
extern void NNS_SndPlayerSetTrackPan(NNSSndHandle *handle, u32 track, int pan);
extern void GF_SndHandleSetTrackPan(int handleNo, int track, int pan);
extern void GF_SndHandleSetTrackPitch(int handleNo, int track, int pitch);

BOOL sub_02005D10(u16 seqNo);
BOOL PlayBGM(u16 seqNo);
void sub_02005DA0(u16 seqNo, int handleNo);
BOOL sub_02005DC4(u16 seqNo, int unused, int handleNo);
BOOL sub_02005DF4(u16 seqNo, int unused, int handleNo);
BOOL sub_02005E44(u16 seqNo);
void StopBGM(u16 seqNo, int fadeFrame);
void sub_02005EEC(void);
void GF_SndStartFadeInBGM(u32 a0, u32 a1, u32 a2);
void GF_SndStartFadeOutBGM(u16 a0, u16 a1);
BOOL GF_SndGetFadeTimer(void);
u32 sub_02005F94(u16 seqNo);
void Sound_Stop(void);
void sub_02005FD8(void);
BOOL sub_0200602C(u16 seqNo, int a1);
BOOL PlaySE(int seqNo);
BOOL sub_0200606C(u16 seqNo, int playerNo);
BOOL sub_02006088(u16 seqNo);
BOOL sub_020060BC(int handleNo, int playerNo, int bankNo, int playerPrio, u32 seqNo);
BOOL sub_02006118(u16 seqNo, u16 a1);
BOOL PlaySE_SetPitch(u16 seqNo, int pitch);
void StopSE(u16 seqNo, int fadeFrame);
void sub_0200615C(int handleIdx, int fadeFrame);
void sub_0200616C(void);
BOOL IsSEPlaying(u16 seqNo);
u32 sub_02006190(u32 playerNo);
BOOL GF_IsAnySEPlaying(void);
void sub_020061B4(u16 seqNo, int a1, int a2);
void sub_020061D0(int playerNo, int a1);
void sub_020061EC(int a0);
BOOL PlayCry(int species, int form);
BOOL sub_020062E0(u16 species, u8 a1, u8 form);
void sub_02006300(int a0);
BOOL IsCryFinished(void);
BOOL PlayCryEx(int mode, int species, int pan, int volume, int heapId, int form);
void sub_02006820(int species, int track, int volume);
void sub_02006838(int frames, int heapId);
void sub_02006884(SysTask *task, void *data);
void sub_020068F8(void);
void sub_02006920(int p0, u16 species, int pan, int volume, int heapId, u8 a5, u8 form);
BOOL sub_02006A0C(u32 species, u32 form);
void sub_02006A30(void);
BOOL sub_02006AC0(int species, int track, int form);
void sub_02006AF4(int species, int unused, int volAdj, int panHalf, int heapId);
BOOL PlayFanfare(u16 seqNo);
BOOL sub_02006B84(void *unused);
void sub_02006BB0(int a0);
BOOL IsFanfarePlaying(void);
void sub_02006C04(u16 unused);
BOOL sub_02006C14(int handleNo, int playerNo, int bankNo, int playerPrio, u16 seqNo, u8 checkGB);

typedef struct {
    s32 counter;
    SysTask *task;
} UnkStruct_02006838;

BOOL sub_02005D10(u16 seqNo) {
    BOOL result;
    int handleNo;
    handleNo = GF_GetSndHandleByPlayerNo(GF_GetPlayerNoBySeq(seqNo));
    result = sub_02006C14(handleNo, -1, -1, -1, seqNo, 1);
    if (!result) {
        sub_02004920(seqNo);
    }
    sub_02005DA0(seqNo, handleNo);
    return result;
}

BOOL PlayBGM(u16 seqNo) {
    u8 playerNo;
    int handleNo;
    BOOL result;
    playerNo = GF_GetPlayerNoBySeq(seqNo);
    handleNo = GF_GetSndHandleByPlayerNo(playerNo);
    if (playerNo == 7) {
        result = sub_02005DC4(seqNo, playerNo, handleNo);
    } else if (playerNo == 1) {
        result = sub_02005DF4(seqNo, playerNo, handleNo);
    } else {
        GF_AssertFail();
        return 0;
    }
    sub_020059E0(0);
    if (!result) {
        sub_02004920(seqNo);
    }
    sub_02005DA0(seqNo, handleNo);
    return result;
}

void sub_02005DA0(u16 seqNo, int handleNo) {
    sub_02004A60(seqNo);
    sub_02005464(seqNo, handleNo);
    GF_SndSetState(1);
    if (handleNo == 0) {
        GF_SndWorkSetGbSoundsVolume(0x80);
    }
}

BOOL sub_02005DC4(u16 seqNo, int unused, int handleNo) {
    GF_Snd_LoadState(sub_02005328(3));
    GF_Snd_LoadSeq(seqNo);
    return sub_02006C14(handleNo, -1, -1, -1, seqNo, 1);
}

BOOL sub_02005DF4(u16 seqNo, int unused, int handleNo) {
    u16 *p20;
    int bank;
    GF_SdatGetAttrPtr(0x13);
    p20 = GF_SdatGetAttrPtr(0x20);
    bank = GF_GetBankBySeqNo(GF_NNS_SndPlayerGetSeqNo(GF_GetSoundHandle(0)));
    sub_020051A4(seqNo, bank);
    SndRadio_StopSeq(0);
    bank = GF_GetBankBySeqNo(*p20);
    return sub_02006C14(handleNo, -1, bank, -1, seqNo, 1);
}

BOOL sub_02005E44(u16 seqNo) {
    u8 *p15;
    BOOL result;
    p15 = GF_SdatGetAttrPtr(0x15);
    if (*p15 != 4) {
        GF_AssertFail();
        return 0;
    }
    if (GF_GetPlayerNoBySeq(seqNo) != 7) {
        GF_AssertFail();
        return 0;
    }
    GF_Snd_LoadSeqEx(seqNo, 1);
    result = sub_02006C14(7, -1, -1, -1, seqNo, 1);
    if (!result) {
        sub_02004920(seqNo);
    }
    SndRadio_StopSeq(0);
    sub_02004A60(seqNo);
    GF_SndSetState(1);
    return result;
}

void StopBGM(u16 seqNo, int fadeFrame) {
    u16 gbSeqNo;
    u8 playerNo;
    NNS_SndPlayerStopSeqBySeqNo(seqNo, fadeFrame);
    gbSeqNo = GBSounds_GetGBSeqNoByDSSeqNo(seqNo);
    if (seqNo != gbSeqNo) {
        NNS_SndPlayerStopSeqBySeqNo(gbSeqNo, fadeFrame);
    }
    playerNo = GF_GetPlayerNoBySeq(seqNo);
    if (playerNo != 0xFF) {
        NNS_SndHandleReleaseSeq(GF_GetSoundHandle(GF_GetSndHandleByPlayerNo(playerNo)));
    }
    sub_02005EEC();
}

void sub_02005EEC(void) {
    SndRadio_StopSeq(0);
    sub_02004A60(0);
    GF_SetCurrentPlayingBGM(0);
    sub_02004AB8(0);
    GF_SndSetState(0);
}

void GF_SndStartFadeInBGM(u32 a0, u32 a1, u32 a2) {
    u8 playerNo;
    int handleNo;
    playerNo = GF_GetPlayerNoBySeq(GF_GetCurrentPlayingBGM());
    if (playerNo != 0xFF) {
        handleNo = GF_GetSndHandleByPlayerNo(playerNo);
        if (a2 == 0) {
            GF_SndHandleMoveVolume(handleNo, 0, 0);
        }
        GF_SndHandleMoveVolume(handleNo, a0, a1);
        sub_02005990(a1);
        GF_SndSetState(3);
    }
}

void GF_SndStartFadeOutBGM(u16 a0, u16 a1) {
    u8 playerNo;
    playerNo = GF_GetPlayerNoBySeq(GF_GetCurrentPlayingBGM());
    if (playerNo != 0xFF) {
        if (!GF_SndGetFadeTimer()) {
            GF_SndHandleMoveVolume(GF_GetSndHandleByPlayerNo(playerNo), a0, a1);
            sub_02005990(a1);
        }
        GF_SndSetState(4);
    }
}

BOOL GF_SndGetFadeTimer(void) {
    u16 *p;
    p = GF_SdatGetAttrPtr(7);
    return *p;
}

u32 sub_02005F94(u16 seqNo) {
    return GF_SndPlayerCountPlayingSeqByPlayerNo(GF_GetPlayerNoBySeq(seqNo));
}

void Sound_Stop(void) {
    u8 *p10;
    u8 *p11;
    p10 = GF_SdatGetAttrPtr(0x10);
    p11 = GF_SdatGetAttrPtr(0x11);
    NNS_SndPlayerStopSeqAll(0);
    if (*p10 == 1) {
        sub_02005728(0xE);
    }
    if (*p11 == 1) {
        sub_02005728(0xF);
    }
    GF_SndSetState(0);
}

void sub_02005FD8(void) {
    u8 *p10;
    u8 *p11;
    int i;
    p10 = GF_SdatGetAttrPtr(0x10);
    p11 = GF_SdatGetAttrPtr(0x11);
    NNS_SndPlayerStopSeq(GF_GetSoundHandle(7), 0);
    sub_02005EEC();
    for (i = 0; i < 4; i++) {
        sub_0200615C(i + 3, 0);
    }
    sub_02006300(0);
    if (*p10 == 1) {
        sub_02005728(0xE);
    }
    if (*p11 == 1) {
        sub_02005728(0xF);
    }
}

BOOL sub_0200602C(u16 seqNo, int a1) {
    BOOL result;
    result = PlaySE(seqNo);
    sub_020061B4(seqNo, 0xFFFF, a1);
    return result;
}

BOOL PlaySE(int seqNo) {
    int handleNo;
    handleNo = GF_GetSndHandleByPlayerNo(GF_GetPlayerNoBySeq(seqNo));
    return sub_020060BC(handleNo, -1, -1, -1, seqNo);
}

BOOL sub_0200606C(u16 seqNo, int playerNo) {
    int handleNo;
    handleNo = GF_GetSndHandleByPlayerNo(playerNo);
    return sub_020060BC(handleNo, playerNo, -1, -1, seqNo);
}

BOOL sub_02006088(u16 seqNo) {
    u16 *p20;
    int handleNo;
    int bank;
    p20 = GF_SdatGetAttrPtr(0x20);
    handleNo = GF_GetSndHandleByPlayerNo(GF_GetPlayerNoBySeq(seqNo));
    bank = GF_GetBankBySeqNo(*p20);
    return sub_020060BC(handleNo, -1, bank, -1, seqNo);
}

BOOL sub_020060BC(int handleNo, int playerNo, int bankNo, int playerPrio, u32 seqNo) {
    BOOL result;
    if (sub_02005BFC() == 1 && (u32)(seqNo - 0x5DC) <= 1) {
        return 0;
    }
    result = sub_02006C14(handleNo, playerNo, bankNo, playerPrio, (u16)seqNo, 0);
    sub_02005464(seqNo, handleNo);
    if (!result) {
        sub_02004920((u16)seqNo);
    }
    return result;
}

BOOL sub_02006118(u16 seqNo, u16 a1) {
    BOOL result;
    result = PlaySE(seqNo);
    if (result) {
        GF_SetVolumeBySeqNo(seqNo, a1);
    }
    return result;
}

BOOL PlaySE_SetPitch(u16 seqNo, int pitch) {
    BOOL result;
    result = PlaySE(seqNo);
    if (result) {
        sub_0200592C(seqNo, 0xFFFF, pitch);
    }
    return result;
}

void StopSE(u16 seqNo, int fadeFrame) {
    NNS_SndPlayerStopSeqBySeqNo(seqNo, fadeFrame);
}

void sub_0200615C(int handleIdx, int fadeFrame) {
    NNS_SndPlayerStopSeq(GF_GetSoundHandle(handleIdx), fadeFrame);
}

void sub_0200616C(void) {
    int i;
    for (i = 0; i < 4; i++) {
        sub_0200615C(i + 3, 0);
    }
}

BOOL IsSEPlaying(u16 seqNo) {
    return GF_SndPlayerCountPlayingSeqByPlayerNo(GF_GetPlayerNoBySeq(seqNo));
}

u32 sub_02006190(u32 playerNo) {
    return GF_SndPlayerCountPlayingSeqByPlayerNo(playerNo);
}

BOOL GF_IsAnySEPlaying(void) {
    int i;
    for (i = 0; i < 4; i++) {
        if (GF_SndPlayerCountPlayingSeqByPlayerNo(i + 3) == 1) {
            return TRUE;
        }
    }
    return FALSE;
}

void sub_020061B4(u16 seqNo, int a1, int a2) {
    NNSSndHandle *handle;
    handle = GF_GetSoundHandle(GF_GetSndHandleByPlayerNo(GF_GetPlayerNoBySeq(seqNo)));
    NNS_SndPlayerSetTrackPan(handle, a1, a2);
}

void sub_020061D0(int playerNo, int a1) {
    NNSSndHandle *handle;
    handle = GF_GetSoundHandle(GF_GetSndHandleByPlayerNo(playerNo));
    NNS_SndPlayerSetTrackPan(handle, 0xFFFF, a1);
}

void sub_020061EC(int a0) {
    int handleNo;
    int i;
    handleNo = GF_GetSndHandleByPlayerNo(3);
    for (i = 0; i < 4; i++) {
        NNS_SndPlayerSetTrackPan(GF_GetSoundHandle(handleNo + i), 0xFFFF, a0);
    }
}

BOOL PlayCry(int species, int form) {
    u8 *p12;
    void **p24;
    u8 *p35;
    int result;
    p12 = GF_SdatGetAttrPtr(0x12);
    p24 = GF_SdatGetAttrPtr(0x24);
    p35 = GF_SdatGetAttrPtr(0x35);
    if (sub_02006A0C(species, form) == 1) {
        species = 0x1EE;
    }
    if (species != 0x1EE) {
        if ((u32)species > 0x1EF || species == 0) {
            species = 1;
        }
    }
    if (species == 0x1B9) {
        if (sub_02006D04(*p24, 0, 0x7F, 0) == 1) {
            sub_02006E3C(0);
            return 1;
        }
    }
    if (*p12 == 0) {
        if (*p35 == 0) {
            sub_02006300(0);
        }
        result = sub_02006C14(1, -1, species, -1, 2, 0);
        sub_02005464(species, 1);
    } else {
        result = sub_02006C14(8, -1, species, -1, 2, 0);
        sub_02005464(species, 8);
    }
    sub_02006E3C(0);
    return result;
}

BOOL sub_020062E0(u16 species, u8 a1, u8 form) {
    sub_02006920(0, species, 0, 0x7F, 0xB, a1, form);
    return 1;
}

void sub_02006300(int a0) {
    u8 *p10;
    u8 *p11;
    p10 = GF_SdatGetAttrPtr(0x10);
    p11 = GF_SdatGetAttrPtr(0x11);
    GF_SdatGetAttrPtr(0xF);
    NNS_SndPlayerStopSeq(GF_GetSoundHandle(1), a0);
    NNS_SndPlayerStopSeq(GF_GetSoundHandle(8), a0);
    if (*p10 == 1) {
        sub_020058B8(0xE);
        sub_02005680(0xE);
    }
    if (*p11 == 1) {
        sub_020058B8(0xF);
        sub_02005680(0xF);
    }
    sub_02006DB8();
    sub_02006A30();
}

BOOL IsCryFinished(void) {
    u8 *p10;
    u8 *p11;
    p10 = GF_SdatGetAttrPtr(0x10);
    p11 = GF_SdatGetAttrPtr(0x11);
    GF_SdatGetAttrPtr(0xF);
    GF_SdatGetAttrPtr(0x2E);
    if (*p10 == 1) {
        return sub_02005738(0xE);
    }
    if (*p11 == 1) {
        return sub_02005738(0xF);
    }
    return GF_SndPlayerCountPlayingSeqByPlayerNo(0);
}

BOOL PlayCryEx(int mode, int species, int pan, int volume, int heapId, int form) {
    int panHalf;
    int volAdj;
    u8 *p10;
    u8 *p11;
    u8 *p12;
    u8 *p1e;

    heapId = heapId;
    p10 = GF_SdatGetAttrPtr(0x10);
    p11 = GF_SdatGetAttrPtr(0x11);
    p12 = GF_SdatGetAttrPtr(0x12);
    p1e = GF_SdatGetAttrPtr(0x1E);
    GF_SdatGetAttrPtr(0x24);

    if (sub_02006A0C(species, form) == 1) {
        species = 0x1EE;
    }
    if (species != 0x1EE) {
        if ((u32)species > 0x1EF || species == 0) {
            species = 1;
        }
    }

    panHalf = pan / 2 + 0x40;

    volAdj = volume;
    volAdj -= 30;
    if (volAdj <= 0) {
        volAdj = 1;
    }

    *p12 = 0;
    if (*p10 == 1) {
        sub_020058B8(0xE);
        sub_02005680(0xE);
    }
    if (*p11 == 1) {
        sub_020058B8(0xF);
        sub_02005680(0xF);
    }

    if (species == 0x1B9) {
        switch (mode) {
        case 0:
        case 1:
        case 2:
        case 5:
        case 11:
        case 12:
            PlayCry(0x1B9, form);
            if (*p1e == 0) {
                GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
                sub_02006820(species, 1, volume);
            } else if (*p10 == 1) {
                sub_02005748(0xE, (u8)panHalf);
                sub_02005774(0xE, volume);
            } else {
                GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
                sub_02006820(species, 1, volume);
            }
            return 1;
        default:
            sub_02006E3C(1);
            break;
        }
    }

    switch (mode) {
    case 0:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        break;
    case 1:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        sub_02006838(0x14, heapId);
        break;
    case 2:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        GF_SndHandleSetTrackPitch(1, 0xFFFF, 0x40);
        sub_02006AC0(species, 0x14, form);
        GF_SndHandleSetTrackPan(8, 0xFFFF, pan);
        sub_02006820(species, 8, volAdj);
        break;
    case 3:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        sub_02006838(0x1E, heapId);
        GF_SndHandleSetTrackPitch(1, 0xFFFF, 0xC0);
        sub_02006AC0(species, 0x10, form);
        GF_SndHandleSetTrackPan(8, 0xFFFF, pan);
        sub_02006820(species, 8, volAdj);
        break;
    case 4:
        sub_02005600(0xE);
        sub_020057AC(species, volume, panHalf, 0xE, heapId);
        sub_02005748(0xE, (u8)panHalf);
        sub_02006838(0xF, heapId);
        sub_02005760(0xE, 0x8600);
        sub_02006AF4(species, -64, volAdj, panHalf, heapId);
        sub_02005760(0xF, 0x8600);
        break;
    case 5:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        GF_SndHandleSetTrackPitch(1, 0xFFFF, -224);
        break;
    case 6:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        GF_SndHandleSetTrackPitch(1, 0xFFFF, 0x2C);
        sub_02006AC0(species, -64, form);
        GF_SndHandleSetTrackPan(8, 0xFFFF, pan);
        sub_02006820(species, 8, volAdj);
        break;
    case 7:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        sub_02006838(0xB, heapId);
        GF_SndHandleSetTrackPitch(1, 0xFFFF, -128);
        break;
    case 8:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        sub_02006838(0x3C, heapId);
        GF_SndHandleSetTrackPitch(1, 0xFFFF, 0x3C);
        break;
    case 9:
        sub_02005600(0xE);
        sub_020057AC(species, volume, panHalf, 0xE, heapId);
        sub_02005748(0xE, (u8)panHalf);
        sub_02006838(0xD, heapId);
        sub_02005760(0xE, 0x6800);
        break;
    case 10:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        sub_02006838(0x64, heapId);
        GF_SndHandleSetTrackPitch(1, 0xFFFF, -44);
        break;
    case 11:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        GF_SndHandleSetTrackPitch(1, 0xFFFF, -96);
        break;
    case 12:
        PlayCry(species, form);
        GF_SndHandleSetTrackPan(1, 0xFFFF, pan);
        sub_02006820(species, 1, volume);
        sub_02006838(0x14, heapId);
        GF_SndHandleSetTrackPitch(1, 0xFFFF, -96);
        break;
    case 13:
        PlayCry(species, form);
        sub_02006820(species, 1, 0x7F);
        sub_02006AC0(species, 0x14, form);
        GF_SndHandleSetTrackPan(8, 0xFFFF, pan);
        GF_SndHandleMoveVolume(8, volume, 0);
        break;
    case 14:
        PlayCry(species, form);
        break;
    default:
        break;
    }

    return 1;
}

void sub_02006820(int species, int track, int volume) {
    GF_SndHandleSetInitialVolume(track, volume);
    sub_02005464(species, track);
}

void sub_02006838(int frames, int heapId) {
    SysTask **taskPtr;
    UnkStruct_02006838 *data;
    u8 *p;
    SysTask *task;
    taskPtr = GF_SdatGetAttrPtr(0x23);
    sub_020068F8();
    data = Heap_Alloc((enum HeapID)heapId, sizeof(UnkStruct_02006838));
    if (data == NULL) {
        GF_ASSERT(FALSE);
        return;
    }
    p = (u8 *)data;
    p[0] = 0;
    p[1] = 0;
    p[2] = 0;
    p[3] = 0;
    p[4] = 0;
    p[5] = 0;
    p[6] = 0;
    p[7] = 0;
    data->counter = frames;
    task = SysTask_CreateOnMainQueue(sub_02006884, data, 0);
    data->task = task;
    *taskPtr = task;
}

void sub_02006884(SysTask *task, void *data_) {
    UnkStruct_02006838 *data;
    u8 *p10;
    u8 *p11;
    data = data_;
    p10 = GF_SdatGetAttrPtr(0x10);
    p11 = GF_SdatGetAttrPtr(0x11);
    if (data->counter == 10) {
        GF_SndHandleMoveVolume(1, 0, data->counter);
        GF_SndHandleMoveVolume(8, 0, data->counter);
    }
    data->counter -= 1;
    if (!IsCryFinished()) {
        data->counter = 0;
    }
    if (data->counter <= 0) {
        sub_02006300(0);
        if (*p10 == 1) {
            sub_020058B8(0xE);
            sub_02005680(0xE);
        }
        if (*p11 == 1) {
            sub_020058B8(0xF);
            sub_02005680(0xF);
        }
        sub_020068F8();
    }
}

void sub_020068F8(void) {
    SysTask **taskPtr;
    void *data;
    taskPtr = GF_SdatGetAttrPtr(0x23);
    if (*taskPtr != NULL) {
        data = SysTask_GetData(*taskPtr);
        SysTask_Destroy(*taskPtr);
        Heap_Free(data);
    }
    *taskPtr = NULL;
}

void sub_02006920(int p0, u16 species, int pan, int volume, int heapId, u8 a5, u8 form) {
    u8 *p6ptr;
    u32 *g0;
    u16 *g1;
    u32 *g2;
    u32 *g3;
    u32 *g4;
    u8 *g5;
    u8 *p35ptr;

    p6ptr = GF_SdatGetAttrPtr(6);
    p35ptr = GF_SdatGetAttrPtr(0x35);
    if (*p6ptr == 0) {
        g0 = GF_SdatGetAttrPtr(0x29);
        g1 = GF_SdatGetAttrPtr(0x2D);
        g2 = GF_SdatGetAttrPtr(0x2A);
        g3 = GF_SdatGetAttrPtr(0x2B);
        g4 = GF_SdatGetAttrPtr(0x2C);
        g5 = GF_SdatGetAttrPtr(0x2E);
    } else {
        g0 = GF_SdatGetAttrPtr(0x2F);
        g1 = GF_SdatGetAttrPtr(0x33);
        g2 = GF_SdatGetAttrPtr(0x30);
        g3 = GF_SdatGetAttrPtr(0x31);
        g4 = GF_SdatGetAttrPtr(0x32);
        g5 = GF_SdatGetAttrPtr(0x34);
    }

    if (*p35ptr == 1) {
        *p6ptr ^= 1;
    }

    if (sub_02006A0C(species, form) == 1) {
        species = 0x1EE;
    }

    if (species != 0) {
        if (a5 == 0) {
            PlayCryEx(p0, species, pan, volume, heapId, form);
        } else {
            *g0 = p0;
            *g1 = species;
            *g2 = pan;
            *g3 = volume;
            *g4 = heapId;
            *g5 = a5;
        }
    }
}

BOOL sub_02006A0C(u32 species, u32 form) {
    if (species == 0x1EC && form == 1) {
        return 1;
    }
    if (species == 0x1EE) {
        return 1;
    }
    return 0;
}

void sub_02006A30(void) {
    u32 *p29;
    u16 *p2d;
    u32 *p2a;
    u32 *p2b;
    u32 *p2c;
    u8 *p2e;
    u32 *p2f;
    u16 *p33;
    u32 *p30;
    u32 *p31;
    u32 *p32;
    u8 *p34;

    p29 = GF_SdatGetAttrPtr(0x29);
    p2d = GF_SdatGetAttrPtr(0x2D);
    p2a = GF_SdatGetAttrPtr(0x2A);
    p2b = GF_SdatGetAttrPtr(0x2B);
    p2c = GF_SdatGetAttrPtr(0x2C);
    p2e = GF_SdatGetAttrPtr(0x2E);
    p2f = GF_SdatGetAttrPtr(0x2F);
    p33 = GF_SdatGetAttrPtr(0x33);
    p30 = GF_SdatGetAttrPtr(0x30);
    p31 = GF_SdatGetAttrPtr(0x31);
    p32 = GF_SdatGetAttrPtr(0x32);
    p34 = GF_SdatGetAttrPtr(0x34);

    *p29 = 0;
    *p2d = 0;
    *p2a = 0;
    *p2b = 0;
    *p2c = 0;
    *p2e = 0;
    *p2f = 0;
    *p33 = 0;
    *p30 = 0;
    *p31 = 0;
    *p32 = 0;
    *p34 = 0;
}

BOOL sub_02006AC0(int species, int track, int form) {
    u8 *p12;
    BOOL result;
    p12 = GF_SdatGetAttrPtr(0x12);
    *p12 = 1;
    sub_02006E3C(1);
    result = PlayCry(species, form);
    GF_SndHandleSetTrackPitch(8, 0xFFFF, track);
    return result;
}

void sub_02006AF4(int species, int unused, int volAdj, int panHalf, int heapId) {
    u8 *p12;
    p12 = GF_SdatGetAttrPtr(0x12);
    *p12 = 1;
    sub_02005600(0xF);
    sub_020057AC(species, volAdj, panHalf, 0xF, heapId);
}

BOOL PlayFanfare(u16 seqNo) {
    u8 playerNo;
    BOOL result;
    GF_GetBankInfoBySeqNo(seqNo);
    sub_02006C04(seqNo);
    playerNo = GF_GetPlayerNoBySeq(GF_GetCurrentPlayingBGM());
    if (playerNo != 0xFF) {
        sub_020053A8(playerNo, 1);
    } else {
        SndRadio_PausePlayer(1);
    }
    GF_Snd_SaveState(GF_SdatGetAttrPtr(0x1D));
    GF_Snd_LoadSeqEx(seqNo, 3);
    result = sub_02006C14(2, -1, -1, -1, seqNo, 0);
    sub_02005464(seqNo, 2);
    return result;
}

BOOL sub_02006B84(void *unused) {
    u16 *p0e;
    p0e = GF_SdatGetAttrPtr(0xE);
    if (GF_SndPlayerCountPlayingSeqByPlayerNo(2) != 0) {
        return 1;
    }
    if (*p0e != 0) {
        *p0e -= 1;
        return 1;
    }
    return 0;
}

void sub_02006BB0(int a0) {
    NNS_SndPlayerStopSeq(GF_GetSoundHandle(2), a0);
    GF_Snd_LoadState(sub_02005328(6));
}

BOOL IsFanfarePlaying(void) {
    u8 playerNo;
    if (sub_02006B84(GF_SdatGetAttrPtr(0xE)) == 1) {
        return 1;
    }
    sub_02006BB0(0);
    playerNo = GF_GetPlayerNoBySeq(GF_GetCurrentPlayingBGM());
    if (playerNo != 0xFF) {
        sub_020053A8(playerNo, 0);
    }
    SndRadio_PausePlayer(0);
    return 0;
}

void sub_02006C04(u16 unused) {
    u16 *p;
    p = GF_SdatGetAttrPtr(0xE);
    *p = 0xF;
}

BOOL sub_02006C14(int handleNo, int playerNo, int bankNo, int playerPrio, u16 seqNo, u8 checkGB) {
    NNSSndHandle *handle;
    BOOL result;
    u16 seq;
    u16 gbSeqNo;
    u8 remappedPlayerNo;
    seq = seqNo;
    if (checkGB == 1 && SoundSys_GetGBSoundsState() == 1) {
        gbSeqNo = GBSounds_GetGBSeqNoByDSSeqNo(seqNo);
        if (seqNo != gbSeqNo) {
            seq = gbSeqNo;
            bankNo = 0x2BD;
            sub_02004AB8(gbSeqNo);
            remappedPlayerNo = GF_GetPlayerNoBySeq(gbSeqNo);
            if (playerNo != -1) {
                remappedPlayerNo = (u8)playerNo;
            }
            if (remappedPlayerNo == 7) {
                GF_Snd_LoadSeqEx(gbSeqNo, 1);
            }
        }
    }
    handle = GF_GetSoundHandle(handleNo);
    result = NNS_SndArcPlayerStartSeqEx(handle, playerNo, bankNo, playerPrio, seq);
    GBSounds_SetAllocatableChannels();
    return result;
}
