#ifndef POKEHEARTGOLD_SOUND_02004A44_INTERNAL_H
#define POKEHEARTGOLD_SOUND_02004A44_INTERNAL_H

#include <nitro.h>
#include <nnsys.h>

typedef struct UnkStruct_02004A44_0 {
    NNSSndWaveOutHandle *unk00;
    NNSSndWaveFormat unk04;
    void *unk08;
    u32 unk0c;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    s32 unk1c;
    u32 unk20;
    s32 unk24;
} UnkStruct_02004A44_0;

void sub_02004B10(void);
void GF_SndHandleMoveVolume(int, int, int);
void Sound_SetMasterVolume(int a0);
void sub_02005D00(void);
void GF_MicPauseOnLidClose(void);
void GF_MicResumeOnLidOpen(void);
BOOL SoundSys_GetGBSoundsState(void);
void SoundSys_ToggleGBSounds(void);
BOOL sub_02005738(int a0);
s8 *sub_020059D8(void);
BOOL sub_02005600(int);
void sub_020058B8(int);
void sub_02005680(int);
NNSSndWaveOutHandle *sub_020055AC(int);
BOOL sub_020056E8(UnkStruct_02004A44_0 *wavParam, int);
void sub_02005774(int, int);
BOOL GF_MIC_StartAutoSampling(MICAutoParam *param);
void GF_MIC_StopAutoSampling(void);
void PlayCryEx(int, int, int, int, int, int);
BOOL sub_02004B24(int);
void BGM_SaveStateAndPlayNew(u16 seqNo);
u16 GF_GetCurrentPlayingBGM();
void GF_SetCurrentPlayingBGM(u16 seqNo);
void sub_020053A8(u8 a0, u8 a1);
void GF_SND_BGM_DisableSet(u8 a0);
u8 GF_SND_BGM_DisableCheck(void);
BOOL sub_02005518(void);
BOOL Sound_SetSceneAndPlayBGM(u8 scene, u16 seqNo, int unused);
void GF_SetVolumeBySeqNo(u16 seqNo, u16 volume);
void GF_SndHandleSetPlayerVolume(int playerNo, int volume);
void GF_SndHandleSetInitialVolume(s32 playerNo, s32 volume);
u8 GF_GetVolumeBySeqNo(u16 seqNo);
void sub_02005448(int seqNo);
void sub_02005464(int seqNo, int handleNo);
void Sound_SetScene(int a0);
void sub_02005BEC(BOOL);
void Sound_ClearBGMPauseFlags(void);
void sub_02004EB4(u16 seqNo);
void sub_020051A4(u16 seqNo, int force);
int sub_02005328(int index);
void sub_02005990(int a0);
void sub_02005BA8(u16 seqNo);
BOOL sub_02005BFC(void);
void sub_02004A60(u16 seqNo);
void sub_02004AB8(u16 seqNo);
void Sound_SetFieldBGM(u16 seqNo);
void sub_020059E0(int a0);
void sub_02005AF8(int mode);
int GF_GetPlayerNoBySeq(int seqNo);
u16 GF_GetBankBySeqNo(u16 seqNo);
int GF_NNS_SndPlayerGetSeqNo(NNSSndHandle *handle);
const void *GF_GetBankInfoBySeqNo(u16 seqNo);
u16 GBSounds_GetGBSeqNoByDSSeqNo(u16 dsSeqNo);
u32 GF_SndPlayerCountPlayingSeqByPlayerNo(u32 playerNo);
void GF_SndHandleSetTrackPitch(int playerNo, int trackMask, int pitch);
void sub_0200592C(u16 seqNo, int trackMask, int pitch);
void sub_02005944(int playerNo, int trackMask, int pitch);
void GF_SndHandleSetTrackPan(int playerNo, int trackMask, int pan);
void GF_SndHandleSetTempoRatio(int playerNo, int ratio);
void GF_SndSetMonoFlag(int flag);
BOOL GF_SndGetAfterFadeDelayTimer(void);
BOOL sub_020057AC(int waveArcNo, int loopFlag, int pan, int channel, int heapId);
void sub_02005728(int channel);
void sub_02005748(int channel, int pan);
void sub_02005760(int channel, int speed);
u32 GF_NowStartMusicId(u16 seqNo, u16 fadeOut, int afterDelay, u8 isPaused, u32 fadeIn);
u32 GF_FadeStartMusicId(u16 seqNo, u16 fadeOut, int afterDelay, int fadeTimer, u8 isPaused, u32 fadeIn);
void GBSounds_SetAllocatableChannels(void);
void sub_02005B58(int a0);
void sub_02005B68(int a0);
void sub_02005B78(u16 seqNo, u16 varNo, s16 *outPtr);
void sub_02005CF4(u32 a0);

#endif // POKEHEARTGOLD_SOUND_02004A44_INTERNAL_H
