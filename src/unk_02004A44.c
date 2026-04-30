#include "global.h"

#include "constants/sndseq.h"

#include "heap.h"
#include "sound.h"
#include "sound_02004A44.h"
#include "unk_02005D10.h"

extern int sub_020378CC(void);
extern void sub_02005FD8(void);

MICResult MIC_StartAutoSampling(const MICAutoParam *param);
MICResult MIC_StopAutoSampling(void);

void NNS_SndPlayerPause(NNSSndHandle *handle, BOOL flag);
void NNS_SndPlayerMoveVolume(NNSSndHandle *handle, int targetVol, int frames);
void NNS_SndPlayerSetInitialVolume(NNSSndHandle *handle, int volume);
void NNS_SndPlayerSetTrackPitch(NNSSndHandle *handle, u32 trackMask, int pitch);
void NNS_SndPlayerSetTrackPan(NNSSndHandle *handle, u32 trackMask, int pan);
void NNS_SndPlayerSetTrackAllocatableChannel(NNSSndHandle *handle, u32 trackMask, u32 chBitFlag);
void NNS_SndPlayerSetTempoRatio(NNSSndHandle *handle, int ratio);
int NNS_SndPlayerGetSeqNo(NNSSndHandle *handle);
BOOL NNS_SndPlayerReadVariable(NNSSndHandle *handle, int varNo, s16 *outPtr);
void NNS_SndPlayerStopSeq(NNSSndHandle *handle, int fadeFrame);
void NNS_SndSetMasterVolume(int volume);
void NNS_SndSetMonoFlag(BOOL flag);
NNSSndWaveOutHandle NNS_SndWaveOutAllocChannel(int chNo);
void NNS_SndWaveOutFreeChannel(NNSSndWaveOutHandle handle);
BOOL NNS_SndWaveOutStart(NNSSndWaveOutHandle handle, NNSSndWaveFormat format, const void *dataAddr, BOOL loopFlag, int loopStartSample, int samples, int sampleRate, int volume, int speed, int pan);
void NNS_SndWaveOutStop(NNSSndWaveOutHandle handle);
void NNS_SndWaveOutSetVolume(NNSSndWaveOutHandle handle, int volume);
void NNS_SndWaveOutSetSpeed(NNSSndWaveOutHandle handle, int speed);
void NNS_SndWaveOutSetPan(NNSSndWaveOutHandle handle, int pan);
BOOL NNS_SndWaveOutIsPlaying(NNSSndWaveOutHandle handle);
void NNS_SndCaptureStopReverb(int a0);
BOOL NNS_SndCaptureIsActive(void);
int NNS_SndCaptureGetCaptureType(void);
const void *NNS_SndArcGetBankInfo(int bankNo);

typedef struct NNSSndArcWaveArcInfo {
    u32 fileId : 24;
    u32 flags : 8;
} NNSSndArcWaveArcInfo;

const NNSSndArcWaveArcInfo *NNS_SndArcGetWaveArcInfo(int waveArcNo);
u32 NNS_SndArcGetFileSize(u32 fileId);
s32 NNS_SndArcReadFile(u32 fileId, void *buffer, u32 size, s32 offset);

static u16 sub_02004AAC(void);
static void sub_02004AFC(int scene);
static void sub_02005060(int scene);
static void sub_0200508C(u16 seqNo, int unused);
static void sub_02005150(u16 seqNo, u16 prevSeqNo);
static void sub_02005228(u16 seqNo, int unused);
static void sub_02005260(u16 seqNo, int unused);
static void sub_02005280(u16 seqNo, int unused);
static void sub_020052A4(u16 seqNo, int unused);
static void sub_020052C8(int scene);
static void sub_020052E4(int scene, u16 seqNo, int unused);
static void sub_02005318(void);
static void sub_02005898(u8 *data, u32 size);
static int sub_020058F4(void);
static int sub_02005908(void);
static void sub_02005910(int a0);
static void sub_020059A0(int a0);
static u32 sub_02005A10(int mode, u16 seqNo, u16 fadeOut, int afterDelay, u8 isPaused, u32 fadeIn);
static u32 sub_02005A74(int mode, u16 seqNo, u16 fadeOut, int afterDelay, int fadeTimer, u8 isPaused, u32 fadeIn);
static void sub_02005AB0(int mode, u16 seqNo, u16 fadeOut, int afterDelay, u8 isPaused, u32 fadeIn);
static void GF_SndSetAllocatableChannelForBGMPlayer(u32 channelMask);
static void sub_02005B20(void);
static void sub_02005C08(int a0);
static u16 GBSounds_GetDSSeqNoByGBSeqNo(u16 gbSeqNo);

static const u8 sGBPitchVolTable[8][4] = {
    { 0x00, 0x2A, 0x00, 0x00 },
    { 0x40, 0x6B, 0x00, 0x00 },
    { 0x20, 0x2F, 0x00, 0x00 },
    { 0x40, 0x77, 0x00, 0x00 },
    { 0x00, 0x3E, 0x00, 0x00 },
    { 0x30, 0x7F, 0x00, 0x00 },
    { 0x00, 0x34, 0x00, 0x00 },
    { 0x30, 0x75, 0x00, 0x00 },
};

static const u16 sGBSoundsSeqTable[][2] = {
    { SEQ_GS_TITLE, SEQ_GS_P_TITLE },
    { SEQ_GS_TITLE01, SEQ_GS_P_TITLE01 },
    { SEQ_GS_OPENING_TITLE_G, SEQ_GS_P_OPENING_TITLE_G },
    { SEQ_GS_OPENING_TITLE_S, SEQ_GS_P_OPENING_TITLE_S },
    { SEQ_GS_POKEMON_THEME, SEQ_GS_P_POKEMON_THEME },
    { SEQ_GS_SHINKA, SEQ_GS_P_SHINKA },
    { SEQ_GS_KOUKAN, SEQ_GS_P_KOUKAN },
    { SEQ_GS_BICYCLE, SEQ_GS_P_BICYCLE },
    { SEQ_GS_NAMINORI, SEQ_GS_P_NAMINORI },
    { SEQ_GS_E_DENDOUIRI, SEQ_GS_P_E_DENDOUIRI },
    { SEQ_GS_T_WAKABA, SEQ_GS_P_T_WAKABA },
    { SEQ_GS_C_YOSHINO, SEQ_GS_P_C_YOSHINO },
    { SEQ_GS_C_KIKYOU, SEQ_GS_P_C_KIKYOU },
    { SEQ_GS_T_HIWADA, SEQ_GS_P_T_HIWADA },
    { SEQ_GS_C_KOGANE, SEQ_GS_P_C_KOGANE },
    { SEQ_GS_C_ENJU, SEQ_GS_P_C_ENJU },
    { SEQ_GS_C_ASAGI, SEQ_GS_P_C_ASAGI },
    { SEQ_GS_C_TANBA, SEQ_GS_P_C_TANBA },
    { SEQ_GS_T_CHOUJI, SEQ_GS_P_T_CHOUJI },
    { SEQ_GS_C_FUSUBE, SEQ_GS_P_C_FUSUBE },
    { SEQ_GS_R_1_29, SEQ_GS_P_R_1_29 },
    { SEQ_GS_R_1_30, SEQ_GS_P_R_1_30 },
    { SEQ_GS_R_2_30, SEQ_GS_P_R_2_30 },
    { SEQ_GS_R_3_30, SEQ_GS_P_R_3_30 },
    { SEQ_GS_R_4_34, SEQ_GS_P_R_4_34 },
    { SEQ_GS_R_5_34, SEQ_GS_P_R_5_34 },
    { SEQ_GS_R_6_34, SEQ_GS_P_R_6_34 },
    { SEQ_GS_R_8_34, SEQ_GS_P_R_8_34 },
    { SEQ_GS_R_6_38, SEQ_GS_P_R_6_38 },
    { SEQ_GS_R_7_42, SEQ_GS_P_R_7_42 },
    { SEQ_GS_C_KUCHIBA, SEQ_GS_P_C_KUCHIBA },
    { SEQ_GS_C_YAMABUKI, SEQ_GS_P_C_YAMABUKI },
    { SEQ_GS_C_HANADA, SEQ_GS_P_C_HANADA },
    { SEQ_GS_T_CHION, SEQ_GS_P_T_CHION },
    { SEQ_GS_C_TAMAMUSHI, SEQ_GS_P_C_TAMAMUSHI },
    { SEQ_GS_C_SEKICHIKU, SEQ_GS_P_C_SEKICHIKU },
    { SEQ_GS_C_NIBI, SEQ_GS_P_C_NIBI },
    { SEQ_GS_C_TOKIWA, SEQ_GS_P_C_TOKIWA },
    { SEQ_GS_T_MASARA, SEQ_GS_P_T_MASARA },
    { SEQ_GS_T_GUREN, SEQ_GS_P_T_GUREN },
    { SEQ_GS_R_9_01, SEQ_GS_P_R_9_01 },
    { SEQ_GS_R_16_01, SEQ_GS_P_R_16_01 },
    { SEQ_GS_R_17_01, SEQ_GS_P_R_17_01 },
    { SEQ_GS_R_9_03, SEQ_GS_P_R_9_03 },
    { SEQ_GS_R_10_03, SEQ_GS_P_R_10_03 },
    { SEQ_GS_R_12_03, SEQ_GS_P_R_12_03 },
    { SEQ_GS_R_13_03, SEQ_GS_P_R_13_03 },
    { SEQ_GS_R_14_03, SEQ_GS_P_R_14_03 },
    { SEQ_GS_R_15_03, SEQ_GS_P_R_15_03 },
    { SEQ_GS_R_16_03, SEQ_GS_P_R_16_03 },
    { SEQ_GS_R_17_03, SEQ_GS_P_R_17_03 },
    { SEQ_GS_R_10_11, SEQ_GS_P_R_10_11 },
    { SEQ_GS_R_13_11, SEQ_GS_P_R_13_11 },
    { SEQ_GS_R_12_24, SEQ_GS_P_R_12_24 },
    { SEQ_GS_R_1_26, SEQ_GS_P_R_1_26 },
    { SEQ_GS_POKESEN, SEQ_GS_P_POKESEN },
    { SEQ_GS_FS, SEQ_GS_P_FS },
    { SEQ_GS_GYM, SEQ_GS_P_GYM },
    { SEQ_GS_UTSUGI_RABO, SEQ_GS_P_UTSUGI_RABO },
    { SEQ_GS_OHKIDO, SEQ_GS_P_OHKIDO },
    { SEQ_GS_KABURENJOU, SEQ_GS_P_KABURENJOU },
    { SEQ_GS_GAME, SEQ_GS_P_GAME },
    { SEQ_GS_BATTLETOWER, SEQ_GS_P_BATTLETOWER },
    { SEQ_GS_BATTLETOWER2, SEQ_GS_P_BATTLETOWER2 },
    { SEQ_GS_TO_MADATSUBOMI1, SEQ_GS_P_TO_MADATSUBOMI1 },
    { SEQ_GS_D_CHIKATSUURO, SEQ_GS_P_D_CHIKATSUURO },
    { SEQ_GS_D_UNKNOWN_ISEKI, SEQ_GS_P_D_UNKNOWN_ISEKI },
    { SEQ_GS_D_KOUEN, SEQ_GS_P_D_KOUEN },
    { SEQ_GS_TO_YAKETA, SEQ_GS_P_TO_YAKETA },
    { SEQ_GS_TO_SUZU, SEQ_GS_P_TO_SUZU },
    { SEQ_GS_TO_TOUDAI, SEQ_GS_P_TO_TOUDAI },
    { SEQ_GS_D_AJITO, SEQ_GS_P_D_AJITO },
    { SEQ_GS_D_KOORINONUKE, SEQ_GS_P_D_KOORINONUKE },
    { SEQ_GS_RYUUNOANA, SEQ_GS_P_RYUUNOANA },
    { SEQ_GS_D_IWAYAMA, SEQ_GS_P_D_IWAYAMA },
    { SEQ_GS_D_TOKIWANOMORI3, SEQ_GS_P_D_TOKIWANOMORI3 },
    { SEQ_GS_D_CHAMPROAD, SEQ_GS_P_D_CHAMPROAD },
    { SEQ_GS_CHAMPROAD, SEQ_GS_P_CHAMPROAD },
    { SEQ_GS_E_TSURETEKE1, SEQ_GS_P_E_TSURETEKE1 },
    { SEQ_GS_E_TSURETEKE2, SEQ_GS_P_E_TSURETEKE2 },
    { SEQ_GS_E_RIVAL1, SEQ_GS_P_E_RIVAL1 },
    { SEQ_GS_E_RIVAL2, SEQ_GS_P_E_RIVAL2 },
    { SEQ_GS_TAIKAIMAE, SEQ_GS_P_TAIKAIMAE },
    { SEQ_GS_TAIKAI, SEQ_GS_P_TAIKAI },
    { SEQ_GS_KAIDENPA, SEQ_GS_P_KAIDENPA },
    { SEQ_GS_SENKYO, SEQ_GS_P_SENKYO },
    { SEQ_GS_E_LINEAR, SEQ_GS_P_E_LINEAR },
    { SEQ_GS_KOUSOKUSEN, SEQ_GS_P_KOUSOKUSEN },
    { SEQ_GS_OTSUKIMI_EVENT, SEQ_GS_P_OTSUKIMI_EVENT },
    { SEQ_GS_RADIO_JINGLE, SEQ_GS_P_RADIO_JINGLE },
    { SEQ_GS_RADIO_KOMORIUTA, SEQ_GS_P_RADIO_KOMORIUTA },
    { SEQ_GS_RADIO_MARCH, SEQ_GS_P_RADIO_MARCH },
    { SEQ_GS_RADIO_UNKNOWN, SEQ_GS_P_RADIO_UNKNOWN },
    { SEQ_GS_HUE, SEQ_GS_P_HUE },
    { SEQ_GS_OHKIDO_RABO, SEQ_GS_P_OHKIDO_RABO },
    { SEQ_GS_AIKOTOBA, SEQ_GS_P_AIKOTOBA },
    { SEQ_GS_E_MINAKI, SEQ_GS_P_E_MINAKI },
    { SEQ_GS_IBUKI, SEQ_GS_P_IBUKI },
    { SEQ_GS_EYE_J_SHOUJO, SEQ_GS_P_EYE_J_SHOUJO },
    { SEQ_GS_EYE_J_SHOUNEN, SEQ_GS_P_EYE_J_SHOUNEN },
    { SEQ_GS_EYE_J_AYASHII, SEQ_GS_P_EYE_J_AYASHII },
    { SEQ_GS_EYE_BOUZU, SEQ_GS_P_EYE_BOUZU },
    { SEQ_GS_EYE_MAIKO, SEQ_GS_P_EYE_MAIKO },
    { SEQ_GS_EYE_ROCKET, SEQ_GS_P_EYE_ROCKET },
    { SEQ_GS_EYE_K_SHOUJO, SEQ_GS_P_EYE_K_SHOUJO },
    { SEQ_GS_EYE_K_SHOUNEN, SEQ_GS_P_EYE_K_SHOUNEN },
    { SEQ_GS_EYE_K_AYASHII, SEQ_GS_P_EYE_K_AYASHII },
    { SEQ_GS_VS_NORAPOKE, SEQ_GS_P_VS_NORAPOKE },
    { SEQ_GS_VS_TRAINER, SEQ_GS_P_VS_TRAINER },
    { SEQ_GS_VS_GYMREADER, SEQ_GS_P_VS_GYMREADER },
    { SEQ_GS_VS_RIVAL, SEQ_GS_P_VS_RIVAL },
    { SEQ_GS_VS_ROCKET, SEQ_GS_P_VS_ROCKET },
    { SEQ_GS_VS_SUICUNE, SEQ_GS_P_VS_SUICUNE },
    { SEQ_GS_VS_ENTEI, SEQ_GS_P_VS_ENTEI },
    { SEQ_GS_VS_RAIKOU, SEQ_GS_P_VS_RAIKOU },
    { SEQ_GS_VS_CHAMP, SEQ_GS_P_VS_CHAMP },
    { SEQ_GS_VS_NORAPOKE_KANTO, SEQ_GS_P_VS_NORAPOKE_KANTO },
    { SEQ_GS_VS_TRAINER_KANTO, SEQ_GS_P_VS_TRAINER_KANTO },
    { SEQ_GS_VS_GYMREADER_KANTO, SEQ_GS_P_VS_GYMREADER_KANTO },
    { SEQ_GS_WIN1, SEQ_GS_P_WIN1 },
    { SEQ_GS_WIN2, SEQ_GS_P_WIN2 },
    { SEQ_GS_WIN2_NOT_FAN, SEQ_GS_P_WIN2_NOT_FAN },
    { SEQ_GS_WIN3, SEQ_GS_P_WIN3 },
    { SEQ_GS_PT_ENTR, SEQ_GS_P_PT_ENTR },
    { SEQ_GS_PT_OPEN, SEQ_GS_P_PT_OPEN },
    { SEQ_GS_PT_TITLE, SEQ_GS_P_PT_TITLE },
    { SEQ_GS_PT_GAME, SEQ_GS_P_PT_GAME },
    { SEQ_GS_PT_GAMEF, SEQ_GS_P_PT_GAMEF },
    { SEQ_GS_PT_RESULT, SEQ_GS_P_PT_RESULT },
    { SEQ_GS_PT_END, SEQ_GS_P_PT_END },
    { SEQ_GS_PT_END_FIELD, SEQ_GS_P_PT_END_FIELD },
    { SEQ_GS_WIFITOWER, SEQ_GS_P_WIFITOWER },
    { SEQ_GS_SAFARI_ROAD, SEQ_GS_P_SAFARI_ROAD },
    { SEQ_GS_SAFARI_HOUSE, SEQ_GS_P_SAFARI_HOUSE },
    { SEQ_GS_SAFARI_FIELD, SEQ_GS_P_SAFARI_FIELD },
    { SEQ_PL_BICYCLE, SEQ_PL_P_BICYCLE },
};

static struct {
    u8 micActive;
    u8 pad[3];
    u32 unk04;
    int monoFlag;
    u32 unk0C;
} sSoundMicWork;

static u8 sMicAutoParamBackup[0x28];

static s8 sWaveOutBuffer[0x7D0];

void GF_SND_BGM_DisableSet(u8 a0) {
    *(u8 *)GF_SdatGetAttrPtr(5) = a0;
}

u8 GF_SND_BGM_DisableCheck(void) {
    return *(u8 *)GF_SdatGetAttrPtr(5);
}

void sub_02004A60(u16 seqNo) {
    u16 *currentSeqNoPtr = (u16 *)GF_SdatGetAttrPtr(10);
    if (seqNo > SEQ_GS_P_START) {
        sub_02004AB8(seqNo);
        *currentSeqNoPtr = GBSounds_GetDSSeqNoByGBSeqNo(seqNo);
    } else {
        *currentSeqNoPtr = seqNo;
    }
    GF_SetCurrentPlayingBGM(0);
}

u16 GF_GetCurrentPlayingBGM() {
    return *(u16 *)GF_SdatGetAttrPtr(10);
}

void GF_SetCurrentPlayingBGM(u16 seqNo) {
    *(u16 *)GF_SdatGetAttrPtr(11) = seqNo;
}

static u16 sub_02004AAC(void) {
    return *(u16 *)GF_SdatGetAttrPtr(11);
}

void sub_02004AB8(u16 seqNo) {
    *(u16 *)GF_SdatGetAttrPtr(58) = seqNo;
}

void Sound_SetFieldBGM(u16 seqNo) {
    *(u16 *)GF_SdatGetAttrPtr(32) = seqNo;
}

void Sound_SetScene(int scene) {
    u8 *sceneMainPtr = (u8 *)GF_SdatGetAttrPtr(0x15);
    u8 *sceneSubPtr = (u8 *)GF_SdatGetAttrPtr(0x16);
    if ((u32)scene < 0x33) {
        *sceneMainPtr = scene;
        *sceneSubPtr = 0;
        return;
    }
    *sceneSubPtr = scene;
}

static void sub_02004AFC(int scene) {
    u8 *sceneMainPtr = (u8 *)GF_SdatGetAttrPtr(0x15);
    u8 *sceneSubPtr = (u8 *)GF_SdatGetAttrPtr(0x16);
    *sceneSubPtr = scene;
}

void sub_02004B10(void) {
    u8 *sceneSubPtr = (u8 *)GF_SdatGetAttrPtr(0x16);
    sub_02005318();
    *sceneSubPtr = 0;
}

BOOL sub_02004B24(int scene) {
    BOOL ret;

    switch (scene) {
    case 1:
    case 9:
    case 10:
    case 17:
    case 20:
    case 23:
        ret = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        break;
    case 19:
        ret = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_BALLOON02, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_BALLOON03_2, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_BALLOON05, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_BALLOON01, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_BALLOON07, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_ALERT4, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_DP_FW104, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_NOMI02, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_DP_023, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_POINT1, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_POINT2, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_POINT3, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_BALLOON05_2, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_DP_HAMARU, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_DP_CON_016, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_KIRAKIRA, 1);
        GF_Snd_LoadSeqEx(SEQ_SE_PL_FCALL, 1);
        break;
    case 14:
        ret = GF_Snd_LoadGroup(GROUP_SE_NUTMIXER);
        break;
    case 2:
    case 13:
        ret = GF_Snd_LoadGroup(GROUP_SE_BATTLE);
        break;
    case 21:
        GF_Snd_LoadBank(BANK_SE_HIROBA);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_HIROBA);
        break;
    case 3:
        ret = GF_Snd_LoadGroup(GROUP_SE_TRADE);
        break;
    case 4:
    case 22:
        ret = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        break;
    case 5:
        ret = GF_Snd_LoadGroup(GROUP_SE_BATTLE);
        break;
    case 11:
        ret = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        break;
    case 6:
        ret = GF_Snd_LoadGroup(GROUP_SE_CONTEST);
        break;
    case 8:
        ret = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        break;
    case 12:
        ret = GF_Snd_LoadGroup(GROUP_SE_NUTMIXER);
        break;
    case 16:
        GF_Snd_LoadGroup(GROUP_SE_FIELD);
        ret = GF_Snd_LoadGroup(GROUP_SE_DIG);
        break;
    case 15:
        ret = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        break;
    case 24:
        GF_Snd_LoadBank(BANK_SE_THLON);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_THLON);
        break;
    case 25:
        GF_Snd_LoadBank(BANK_SE_THLON_OPED);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_THLON_OPED);
        break;
    case 51:
        ret = GF_Snd_LoadGroup(GROUP_SE_BAG);
        break;
    case 64:
        ret = GF_Snd_LoadGroup(GROUP_SE_SLOT);
        break;
    case 52:
    case 67:
        ret = GF_Snd_LoadGroup(GROUP_SE_NAMEIN);
        break;
    case 7:
    case 53:
        ret = GF_Snd_LoadGroup(GROUP_SE_IMAGE);
        break;
    case 54:
        ret = GF_Snd_LoadGroup(GROUP_SE_ZUKAN);
        break;
    case 55:
    case 65:
        GF_Snd_LoadBank(BANK_SE_TOWNMAP);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_TOWNMAP);
        break;
    case 56:
        ret = GF_Snd_LoadGroup(GROUP_SE_TRCARD);
        break;
    case 57:
        ret = GF_Snd_LoadGroup(GROUP_SE_POKELIST);
        break;
    case 58:
        ret = GF_Snd_LoadGroup(GROUP_SE_DIG);
        break;
    case 59:
        ret = GF_Snd_LoadGroup(GROUP_SE_CUSTOM);
        break;
    case 60:
        ret = GF_Snd_LoadGroup(GROUP_SE_BAG);
        break;
    case 61:
        ret = GF_Snd_LoadGroup(GROUP_SE_NAMEIN);
        break;
    case 62:
        ret = GF_Snd_LoadGroup(GROUP_SE_CUSTOM);
        break;
    case 63:
        ret = GF_Snd_LoadGroup(GROUP_SE_CLIMAX);
        break;
    case 66:
        GF_Snd_LoadBank(BANK_SE_SCRATCH);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_SCRATCH);
        break;
    case 69:
        GF_Snd_LoadBank(BANK_SE_PLANTER);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_PLANTER);
        break;
    case 68:
        GF_Snd_LoadBank(BANK_SE_LINEAR);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_LINEAR);
        break;
    case 70:
        GF_Snd_LoadBank(BANK_SE_COIN);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_COIN);
        break;
    case 71:
        GF_Snd_LoadBank(BANK_SE_DENDO);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_DENDO);
        break;
    case 72:
        GF_Snd_LoadBank(BANK_SE_JUICE);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_JUICE);
        break;
    case 73:
        GF_Snd_LoadBank(BANK_SE_PHC);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_PHC);
        break;
    case 74:
        GF_Snd_LoadBank(BANK_SE_SEKIBAN);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_SEKIBAN);
        break;
    case 75:
        GF_Snd_LoadBank(BANK_SE_EVENT);
        ret = GF_Snd_LoadWaveArc(WAVE_ARC_SE_EVENT);
        break;
    default:
        GF_AssertFail();
        ret = 0;
        break;
    }
    return ret;
}

void sub_02004EB4(u16 seqNo) {
    Sound_SetSceneAndPlayBGM(4, seqNo, 1);
}

BOOL Sound_SetSceneAndPlayBGM(u8 scene, u16 seqNo, int unused) {
    u8 *sceneMainPtr = (u8 *)GF_SdatGetAttrPtr(0x15);
    u8 *sceneSubPtr = (u8 *)GF_SdatGetAttrPtr(0x16);
    u16 *afterFanfarePtr = (u16 *)GF_SdatGetAttrPtr(14);

    if ((u32)scene < 0x33) {
        if (*sceneMainPtr == scene) {
            return 0;
        }
    } else {
        if (*sceneSubPtr == scene) {
            return 0;
        }
    }

    Sound_SetScene(scene);

    switch (scene) {
    case 4:
        sub_02005AF8(0);
        sub_0200508C(seqNo, unused);
        *afterFanfarePtr = 0;
        break;
    case 5:
        sub_02005228(seqNo, unused);
        break;
    case 11:
        sub_02005260(seqNo, unused);
        break;
    case 6:
        sub_02005280(seqNo, unused);
        break;
    case 7:
        sub_020052A4(seqNo, unused);
        break;
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 69:
    case 70:
    case 71:
    case 72:
    case 74:
        sub_020052C8(scene);
        break;
    case 68:
        sub_020052C8(scene);
        PlayBGM(seqNo);
        break;
    case 1:
        sub_02005AF8(1);
        sub_020052E4(scene, seqNo, unused);
        break;
    case 14:
        sub_02005AF8(2);
        sub_020052E4(scene, seqNo, unused);
        break;
    case 2:
        sub_02005AF8(0);
        sub_020052E4(scene, seqNo, unused);
        break;
    case 3:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 73:
        sub_020052E4(scene, seqNo, unused);
        break;
    case 22:
        sub_020052E4(scene, seqNo, unused);
        break;
    default:
        return 0;
    }
    return 1;
}

static void sub_02005060(int scene) {
    int level;
    level = *(int *)GF_SdatGetAttrPtr(24);
    GF_Snd_LoadState(level);
    GF_Snd_SaveState((int *)GF_SdatGetAttrPtr(25));
    sub_02004B24(scene);
    GF_Snd_SaveState((int *)GF_SdatGetAttrPtr(26));
}

static void sub_0200508C(u16 seqNo, int unused) {
    int seqNoRaw;
    u16 currentSeq;
    int level;
    u8 *pauseFlag;

    pauseFlag = (u8 *)GF_SdatGetAttrPtr(12);
    GF_SdatGetAttrPtr(24);
    GF_SdatGetAttrPtr(32);

    seqNoRaw = GF_NNS_SndPlayerGetSeqNo(GF_GetSoundHandle(0));
    currentSeq = (u16)seqNoRaw;

    if (seqNoRaw > SEQ_GS_P_START) {
        currentSeq = GBSounds_GetDSSeqNoByGBSeqNo(currentSeq);
    }

    if (*pauseFlag == 0 && currentSeq == seqNo && sub_02004AAC() != SEQ_GS_BICYCLE) {
        return;
    }

    sub_020059E0(1);

    if (sSoundMicWork.unk0C == 0 || sSoundMicWork.unk04 == 0) {
        sub_02005FD8();
        sSoundMicWork.unk04 = 1;
    }

    if (currentSeq != seqNo) {
        sub_020053A8(1, 0);
        Sound_Stop();
    }

    if (*pauseFlag == 1) {
        level = sub_02005328(2);
        GF_Snd_LoadState(level);
        sub_02004B24(4);
        GF_Snd_SaveState((int *)GF_SdatGetAttrPtr(26));
        if (currentSeq != seqNo) {
            sub_020053A8(1, 0);
        }
        sub_02005150(seqNo, (u16)seqNoRaw);
        return;
    }

    PlayBGM(seqNo);
}

static void sub_02005150(u16 seqNo, u16 prevSeqNo) {
    u16 *fieldBGMPtr = (u16 *)GF_SdatGetAttrPtr(32);

    if (GF_GetBankBySeqNo(*fieldBGMPtr) == 0x2BC) {
        GF_Snd_LoadSeqEx(seqNo, 4);
        GF_AssertFail();
    } else {
        GF_Snd_LoadSeqEx(*fieldBGMPtr, 6);
    }

    GF_Snd_SaveState((int *)GF_SdatGetAttrPtr(27));
    sub_020053A8(1, 0);
    GF_SndStartFadeInBGM(0x7F, 0x28, 0);
    sub_020059E0(0);
}

void sub_020051A4(u16 seqNo, int force) {
    u8 *flag;
    u16 *fieldBGMPtr;
    int level;

    flag = (u8 *)GF_SdatGetAttrPtr(0x13);
    fieldBGMPtr = (u16 *)GF_SdatGetAttrPtr(32);

    if (*flag != 1 && force != 0) {
        return;
    }

    level = sub_02005328(1);
    GF_Snd_LoadState(level);
    sub_02004AFC(0);
    GF_Snd_LoadSeqEx(*fieldBGMPtr, 2);
    GF_Snd_SaveState((int *)GF_SdatGetAttrPtr(25));
    sub_02004B24(4);
    GF_Snd_SaveState((int *)GF_SdatGetAttrPtr(26));

    if (GF_GetBankBySeqNo(*fieldBGMPtr) == 0x2BC) {
        GF_Snd_LoadSeqEx(seqNo, 4);
        GF_AssertFail();
    } else {
        GF_Snd_LoadSeqEx(*fieldBGMPtr, 4);
    }

    GF_Snd_SaveState((int *)GF_SdatGetAttrPtr(27));
}

static void sub_02005228(u16 seqNo, int unused) {
    int level;
    GF_SdatGetAttrPtr(24);
    sub_02005B20();
    level = sub_02005328(2);
    GF_Snd_LoadState(level);
    sub_02004B24(5);
    GF_Snd_SaveState((int *)GF_SdatGetAttrPtr(26));
    sub_020059E0(1);
    PlayBGM(seqNo);
}

static void sub_02005260(u16 seqNo, int unused) {
    GF_SdatGetAttrPtr(24);
    Sound_Stop();
    Sound_ClearBGMPauseFlags();
    sub_02005060(4);
    PlayBGM(seqNo);
}

static void sub_02005280(u16 seqNo, int unused) {
    GF_SdatGetAttrPtr(24);
    Sound_Stop();
    sub_02005060(6);
    sub_020059E0(1);
    PlayBGM(seqNo);
}

static void sub_020052A4(u16 seqNo, int unused) {
    GF_SdatGetAttrPtr(24);
    Sound_Stop();
    sub_02005060(7);
    sub_020059E0(1);
    PlayBGM(seqNo);
}

static void sub_020052C8(int scene) {
    sub_02005318();
    sub_02004B24(scene);
    GF_Snd_SaveState((int *)GF_SdatGetAttrPtr(28));
}

static void sub_020052E4(int scene, u16 seqNo, int unused) {
    GF_SdatGetAttrPtr(24);
    Sound_Stop();
    sub_02005060(scene);
    PlayBGM(seqNo);
}

void BGM_SaveStateAndPlayNew(u16 seqNo) {
    GetSoundDataPointer();
    sub_02005B20();
    PlayBGM(seqNo);
}

static void sub_02005318(void) {
    int level = sub_02005328(4);
    GF_Snd_LoadState(level);
}

int sub_02005328(int index) {
    int *saveLevel;

    GetSoundDataPointer();
    if (index >= 7) {
        GF_AssertFail();
        return *(int *)GF_SdatGetAttrPtr(27);
    }

    switch (index) {
    case 0:
        saveLevel = (int *)GF_SdatGetAttrPtr(23);
        break;
    case 1:
        saveLevel = (int *)GF_SdatGetAttrPtr(24);
        break;
    case 2:
        saveLevel = (int *)GF_SdatGetAttrPtr(25);
        break;
    case 3:
        saveLevel = (int *)GF_SdatGetAttrPtr(26);
        break;
    case 4:
        saveLevel = (int *)GF_SdatGetAttrPtr(27);
        break;
    case 5:
        saveLevel = (int *)GF_SdatGetAttrPtr(28);
        break;
    case 6:
        saveLevel = (int *)GF_SdatGetAttrPtr(29);
        break;
    }
    return *saveLevel;
}

void sub_020053A8(u8 player, u8 pause) {
    u8 *flag;
    int handleNo;
    u16 seqNo;

    if (player == 1) {
        flag = (u8 *)GF_SdatGetAttrPtr(12);
        handleNo = 0;
    } else if (player == 7) {
        flag = (u8 *)GF_SdatGetAttrPtr(13);
        handleNo = 7;
    } else {
        return;
    }

    if (pause == 0) {
        seqNo = GF_NNS_SndPlayerGetSeqNo(GF_GetSoundHandle(handleNo));
        sub_02004A60((u16)seqNo);
    }

    NNS_SndPlayerPause(GF_GetSoundHandle(handleNo), pause);
    *flag = pause;
}

void Sound_ClearBGMPauseFlags(void) {
    u8 *flag1 = (u8 *)GF_SdatGetAttrPtr(12);
    u8 *flag2 = (u8 *)GF_SdatGetAttrPtr(13);
    *flag1 = 0;
    *flag2 = 0;
}

void GF_SndHandleMoveVolume(int playerNo, int targetVol, int frames) {
    NNS_SndPlayerMoveVolume(GF_GetSoundHandle(playerNo), targetVol, frames);
    if (playerNo == 0) {
        GF_SndWorkSetGbSoundsVolume((u8)targetVol);
    }
}

void GF_SndHandleSetInitialVolume(s32 playerNo, s32 volume) {
    if (volume < 0) {
        volume = 0;
    }
    if (volume > 127) {
        volume = 127;
    }
    NNS_SndPlayerSetInitialVolume(GF_GetSoundHandle(playerNo), volume);
}

void sub_02005448(int seqNo) {
    int playerNo;
    playerNo = GF_GetSndHandleByPlayerNo(GF_GetPlayerNoBySeq((u16)seqNo));
    sub_02005464(seqNo, playerNo);
}

void sub_02005464(int seqNo, int handleNo) {
    int volume;
    const NNSSndSeqParam *seqParam;

    seqParam = NNS_SndArcGetSeqParam(seqNo);

    if (handleNo == 1 || handleNo == 8) {
        volume = 127;
    } else {
        if (seqParam == NULL) {
            return;
        }
        volume = seqParam->volume;
    }

    if (sub_020378CC() == 1) {
        GF_SndHandleSetInitialVolume(handleNo, volume / 5);
    }
}

u8 GF_GetVolumeBySeqNo(u16 seqNo) {
    const NNSSndSeqParam *seqParam = NNS_SndArcGetSeqParam(seqNo);
    if (seqParam == NULL) {
        return 0;
    }
    return seqParam->volume;
}

void GF_SetVolumeBySeqNo(u16 seqNo, u16 volume) {
    int playerNo = GF_GetPlayerNoBySeq(seqNo);
    int handleNo = GF_GetSndHandleByPlayerNo(playerNo);
    GF_SndHandleSetInitialVolume(handleNo, volume);
}

u32 GF_SndPlayerCountPlayingSeqByPlayerNo(u32 playerNo) {
    if ((s32)playerNo < 0) {
        GF_AssertFail();
    }
    return NNS_SndPlayerCountPlayingSeqByPlayerNo(playerNo);
}

int GF_GetPlayerNoBySeq(int seqNo) {
    const NNSSndSeqParam *seqParam;
    if (seqNo == 0) {
        return 0xFF;
    }
    seqParam = NNS_SndArcGetSeqParam(seqNo);
    if (seqParam == NULL) {
        return 0xFF;
    }
    return seqParam->playerNo;
}

int GF_NNS_SndPlayerGetSeqNo(NNSSndHandle *handle) {
    return NNS_SndPlayerGetSeqNo(handle);
}

const void *GF_GetBankInfoBySeqNo(u16 seqNo) {
    return NNS_SndArcGetBankInfo(GF_GetBankBySeqNo(seqNo));
}

u16 GF_GetBankBySeqNo(u16 seqNo) {
    const NNSSndSeqParam *seqParam = NNS_SndArcGetSeqParam(seqNo);
    if (seqParam == NULL) {
        return 0;
    }
    return seqParam->bankNo;
}

BOOL sub_02005518(void) {
    return GF_SndWorkMicCounterFull();
}

BOOL GF_MIC_StartAutoSampling(MICAutoParam *param) {
    MICResult result;
    result = MIC_StartAutoSampling(param);
    sSoundMicWork.micActive = 1;
    *(MICAutoParam *)sMicAutoParamBackup = *param;
    return result;
}

void GF_MIC_StopAutoSampling(void) {
    GetSoundDataPointer();
    sSoundMicWork.micActive = 0;
    MIC_StopAutoSampling();
}

void GF_MicPauseOnLidClose(void) {
    if (sSoundMicWork.micActive != 0) {
        if (MIC_StopAutoSampling() != 0) {
            GF_AssertFail();
        }
    }
}

void GF_MicResumeOnLidOpen(void) {
    if (sSoundMicWork.micActive != 0) {
        if (MIC_StartAutoSampling((MICAutoParam *)sMicAutoParamBackup) != 0) {
            GF_AssertFail();
        }
    }
    GF_SndWorkMicCounterReset();
}

NNSSndWaveOutHandle *sub_020055AC(int channel) {
    u8 *flag1;
    u8 *flag2;

    GetSoundDataPointer();
    flag1 = (u8 *)GF_SdatGetAttrPtr(16);
    flag2 = (u8 *)GF_SdatGetAttrPtr(17);

    if (channel != 14 && channel != 15) {
        GF_AssertFail();
    }

    if (channel == 14) {
        GF_ASSERT(*flag1 != 0);
    }

    if (channel == 15) {
        GF_ASSERT(*flag2 != 0);
    }

    if (channel == 14) {
        return (NNSSndWaveOutHandle *)GF_SdatGetAttrPtr(0);
    }

    return (NNSSndWaveOutHandle *)GF_SdatGetAttrPtr(1);
}

BOOL sub_02005600(int channel) {
    u8 *flag1;
    u8 *flag2;
    u32 *handlePtr;

    GetSoundDataPointer();
    flag1 = (u8 *)GF_SdatGetAttrPtr(16);
    flag2 = (u8 *)GF_SdatGetAttrPtr(17);

    if (channel != 14 && channel != 15) {
        GF_AssertFail();
    }

    if (channel == 14) {
        if (*flag1 == 0) {
            handlePtr = (u32 *)GF_SdatGetAttrPtr(0);
            *handlePtr = (u32)NNS_SndWaveOutAllocChannel(channel);
            if (*handlePtr == 0) {
                return 0;
            }
            *flag1 = 1;
        } else {
            GF_AssertFail();
        }
    } else {
        if (*flag2 == 0) {
            handlePtr = (u32 *)GF_SdatGetAttrPtr(1);
            *handlePtr = (u32)NNS_SndWaveOutAllocChannel(channel);
            if (*handlePtr == 0) {
                return 0;
            }
            *flag2 = 1;
        } else {
            GF_AssertFail();
        }
    }
    return 1;
}

void sub_02005680(int channel) {
    u8 *flag1;
    u8 *flag2;
    NNSSndWaveOutHandle *handle;

    GetSoundDataPointer();
    flag1 = (u8 *)GF_SdatGetAttrPtr(16);
    flag2 = (u8 *)GF_SdatGetAttrPtr(17);

    if (channel != 14 && channel != 15) {
        GF_AssertFail();
        return;
    }

    if (channel == 14) {
        if (*flag1 == 1) {
            handle = sub_020055AC(channel);
            NNS_SndWaveOutFreeChannel(*(NNSSndWaveOutHandle *)handle);
            *flag1 = 0;
            return;
        }
        GF_AssertFail();
        return;
    }

    if (*flag2 == 1) {
        handle = sub_020055AC(channel);
        NNS_SndWaveOutFreeChannel(*(NNSSndWaveOutHandle *)handle);
        *flag2 = 0;
        return;
    }
    GF_AssertFail();
}

BOOL sub_020056E8(UnkStruct_02004A44_0 *wavParam, int channel) {
    BOOL result;

    result = NNS_SndWaveOutStart(
        *wavParam->unk00,
        wavParam->unk04,
        wavParam->unk08,
        wavParam->unk0c,
        wavParam->unk10,
        wavParam->unk14,
        wavParam->unk18,
        wavParam->unk1c,
        wavParam->unk20,
        wavParam->unk24
    );

    if (!result) {
        sub_02005680(channel);
    }
    return result;
}

void sub_02005728(int channel) {
    NNSSndWaveOutHandle *handle = sub_020055AC(channel);
    NNS_SndWaveOutStop(*(NNSSndWaveOutHandle *)handle);
}

BOOL sub_02005738(int channel) {
    NNSSndWaveOutHandle *handle = sub_020055AC(channel);
    return NNS_SndWaveOutIsPlaying(*(NNSSndWaveOutHandle *)handle);
}

void sub_02005748(int channel, int pan) {
    NNSSndWaveOutHandle *handle;
    if ((u32)pan > 127) {
        pan = 127;
    }
    handle = sub_020055AC(channel);
    NNS_SndWaveOutSetPan(*(NNSSndWaveOutHandle *)handle, pan);
}

void sub_02005760(int channel, int speed) {
    NNSSndWaveOutHandle *handle = sub_020055AC(channel);
    NNS_SndWaveOutSetSpeed(*(NNSSndWaveOutHandle *)handle, speed);
}

void sub_02005774(int channel, int volume) {
    NNSSndWaveOutHandle *handle;
    if (sub_020378CC() == 1) {
        handle = sub_020055AC(channel);
        NNS_SndWaveOutSetVolume(*(NNSSndWaveOutHandle *)handle, volume / 5);
    } else {
        handle = sub_020055AC(channel);
        NNS_SndWaveOutSetVolume(*(NNSSndWaveOutHandle *)handle, volume);
    }
}

BOOL sub_020057AC(int waveArcNo, int loopFlag, int pan, int channel, int heapId) {
    UnkStruct_02004A44_0 wavParam;
    const NNSSndArcWaveArcInfo *waveArcInfo;
    u32 fileSize;
    u32 *bufferPtr;
    BOOL result;

    GetSoundDataPointer();
    bufferPtr = (u32 *)GF_SdatGetAttrPtr(34);

    if (channel != 14 && channel != 15) {
        GF_AssertFail();
    }

    waveArcInfo = NNS_SndArcGetWaveArcInfo(waveArcNo);
    if (waveArcInfo == NULL) {
        GF_AssertFail();
        return 0;
    }

    fileSize = NNS_SndArcGetFileSize(waveArcInfo->fileId);
    if (fileSize == 0) {
        GF_AssertFail();
        return 0;
    }

    if (channel == 14) {
        *bufferPtr = (u32)Heap_Alloc((enum HeapID)heapId, fileSize);
        if (*bufferPtr == 0) {
            GF_AssertFail();
            return 0;
        }
        memset((void *)*bufferPtr, 0, fileSize);
        if (NNS_SndArcReadFile(waveArcInfo->fileId, (void *)*bufferPtr, fileSize, 0) == -1) {
            GF_AssertFail();
            return 0;
        }
        sub_02005898((u8 *)*bufferPtr, fileSize);
    }

    wavParam.unk00 = (NNSSndWaveOutHandle *)sub_020055AC(channel);
    wavParam.unk04 = NNS_SND_WAVE_FORMAT_PCM8;
    wavParam.unk08 = (void *)*bufferPtr;
    wavParam.unk0c = 0;
    wavParam.unk10 = 0;
    wavParam.unk14 = fileSize;
    wavParam.unk18 = 0x3443;
    wavParam.unk1c = loopFlag;
    wavParam.unk20 = 6 << 12;
    wavParam.unk24 = pan;

    result = sub_020056E8(&wavParam, channel);
    sub_02005774(channel, loopFlag);
    *(u8 *)GF_SdatGetAttrPtr(15) = 1;
    return result;
}

static void sub_02005898(u8 *data, u32 size) {
    u32 i = 0;
    u32 half = size >> 1;
    if (half == 0) {
        return;
    }
    size--;
    do {
        u8 temp = data[i];
        data[i] = data[size - i];
        data[size - i] = temp;
        i++;
    } while (i < half);
}

void sub_020058B8(int channel) {
    u8 *flag;
    u32 *bufferPtr;

    GetSoundDataPointer();
    flag = (u8 *)GF_SdatGetAttrPtr(15);
    bufferPtr = (u32 *)GF_SdatGetAttrPtr(34);

    GF_ASSERT(channel == 14 || channel == 15);

    sub_02005728(channel);
    if (*flag == 1) {
        *flag = 0;
        Heap_Free((void *)*bufferPtr);
    }
}

static int sub_020058F4(void) {
    int active = NNS_SndCaptureIsActive();
    if (active == 1) {
        sub_02005908();
    }
    return active;
}

static int sub_02005908(void) {
    return NNS_SndCaptureGetCaptureType();
}

static void sub_02005910(int a0) {
    NNS_SndCaptureStopReverb(a0);
}

void GF_SndHandleSetTrackPitch(int playerNo, int trackMask, int pitch) {
    NNS_SndPlayerSetTrackPitch(GF_GetSoundHandle(playerNo), trackMask, pitch);
}

void sub_0200592C(u16 seqNo, int trackMask, int pitch) {
    int playerNo = GF_GetPlayerNoBySeq(seqNo);
    int handleNo = GF_GetSndHandleByPlayerNo(playerNo);
    GF_SndHandleSetTrackPitch(handleNo, trackMask, pitch);
}

void sub_02005944(int playerNo, int trackMask, int pitch) {
    int handleNo = GF_GetSndHandleByPlayerNo(playerNo);
    GF_SndHandleSetTrackPitch(handleNo, trackMask, pitch);
}

void GF_SndHandleSetTrackPan(int playerNo, int trackMask, int pan) {
    NNS_SndPlayerSetTrackPan(GF_GetSoundHandle(playerNo), trackMask, pan);
}

void GF_SndHandleSetTempoRatio(int playerNo, int ratio) {
    NNS_SndPlayerSetTempoRatio(GF_GetSoundHandle(playerNo), ratio);
}

void GF_SndSetMonoFlag(int flag) {
    NNS_SndSetMonoFlag(flag);
    sSoundMicWork.monoFlag = flag;
}

void sub_02005990(int a0) {
    *(int *)GF_SdatGetAttrPtr(7) = a0;
}

static void sub_020059A0(int a0) {
    *(int *)GF_SdatGetAttrPtr(8) = a0;
}

BOOL GF_SndGetAfterFadeDelayTimer(void) {
    u16 *timer = (u16 *)GF_SdatGetAttrPtr(8);
    if (*timer == 0) {
        *timer = 0;
        return 0;
    }
    (*timer)--;
    return *timer;
}

void Sound_SetMasterVolume(int volume) {
    NNS_SndSetMasterVolume(volume);
}

s8 *sub_020059D8(void) {
    return sWaveOutBuffer;
}

void sub_020059E0(int a0) {
    *(u8 *)GF_SdatGetAttrPtr(0x13) = a0;
}

u32 GF_NowStartMusicId(u16 seqNo, u16 fadeOut, int afterDelay, u8 isPaused, u32 fadeIn) {
    return sub_02005A10(4, seqNo, fadeOut, afterDelay, isPaused, fadeIn);
}

static u32 sub_02005A10(int mode, u16 seqNo, u16 fadeOut, int afterDelay, u8 isPaused, u32 fadeIn) {
    u8 *sceneSubPtr = (u8 *)GF_SdatGetAttrPtr(0x16);
    sub_02005AB0(mode, seqNo, fadeOut, afterDelay, isPaused, fadeIn);
    *sceneSubPtr = 0;
    GF_SndSetState(5);
    return 1;
}

u32 GF_FadeStartMusicId(u16 seqNo, u16 fadeOut, int afterDelay, int fadeTimer, u8 isPaused, u32 fadeIn) {
    return sub_02005A74(4, seqNo, fadeOut, afterDelay, fadeTimer, isPaused, fadeIn);
}

static u32 sub_02005A74(int mode, u16 seqNo, u16 fadeOut, int afterDelay, int fadeTimer, u8 isPaused, u32 fadeIn) {
    int *fadeInDurationPtr = (int *)GF_SdatGetAttrPtr(9);
    sub_02005AB0(mode, seqNo, fadeOut, afterDelay, isPaused, fadeIn);
    *fadeInDurationPtr = fadeTimer;
    GF_SndSetState(6);
    return 1;
}

static void sub_02005AB0(int mode, u16 seqNo, u16 fadeOut, int afterDelay, u8 isPaused, u32 fadeIn) {
    u32 *bankInfoPtr = (u32 *)GF_SdatGetAttrPtr(2);
    GF_SndStartFadeOutBGM(0, fadeOut);
    sub_02004A60(0);
    GF_SetCurrentPlayingBGM(seqNo);
    sub_020059A0(afterDelay);
    *bankInfoPtr = (u32)GF_GetBankInfoBySeqNo(seqNo);
    sub_020059E0(isPaused);
}

static void GF_SndSetAllocatableChannelForBGMPlayer(u32 channelMask) {
    NNS_SndPlayerSetAllocatableChannel(PLAYER_BGM, channelMask);
}

void sub_02005AF8(int mode) {
    if (mode == 0) {
        GF_SndSetAllocatableChannelForBGMPlayer(0xA7FE);
        sub_02005910(0);
    } else {
        GF_SndSetAllocatableChannelForBGMPlayer(0x3FFF);
    }
    sub_020058F4();
}

static void sub_02005B20(void) {
    int seqNo;
    if (!GF_SndGetFadeTimer()) {
        seqNo = GF_NNS_SndPlayerGetSeqNo(GF_GetSoundHandle(0));
        if (seqNo != -1) {
            sub_02005FD8();
            sub_020053A8(1, 1);
            return;
        }
    }
    Sound_Stop();
}

void GF_SndHandleSetPlayerVolume(int playerNo, int volume) {
    NNS_SndPlayerSetPlayerVolume(playerNo, volume);
}

void sub_02005B58(int a0) {
    *(u8 *)GF_SdatGetAttrPtr(53) = a0;
}

void sub_02005B68(int a0) {
    *(u8 *)GF_SdatGetAttrPtr(54) = a0;
}

void sub_02005B78(u16 seqNo, u16 varNo, s16 *outPtr) {
    NNSSndHandle *handle;
    GF_ASSERT(outPtr != NULL);
    GF_ASSERT(varNo <= 15);
    handle = GF_GetSoundHandle(GF_GetSndHandleByPlayerNo(GF_GetPlayerNoBySeq(seqNo)));
    NNS_SndPlayerReadVariable(handle, varNo, outPtr);
}

void sub_02005BA8(u16 seqNo) {
    u8 *attrPtr = (u8 *)GF_SdatGetAttrPtr(55);
    u8 index = attrPtr[0];
    GF_SetVolumeBySeqNo(seqNo, sGBPitchVolTable[index][1]);
    GF_SndHandleSetTrackPitch(4, 0xFFFF, sGBPitchVolTable[attrPtr[0]][0]);
    if (attrPtr[1] >= 8) {
        attrPtr[1] = 0;
    }
}

void sub_02005BEC(BOOL a0) {
    *(u8 *)GF_SdatGetAttrPtr(56) = a0;
}

BOOL sub_02005BFC(void) {
    return *(u8 *)GF_SdatGetAttrPtr(56);
}

static void sub_02005C08(int a0) {
    *(u8 *)GF_SdatGetAttrPtr(57) = a0;
}

BOOL SoundSys_GetGBSoundsState(void) {
    return *(u8 *)GF_SdatGetAttrPtr(57);
}

void SoundSys_ToggleGBSounds(void) {
    u16 currentBGM;
    u8 gbVol;
    u16 gbSeqNo;

    if (SoundSys_GetGBSoundsState() == 0) {
        sub_02005C08(1);
    } else {
        sub_02005C08(0);
    }

    if (sub_02004AAC() == 0) {
        currentBGM = GF_GetCurrentPlayingBGM();
        gbVol = GF_SndWorkGetGbSoundsVolume();
        gbSeqNo = GBSounds_GetGBSeqNoByDSSeqNo(currentBGM);
        if (currentBGM != gbSeqNo) {
            PlayBGM(currentBGM);
        }
        GF_SndHandleMoveVolume(0, gbVol, 0);
    }
}

u16 GBSounds_GetGBSeqNoByDSSeqNo(u16 dsSeqNo) {
    u16 i;
    for (i = 0; i < 0x88; i++) {
        if (dsSeqNo == sGBSoundsSeqTable[i][0]) {
            return sGBSoundsSeqTable[i][1];
        }
    }
    return dsSeqNo;
}

static u16 GBSounds_GetDSSeqNoByGBSeqNo(u16 gbSeqNo) {
    u16 i;
    for (i = 0; i < 0x88; i++) {
        if (gbSeqNo == sGBSoundsSeqTable[i][1]) {
            return sGBSoundsSeqTable[i][0];
        }
    }
    return gbSeqNo;
}

void GBSounds_SetAllocatableChannels(void) {
    NNS_SndPlayerSetTrackAllocatableChannel(GF_GetSoundHandle(0), 0xF, 0xA7FE);
    NNS_SndPlayerSetTrackAllocatableChannel(GF_GetSoundHandle(7), 0xF, 0xA7FE);
    NNS_SndPlayerSetTrackAllocatableChannel(GF_GetSoundHandle(2), 0xF, 0xA7FE);
}

void sub_02005CF4(u32 a0) {
    sSoundMicWork.unk0C = a0;
}

void sub_02005D00(void) {
    sSoundMicWork.unk0C = 0;
    sSoundMicWork.unk04 = 0;
}
