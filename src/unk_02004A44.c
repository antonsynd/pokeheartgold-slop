#include "global.h"

#include "constants/sndseq.h"

#include "heap.h"

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

typedef struct SndMicState {
    u8 micActive;
    int unk4;
    int monoFlag;
    int unkC;
} SndMicState;

typedef struct SndMicParamStore {
    MICAutoParam param;
    u8 pad[0xC];
} SndMicParamStore;

typedef struct SndWaveArcInfo {
    u32 fileId : 24;
    u32 flag : 8;
} SndWaveArcInfo;

typedef struct SndGBSeqPair {
    u16 ds;
    u16 gb;
} SndGBSeqPair;

typedef struct SndPitchVolume {
    u8 pitch;
    u8 volume;
    u16 pad;
} SndPitchVolume;

typedef struct SndUnk37 {
    u8 idx;
    u8 cnt;
} SndUnk37;

extern void *GF_SdatGetAttrPtr(u32 attr);
extern void *GetSoundDataPointer(void);
extern void GF_SndSetState(u32 state);
extern void GF_Snd_SaveState(int *level_p);
extern int GF_Snd_LoadState(int level);
extern BOOL GF_Snd_LoadGroup(int groupNo);
extern BOOL GF_Snd_LoadSeqEx(int seqNo, u32 loadFlag);
extern BOOL GF_Snd_LoadWaveArc(int waveArcNo);
extern BOOL GF_Snd_LoadBank(int bankNo);
extern NNSSndHandle *GF_GetSoundHandle(int playerNo);
extern int GF_GetSndHandleByPlayerNo(int playerNo);
extern BOOL GF_SndWorkMicCounterFull(void);
extern void GF_SndWorkMicCounterReset(void);
extern void GF_SndWorkSetGbSoundsVolume(u8 volume);
extern u8 GF_SndWorkGetGbSoundsVolume(void);
extern void PlayBGM(u16 seqNo);
extern void GF_SndStartFadeInBGM(u32 a0, u32 a1, u32 a2);
extern void GF_SndStartFadeOutBGM(u16 a0, u16 a1);
extern BOOL GF_SndGetFadeTimer(void);
extern void Sound_Stop(void);
extern void sub_02005FD8(void);
extern BOOL sub_020378CC(void);
extern int _s32_div_f(int a, int b);

extern int MIC_StartAutoSampling(MICAutoParam *param);
extern int MIC_StopAutoSampling(void);

extern void NNS_SndPlayerPause(NNSSndHandle *handle, BOOL flag);
extern void NNS_SndPlayerMoveVolume(NNSSndHandle *handle, int volume, int frames);
extern void NNS_SndPlayerSetInitialVolume(NNSSndHandle *handle, int volume);
extern int NNS_SndPlayerGetSeqNo(NNSSndHandle *handle);
extern void *NNS_SndArcGetBankInfo(int bankNo);
extern void *NNS_SndArcGetWaveArcInfo(int waveArcNo);
extern u32 NNS_SndArcGetFileSize(u32 fileId);
extern s32 NNS_SndArcReadFile(u32 fileId, void *dst, s32 size, s32 offset);
extern NNSSndWaveOutHandle NNS_SndWaveOutAllocChannel(int channelNo);
extern void NNS_SndWaveOutFreeChannel(NNSSndWaveOutHandle handle);
extern BOOL NNS_SndWaveOutStart(NNSSndWaveOutHandle handle, NNSSndWaveFormat format, void *data, BOOL loopFlag, u32 loopStart, u32 samples, u32 sampleRate, s32 volume, u32 speed, s32 pan);
extern void NNS_SndWaveOutStop(NNSSndWaveOutHandle handle);
extern BOOL NNS_SndWaveOutIsPlaying(NNSSndWaveOutHandle handle);
extern void NNS_SndWaveOutSetPan(NNSSndWaveOutHandle handle, int pan);
extern void NNS_SndWaveOutSetSpeed(NNSSndWaveOutHandle handle, u32 speed);
extern void NNS_SndWaveOutSetVolume(NNSSndWaveOutHandle handle, int volume);
extern BOOL NNS_SndCaptureIsActive(void);
extern int NNS_SndCaptureGetCaptureType(void);
extern void NNS_SndCaptureStopReverb(int frames);
extern void NNS_SndPlayerSetTrackPitch(NNSSndHandle *handle, u32 trackBitMask, int pitch);
extern void NNS_SndPlayerSetTrackPan(NNSSndHandle *handle, u32 trackBitMask, int pan);
extern void NNS_SndPlayerSetTempoRatio(NNSSndHandle *handle, int ratio);
extern BOOL NNS_SndPlayerReadVariable(NNSSndHandle *handle, int varNo, s16 *var);
extern void NNS_SndPlayerSetTrackAllocatableChannel(NNSSndHandle *handle, u32 trackBitMask, u32 chBitFlag);
extern void NNS_SndSetMonoFlag(BOOL flag);
extern void NNS_SndSetMasterVolume(int volume);

void GF_SND_BGM_DisableSet(u8 a0);
u8 GF_SND_BGM_DisableCheck(void);
void sub_02004A60(u16 seqNo);
u16 GF_GetCurrentPlayingBGM(void);
void GF_SetCurrentPlayingBGM(u16 seqNo);
u16 sub_02004AAC(void);
void sub_02004AB8(u16 seqNo);
void Sound_SetFieldBGM(u16 seqNo);
void Sound_SetScene(u8 scene);
void sub_02004AFC(u8 a0);
void sub_02004B10(void);
BOOL sub_02004B24(int a0);
BOOL sub_02004EB4(u16 seqNo);
BOOL Sound_SetSceneAndPlayBGM(u8 scene, u16 seqNo, int unused);
void sub_02005060(int a0);
void sub_0200508C(u16 seqNo, int unused);
void sub_02005150(u16 seqNo, u16 unused);
void sub_020051A4(int seqNo, int a1);
void sub_02005228(u16 seqNo, int unused);
void sub_02005260(u16 seqNo, int unused);
void sub_02005280(u16 seqNo, int unused);
void sub_020052A4(u16 seqNo, int unused);
void sub_020052C8(int a0);
void sub_020052E4(int a0, u16 seqNo, int unused);
void BGM_SaveStateAndPlayNew(u16 seqNo);
void sub_02005318(void);
int sub_02005328(int a0);
void sub_020053A8(u8 a0, u8 a1);
void Sound_ClearBGMPauseFlags(void);
void GF_SndHandleMoveVolume(int handleNo, int volume, int frames);
void GF_SndHandleSetInitialVolume(int handleNo, int volume);
void sub_02005448(int seqNo);
void sub_02005464(int seqNo, int handleNo);
u8 GF_GetVolumeBySeqNo(u16 seqNo);
void GF_SetVolumeBySeqNo(u16 seqNo, u16 volume);
int GF_SndPlayerCountPlayingSeqByPlayerNo(int playerNo);
u8 GF_GetPlayerNoBySeq(int seqNo);
int GF_NNS_SndPlayerGetSeqNo(NNSSndHandle *handle);
void *GF_GetBankInfoBySeqNo(u16 seqNo);
u16 GF_GetBankBySeqNo(int seqNo);
BOOL sub_02005518(void);
int GF_MIC_StartAutoSampling(MICAutoParam *param);
void GF_MIC_StopAutoSampling(void);
void GF_MicPauseOnLidClose(void);
void GF_MicResumeOnLidOpen(void);
NNSSndWaveOutHandle *sub_020055AC(int ch);
BOOL sub_02005600(int ch);
void sub_02005680(int ch);
BOOL sub_020056E8(UnkStruct_02004A44_0 *wavParam, int ch);
void sub_02005728(int ch);
BOOL sub_02005738(int ch);
void sub_02005748(int ch, u8 pan);
void sub_02005760(int ch, int speed);
void sub_02005774(int ch, int volume);
BOOL sub_020057AC(int waveArcNo, int volume, int pan, int ch, enum HeapID heapId);
void sub_02005898(u8 *buf, u32 size);
void sub_020058B8(int ch);
BOOL sub_020058F4(void);
int sub_02005908(void);
void sub_02005910(int frames);
void GF_SndHandleSetTrackPitch(int handleNo, int track, int pitch);
void sub_0200592C(u16 seqNo, int track, int pitch);
void sub_02005944(int playerNo, int track, int pitch);
void GF_SndHandleSetTrackPan(int handleNo, int track, int pan);
void GF_SndHandleSetTempoRatio(int handleNo, int ratio);
void GF_SndSetMonoFlag(int flag);
void sub_02005990(int a0);
void sub_020059A0(int a0);
BOOL GF_SndGetAfterFadeDelayTimer(void);
void Sound_SetMasterVolume(int volume);
s8 *sub_020059D8(void);
void sub_020059E0(u8 a0);
BOOL GF_NowStartMusicId(u16 a0, u16 a1, int a2, u8 a3, int a4);
BOOL sub_02005A10(int a0, u16 a1, u16 a2, int a3, u8 a4, int a5);
BOOL GF_FadeStartMusicId(u16 a0, u16 a1, int a2, int a3, u8 a4, int a5);
BOOL sub_02005A74(int a0, u16 a1, u16 a2, int a3, int a4, u8 a5, int a6);
void sub_02005AB0(int a0, u16 seqNo, u16 fadeFrames, int delay, u8 a4, int a5);
void GF_SndSetAllocatableChannelForBGMPlayer(u32 flags);
BOOL sub_02005AF8(int a0);
void sub_02005B20(void *unused);
void GF_SndHandleSetPlayerVolume(int playerNo, int volume);
void sub_02005B58(u8 a0);
void sub_02005B68(u8 a0);
BOOL sub_02005B78(u16 seqNo, u32 varNo, s16 *dst);
void sub_02005BA8(u16 seqNo);
void sub_02005BEC(u8 a0);
u8 sub_02005BFC(void);
void sub_02005C08(u8 a0);
u8 SoundSys_GetGBSoundsState(void);
void SoundSys_ToggleGBSounds(void);
u16 GBSounds_GetGBSeqNoByDSSeqNo(u16 seqNo);
u16 GBSounds_GetDSSeqNoByGBSeqNo(u16 seqNo);
void GBSounds_SetAllocatableChannels(void);
void sub_02005CF4(int a0);
void sub_02005D00(void);

static const SndPitchVolume sPitchVolumeTable[8] = {
    { 0x00, 0x2A, 0 },
    { 0x40, 0x6B, 0 },
    { 0x20, 0x2F, 0 },
    { 0x40, 0x77, 0 },
    { 0x00, 0x3E, 0 },
    { 0x30, 0x7F, 0 },
    { 0x00, 0x34, 0 },
    { 0x30, 0x75, 0 },
};

static const SndGBSeqPair sGBSeqTable[0x88] = {
    { SEQ_GS_TITLE,              SEQ_GS_P_TITLE              },
    { SEQ_GS_TITLE01,            SEQ_GS_P_TITLE01            },
    { SEQ_GS_OPENING_TITLE_G,    SEQ_GS_P_OPENING_TITLE_G    },
    { SEQ_GS_OPENING_TITLE_S,    SEQ_GS_P_OPENING_TITLE_S    },
    { SEQ_GS_POKEMON_THEME,      SEQ_GS_P_POKEMON_THEME      },
    { SEQ_GS_SHINKA,             SEQ_GS_P_SHINKA             },
    { SEQ_GS_KOUKAN,             SEQ_GS_P_KOUKAN             },
    { SEQ_GS_BICYCLE,            SEQ_GS_P_BICYCLE            },
    { SEQ_GS_NAMINORI,           SEQ_GS_P_NAMINORI           },
    { SEQ_GS_E_DENDOUIRI,        SEQ_GS_P_E_DENDOUIRI        },
    { SEQ_GS_T_WAKABA,           SEQ_GS_P_T_WAKABA           },
    { SEQ_GS_C_YOSHINO,          SEQ_GS_P_C_YOSHINO          },
    { SEQ_GS_C_KIKYOU,           SEQ_GS_P_C_KIKYOU           },
    { SEQ_GS_T_HIWADA,           SEQ_GS_P_T_HIWADA           },
    { SEQ_GS_C_KOGANE,           SEQ_GS_P_C_KOGANE           },
    { SEQ_GS_C_ENJU,             SEQ_GS_P_C_ENJU             },
    { SEQ_GS_C_ASAGI,            SEQ_GS_P_C_ASAGI            },
    { SEQ_GS_C_TANBA,            SEQ_GS_P_C_TANBA            },
    { SEQ_GS_T_CHOUJI,           SEQ_GS_P_T_CHOUJI           },
    { SEQ_GS_C_FUSUBE,           SEQ_GS_P_C_FUSUBE           },
    { SEQ_GS_R_1_29,             SEQ_GS_P_R_1_29             },
    { SEQ_GS_R_1_30,             SEQ_GS_P_R_1_30             },
    { SEQ_GS_R_2_30,             SEQ_GS_P_R_2_30             },
    { SEQ_GS_R_3_30,             SEQ_GS_P_R_3_30             },
    { SEQ_GS_R_4_34,             SEQ_GS_P_R_4_34             },
    { SEQ_GS_R_5_34,             SEQ_GS_P_R_5_34             },
    { SEQ_GS_R_6_34,             SEQ_GS_P_R_6_34             },
    { SEQ_GS_R_8_34,             SEQ_GS_P_R_8_34             },
    { SEQ_GS_R_6_38,             SEQ_GS_P_R_6_38             },
    { SEQ_GS_R_7_42,             SEQ_GS_P_R_7_42             },
    { SEQ_GS_C_KUCHIBA,          SEQ_GS_P_C_KUCHIBA          },
    { SEQ_GS_C_YAMABUKI,         SEQ_GS_P_C_YAMABUKI         },
    { SEQ_GS_C_HANADA,           SEQ_GS_P_C_HANADA           },
    { SEQ_GS_T_CHION,            SEQ_GS_P_T_CHION            },
    { SEQ_GS_C_TAMAMUSHI,        SEQ_GS_P_C_TAMAMUSHI        },
    { SEQ_GS_C_SEKICHIKU,        SEQ_GS_P_C_SEKICHIKU        },
    { SEQ_GS_C_NIBI,             SEQ_GS_P_C_NIBI             },
    { SEQ_GS_C_TOKIWA,           SEQ_GS_P_C_TOKIWA           },
    { SEQ_GS_T_MASARA,           SEQ_GS_P_T_MASARA           },
    { SEQ_GS_T_GUREN,            SEQ_GS_P_T_GUREN            },
    { SEQ_GS_R_9_01,             SEQ_GS_P_R_9_01             },
    { SEQ_GS_R_16_01,            SEQ_GS_P_R_16_01            },
    { SEQ_GS_R_17_01,            SEQ_GS_P_R_17_01            },
    { SEQ_GS_R_9_03,             SEQ_GS_P_R_9_03             },
    { SEQ_GS_R_10_03,            SEQ_GS_P_R_10_03            },
    { SEQ_GS_R_12_03,            SEQ_GS_P_R_12_03            },
    { SEQ_GS_R_13_03,            SEQ_GS_P_R_13_03            },
    { SEQ_GS_R_14_03,            SEQ_GS_P_R_14_03            },
    { SEQ_GS_R_15_03,            SEQ_GS_P_R_15_03            },
    { SEQ_GS_R_16_03,            SEQ_GS_P_R_16_03            },
    { SEQ_GS_R_17_03,            SEQ_GS_P_R_17_03            },
    { SEQ_GS_R_10_11,            SEQ_GS_P_R_10_11            },
    { SEQ_GS_R_13_11,            SEQ_GS_P_R_13_11            },
    { SEQ_GS_R_12_24,            SEQ_GS_P_R_12_24            },
    { SEQ_GS_R_1_26,             SEQ_GS_P_R_1_26             },
    { SEQ_GS_POKESEN,            SEQ_GS_P_POKESEN            },
    { SEQ_GS_FS,                 SEQ_GS_P_FS                 },
    { SEQ_GS_GYM,                SEQ_GS_P_GYM                },
    { SEQ_GS_UTSUGI_RABO,        SEQ_GS_P_UTSUGI_RABO        },
    { SEQ_GS_OHKIDO,             SEQ_GS_P_OHKIDO             },
    { SEQ_GS_KABURENJOU,         SEQ_GS_P_KABURENJOU         },
    { SEQ_GS_GAME,               SEQ_GS_P_GAME               },
    { SEQ_GS_BATTLETOWER,        SEQ_GS_P_BATTLETOWER        },
    { SEQ_GS_BATTLETOWER2,       SEQ_GS_P_BATTLETOWER2       },
    { SEQ_GS_TO_MADATSUBOMI1,    SEQ_GS_P_TO_MADATSUBOMI1    },
    { SEQ_GS_D_CHIKATSUURO,      SEQ_GS_P_D_CHIKATSUURO      },
    { SEQ_GS_D_UNKNOWN_ISEKI,    SEQ_GS_P_D_UNKNOWN_ISEKI    },
    { SEQ_GS_D_KOUEN,            SEQ_GS_P_D_KOUEN            },
    { SEQ_GS_TO_YAKETA,          SEQ_GS_P_TO_YAKETA          },
    { SEQ_GS_TO_SUZU,            SEQ_GS_P_TO_SUZU            },
    { SEQ_GS_TO_TOUDAI,          SEQ_GS_P_TO_TOUDAI          },
    { SEQ_GS_D_AJITO,            SEQ_GS_P_D_AJITO            },
    { SEQ_GS_D_KOORINONUKE,      SEQ_GS_P_D_KOORINONUKE      },
    { SEQ_GS_RYUUNOANA,          SEQ_GS_P_RYUUNOANA          },
    { SEQ_GS_D_IWAYAMA,          SEQ_GS_P_D_IWAYAMA          },
    { SEQ_GS_D_TOKIWANOMORI3,    SEQ_GS_P_D_TOKIWANOMORI3    },
    { SEQ_GS_D_CHAMPROAD,        SEQ_GS_P_D_CHAMPROAD        },
    { SEQ_GS_CHAMPROAD,          SEQ_GS_P_CHAMPROAD          },
    { SEQ_GS_E_TSURETEKE1,       SEQ_GS_P_E_TSURETEKE1       },
    { SEQ_GS_E_TSURETEKE2,       SEQ_GS_P_E_TSURETEKE2       },
    { SEQ_GS_E_RIVAL1,           SEQ_GS_P_E_RIVAL1           },
    { SEQ_GS_E_RIVAL2,           SEQ_GS_P_E_RIVAL2           },
    { SEQ_GS_TAIKAIMAE,          SEQ_GS_P_TAIKAIMAE          },
    { SEQ_GS_TAIKAI,             SEQ_GS_P_TAIKAI             },
    { SEQ_GS_KAIDENPA,           SEQ_GS_P_KAIDENPA           },
    { SEQ_GS_SENKYO,             SEQ_GS_P_SENKYO             },
    { SEQ_GS_E_LINEAR,           SEQ_GS_P_E_LINEAR           },
    { SEQ_GS_KOUSOKUSEN,         SEQ_GS_P_KOUSOKUSEN         },
    { SEQ_GS_OTSUKIMI_EVENT,     SEQ_GS_P_OTSUKIMI_EVENT     },
    { SEQ_GS_RADIO_JINGLE,       SEQ_GS_P_RADIO_JINGLE       },
    { SEQ_GS_RADIO_KOMORIUTA,    SEQ_GS_P_RADIO_KOMORIUTA    },
    { SEQ_GS_RADIO_MARCH,        SEQ_GS_P_RADIO_MARCH        },
    { SEQ_GS_RADIO_UNKNOWN,      SEQ_GS_P_RADIO_UNKNOWN      },
    { SEQ_GS_HUE,                SEQ_GS_P_HUE                },
    { SEQ_GS_OHKIDO_RABO,        SEQ_GS_P_OHKIDO_RABO        },
    { SEQ_GS_AIKOTOBA,           SEQ_GS_P_AIKOTOBA           },
    { SEQ_GS_E_MINAKI,           SEQ_GS_P_E_MINAKI           },
    { SEQ_GS_IBUKI,              SEQ_GS_P_IBUKI              },
    { SEQ_GS_EYE_J_SHOUJO,       SEQ_GS_P_EYE_J_SHOUJO       },
    { SEQ_GS_EYE_J_SHOUNEN,      SEQ_GS_P_EYE_J_SHOUNEN      },
    { SEQ_GS_EYE_J_AYASHII,      SEQ_GS_P_EYE_J_AYASHII      },
    { SEQ_GS_EYE_BOUZU,          SEQ_GS_P_EYE_BOUZU          },
    { SEQ_GS_EYE_MAIKO,          SEQ_GS_P_EYE_MAIKO          },
    { SEQ_GS_EYE_ROCKET,         SEQ_GS_P_EYE_ROCKET         },
    { SEQ_GS_EYE_K_SHOUJO,       SEQ_GS_P_EYE_K_SHOUJO       },
    { SEQ_GS_EYE_K_SHOUNEN,      SEQ_GS_P_EYE_K_SHOUNEN      },
    { SEQ_GS_EYE_K_AYASHII,      SEQ_GS_P_EYE_K_AYASHII      },
    { SEQ_GS_VS_NORAPOKE,        SEQ_GS_P_VS_NORAPOKE        },
    { SEQ_GS_VS_TRAINER,         SEQ_GS_P_VS_TRAINER         },
    { SEQ_GS_VS_GYMREADER,       SEQ_GS_P_VS_GYMREADER       },
    { SEQ_GS_VS_RIVAL,           SEQ_GS_P_VS_RIVAL           },
    { SEQ_GS_VS_ROCKET,          SEQ_GS_P_VS_ROCKET          },
    { SEQ_GS_VS_SUICUNE,         SEQ_GS_P_VS_SUICUNE         },
    { SEQ_GS_VS_ENTEI,           SEQ_GS_P_VS_ENTEI           },
    { SEQ_GS_VS_RAIKOU,          SEQ_GS_P_VS_RAIKOU          },
    { SEQ_GS_VS_CHAMP,           SEQ_GS_P_VS_CHAMP           },
    { SEQ_GS_VS_NORAPOKE_KANTO,  SEQ_GS_P_VS_NORAPOKE_KANTO  },
    { SEQ_GS_VS_TRAINER_KANTO,   SEQ_GS_P_VS_TRAINER_KANTO   },
    { SEQ_GS_VS_GYMREADER_KANTO, SEQ_GS_P_VS_GYMREADER_KANTO },
    { SEQ_GS_WIN1,               SEQ_GS_P_WIN1               },
    { SEQ_GS_WIN2,               SEQ_GS_P_WIN2               },
    { SEQ_GS_WIN2_NOT_FAN,       SEQ_GS_P_WIN2_NOT_FAN       },
    { SEQ_GS_WIN3,               SEQ_GS_P_WIN3               },
    { SEQ_GS_PT_ENTR,            SEQ_GS_P_PT_ENTR            },
    { SEQ_GS_PT_OPEN,            SEQ_GS_P_PT_OPEN            },
    { SEQ_GS_PT_TITLE,           SEQ_GS_P_PT_TITLE           },
    { SEQ_GS_PT_GAME,            SEQ_GS_P_PT_GAME            },
    { SEQ_GS_PT_GAMEF,           SEQ_GS_P_PT_GAMEF           },
    { SEQ_GS_PT_RESULT,          SEQ_GS_P_PT_RESULT          },
    { SEQ_GS_PT_END,             SEQ_GS_P_PT_END             },
    { SEQ_GS_PT_END_FIELD,       SEQ_GS_P_PT_END_FIELD       },
    { SEQ_GS_WIFITOWER,          SEQ_GS_P_WIFITOWER          },
    { SEQ_GS_SAFARI_ROAD,        SEQ_GS_P_SAFARI_ROAD        },
    { SEQ_GS_SAFARI_HOUSE,       SEQ_GS_P_SAFARI_HOUSE       },
    { SEQ_GS_SAFARI_FIELD,       SEQ_GS_P_SAFARI_FIELD       },
    { SEQ_PL_BICYCLE,            SEQ_PL_P_BICYCLE            },
};

static SndMicState sMicState;
static SndMicParamStore sMicParam;
static s8 sMicBuffer[0x7D0];

void GF_SND_BGM_DisableSet(u8 a0) {
    u8 *p = GF_SdatGetAttrPtr(5);
    *p = a0;
}

u8 GF_SND_BGM_DisableCheck(void) {
    u8 *p = GF_SdatGetAttrPtr(5);
    return *p;
}

void sub_02004A60(u16 seqNo) {
    u16 *p = GF_SdatGetAttrPtr(10);
    if (seqNo > SEQ_GS_P_START) {
        sub_02004AB8(seqNo);
        *p = GBSounds_GetDSSeqNoByGBSeqNo(seqNo);
    } else {
        *p = seqNo;
    }
    GF_SetCurrentPlayingBGM(0);
}

u16 GF_GetCurrentPlayingBGM(void) {
    u16 *p = GF_SdatGetAttrPtr(10);
    return *p;
}

void GF_SetCurrentPlayingBGM(u16 seqNo) {
    u16 *p = GF_SdatGetAttrPtr(11);
    *p = seqNo;
}

u16 sub_02004AAC(void) {
    u16 *p = GF_SdatGetAttrPtr(11);
    return *p;
}

void sub_02004AB8(u16 seqNo) {
    u16 *p = GF_SdatGetAttrPtr(0x3A);
    *p = seqNo;
}

void Sound_SetFieldBGM(u16 seqNo) {
    u16 *p = GF_SdatGetAttrPtr(0x20);
    *p = seqNo;
}

void Sound_SetScene(u8 scene) {
    u8 *p15 = GF_SdatGetAttrPtr(0x15);
    u8 *p16 = GF_SdatGetAttrPtr(0x16);
    if (scene < 0x33) {
        *p15 = scene;
        *p16 = 0;
    } else {
        *p16 = scene;
    }
}

void sub_02004AFC(u8 a0) {
    u8 *p;
    GF_SdatGetAttrPtr(0x15);
    p = GF_SdatGetAttrPtr(0x16);
    *p = a0;
}

void sub_02004B10(void) {
    u8 *p = GF_SdatGetAttrPtr(0x16);
    sub_02005318();
    *p = 0;
}

BOOL sub_02004B24(int a0) {
    BOOL result;

    switch (a0) {
    case 1:
    case 9:
    case 10:
    case 17:
    case 20:
    case 23:
        result = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        break;
    case 19:
        result = GF_Snd_LoadGroup(GROUP_SE_FIELD);
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
        result = GF_Snd_LoadGroup(GROUP_SE_NUTMIXER);
        break;
    case 2:
    case 13:
        result = GF_Snd_LoadGroup(GROUP_SE_BATTLE);
        break;
    case 21:
        GF_Snd_LoadBank(BANK_SE_HIROBA);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_HIROBA);
        break;
    case 3:
        result = GF_Snd_LoadGroup(GROUP_SE_TRADE);
        break;
    case 4:
    case 22:
        result = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        break;
    case 5:
        result = GF_Snd_LoadGroup(GROUP_SE_BATTLE);
        break;
    case 11:
        result = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        break;
    case 6:
        result = GF_Snd_LoadGroup(GROUP_SE_CONTEST);
        break;
    case 8:
        result = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        break;
    case 12:
        result = GF_Snd_LoadGroup(GROUP_SE_NUTMIXER);
        break;
    case 16:
        GF_Snd_LoadGroup(GROUP_SE_FIELD);
        result = GF_Snd_LoadGroup(GROUP_SE_DIG);
        break;
    case 15:
        result = GF_Snd_LoadGroup(GROUP_SE_FIELD);
        break;
    case 24:
        GF_Snd_LoadBank(BANK_SE_THLON);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_THLON);
        break;
    case 25:
        GF_Snd_LoadBank(BANK_SE_THLON_OPED);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_THLON_OPED);
        break;
    case 51:
        result = GF_Snd_LoadGroup(GROUP_SE_BAG);
        break;
    case 64:
        result = GF_Snd_LoadGroup(GROUP_SE_SLOT);
        break;
    case 52:
    case 67:
        result = GF_Snd_LoadGroup(GROUP_SE_NAMEIN);
        break;
    case 7:
    case 53:
        result = GF_Snd_LoadGroup(GROUP_SE_IMAGE);
        break;
    case 54:
        result = GF_Snd_LoadGroup(GROUP_SE_ZUKAN);
        break;
    case 55:
    case 65:
        GF_Snd_LoadBank(BANK_SE_TOWNMAP);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_TOWNMAP);
        break;
    case 56:
        result = GF_Snd_LoadGroup(GROUP_SE_TRCARD);
        break;
    case 57:
        result = GF_Snd_LoadGroup(GROUP_SE_POKELIST);
        break;
    case 58:
        result = GF_Snd_LoadGroup(GROUP_SE_DIG);
        break;
    case 59:
        result = GF_Snd_LoadGroup(GROUP_SE_CUSTOM);
        break;
    case 60:
        result = GF_Snd_LoadGroup(GROUP_SE_BAG);
        break;
    case 61:
        result = GF_Snd_LoadGroup(GROUP_SE_NAMEIN);
        break;
    case 62:
        result = GF_Snd_LoadGroup(GROUP_SE_CUSTOM);
        break;
    case 63:
        result = GF_Snd_LoadGroup(GROUP_SE_CLIMAX);
        break;
    case 66:
        GF_Snd_LoadBank(BANK_SE_SCRATCH);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_SCRATCH);
        break;
    case 69:
        GF_Snd_LoadBank(BANK_SE_PLANTER);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_PLANTER);
        break;
    case 68:
        GF_Snd_LoadBank(BANK_SE_LINEAR);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_LINEAR);
        break;
    case 70:
        GF_Snd_LoadBank(BANK_SE_COIN);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_COIN);
        break;
    case 71:
        GF_Snd_LoadBank(BANK_SE_DENDO);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_DENDO);
        break;
    case 72:
        GF_Snd_LoadBank(BANK_SE_JUICE);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_JUICE);
        break;
    case 73:
        GF_Snd_LoadBank(BANK_SE_PHC);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_PHC);
        break;
    case 74:
        GF_Snd_LoadBank(BANK_SE_SEKIBAN);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_SEKIBAN);
        break;
    case 75:
        GF_Snd_LoadBank(BANK_SE_EVENT);
        result = GF_Snd_LoadWaveArc(WAVE_ARC_SE_EVENT);
        break;
    default:
        GF_AssertFail();
        result = 0;
        break;
    }
    return result;
}

BOOL sub_02004EB4(u16 seqNo) {
    return Sound_SetSceneAndPlayBGM(4, seqNo, 1);
}

BOOL Sound_SetSceneAndPlayBGM(u8 scene, u16 seqNo, int unused) {
    u8 *p15 = GF_SdatGetAttrPtr(0x15);
    u8 *p16 = GF_SdatGetAttrPtr(0x16);
    u16 *p14 = GF_SdatGetAttrPtr(0xE);

    if (scene < 0x33) {
        if (*p15 == scene) {
            return 0;
        }
    } else {
        if (*p16 == scene) {
            return 0;
        }
    }
    Sound_SetScene(scene);
    switch (scene) {
    case 4:
        sub_02005AF8(0);
        sub_0200508C(seqNo, unused);
        *p14 = 0;
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

void sub_02005060(int a0) {
    GF_Snd_LoadState(*(int *)GF_SdatGetAttrPtr(0x18));
    GF_Snd_SaveState(GF_SdatGetAttrPtr(0x19));
    sub_02004B24(a0);
    GF_Snd_SaveState(GF_SdatGetAttrPtr(0x1A));
}

void sub_0200508C(u16 seqNo, int unused) {
    int curSeq;
    u8 *p;
    u16 curDsSeq;

    p = GF_SdatGetAttrPtr(0xC);
    GF_SdatGetAttrPtr(0x18);
    GF_SdatGetAttrPtr(0x20);
    curSeq = GF_NNS_SndPlayerGetSeqNo(GF_GetSoundHandle(0));
    curDsSeq = curSeq;
    if (curSeq > SEQ_GS_P_START) {
        curDsSeq = GBSounds_GetDSSeqNoByGBSeqNo(curDsSeq);
    }
    if (*p == 0 && curDsSeq == seqNo && sub_02004AAC() != SEQ_GS_BICYCLE) {
        return;
    }
    sub_020059E0(1);
    if (sMicState.unkC == 0 || sMicState.unk4 == 0) {
        sub_02005FD8();
        sMicState.unk4 = 1;
    }
    if (curDsSeq != seqNo) {
        sub_020053A8(1, 0);
        Sound_Stop();
    }
    if (*p == 1) {
        GF_Snd_LoadState(sub_02005328(2));
        sub_02004B24(4);
        GF_Snd_SaveState(GF_SdatGetAttrPtr(0x1A));
        if (curDsSeq != seqNo) {
            sub_020053A8(1, 0);
        }
        sub_02005150(seqNo, (u16)curSeq);
        return;
    }
    PlayBGM(seqNo);
}

void sub_02005150(u16 seqNo, u16 unused) {
    u16 *p = GF_SdatGetAttrPtr(0x20);
    if (GF_GetBankBySeqNo(*p) == 700) {
        GF_Snd_LoadSeqEx(seqNo, 4);
        GF_AssertFail();
    } else {
        GF_Snd_LoadSeqEx(*p, 6);
    }
    GF_Snd_SaveState(GF_SdatGetAttrPtr(0x1B));
    sub_020053A8(1, 0);
    GF_SndStartFadeInBGM(0x7F, 0x28, 0);
    sub_020059E0(0);
}

void sub_020051A4(int seqNo, int a1) {
    u8 *p13 = GF_SdatGetAttrPtr(0x13);
    u16 *p20 = GF_SdatGetAttrPtr(0x20);

    if (*p13 == 1 || a1 == 0) {
        GF_Snd_LoadState(sub_02005328(1));
        sub_02004AFC(0);
        GF_Snd_LoadSeqEx(*p20, 2);
        GF_Snd_SaveState(GF_SdatGetAttrPtr(0x19));
        sub_02004B24(4);
        GF_Snd_SaveState(GF_SdatGetAttrPtr(0x1A));
        if (GF_GetBankBySeqNo(*p20) == 700) {
            GF_Snd_LoadSeqEx(seqNo, 4);
            GF_AssertFail();
        } else {
            GF_Snd_LoadSeqEx(*p20, 4);
        }
        GF_Snd_SaveState(GF_SdatGetAttrPtr(0x1B));
    }
}

void sub_02005228(u16 seqNo, int unused) {
    sub_02005B20(GF_SdatGetAttrPtr(0x18));
    GF_Snd_LoadState(sub_02005328(2));
    sub_02004B24(5);
    GF_Snd_SaveState(GF_SdatGetAttrPtr(0x1A));
    sub_020059E0(1);
    PlayBGM(seqNo);
}

void sub_02005260(u16 seqNo, int unused) {
    GF_SdatGetAttrPtr(0x18);
    Sound_Stop();
    Sound_ClearBGMPauseFlags();
    sub_02005060(4);
    PlayBGM(seqNo);
}

void sub_02005280(u16 seqNo, int unused) {
    GF_SdatGetAttrPtr(0x18);
    Sound_Stop();
    sub_02005060(6);
    sub_020059E0(1);
    PlayBGM(seqNo);
}

void sub_020052A4(u16 seqNo, int unused) {
    GF_SdatGetAttrPtr(0x18);
    Sound_Stop();
    sub_02005060(7);
    sub_020059E0(1);
    PlayBGM(seqNo);
}

void sub_020052C8(int a0) {
    sub_02005318();
    sub_02004B24(a0);
    GF_Snd_SaveState(GF_SdatGetAttrPtr(0x1C));
}

void sub_020052E4(int a0, u16 seqNo, int unused) {
    GF_SdatGetAttrPtr(0x18);
    Sound_Stop();
    sub_02005060(a0);
    PlayBGM(seqNo);
}

void BGM_SaveStateAndPlayNew(u16 seqNo) {
    sub_02005B20(GetSoundDataPointer());
    PlayBGM(seqNo);
}

void sub_02005318(void) {
    GF_Snd_LoadState(sub_02005328(4));
}

int sub_02005328(int a0) {
    int *p;

    GetSoundDataPointer();
    if (a0 >= 7) {
        GF_AssertFail();
        return *(int *)GF_SdatGetAttrPtr(0x1B);
    }
    switch (a0) {
    case 0:
        p = GF_SdatGetAttrPtr(0x17);
        break;
    case 1:
        p = GF_SdatGetAttrPtr(0x18);
        break;
    case 2:
        p = GF_SdatGetAttrPtr(0x19);
        break;
    case 3:
        p = GF_SdatGetAttrPtr(0x1A);
        break;
    case 4:
        p = GF_SdatGetAttrPtr(0x1B);
        break;
    case 5:
        p = GF_SdatGetAttrPtr(0x1C);
        break;
    case 6:
        p = GF_SdatGetAttrPtr(0x1D);
        break;
    }
    return *p;
}

void sub_020053A8(u8 a0, u8 a1) {
    u8 *p;
    int handleNo;

    if (a0 == 1) {
        p = GF_SdatGetAttrPtr(0xC);
        handleNo = 0;
    } else if (a0 == 7) {
        p = GF_SdatGetAttrPtr(0xD);
        handleNo = 7;
    } else {
        return;
    }
    if (a1 == 0) {
        sub_02004A60((u16)GF_NNS_SndPlayerGetSeqNo(GF_GetSoundHandle(handleNo)));
    }
    NNS_SndPlayerPause(GF_GetSoundHandle(handleNo), a1);
    *p = a1;
}

void Sound_ClearBGMPauseFlags(void) {
    u8 *p1 = GF_SdatGetAttrPtr(0xC);
    u8 *p2 = GF_SdatGetAttrPtr(0xD);
    *p1 = 0;
    *p2 = 0;
}

void GF_SndHandleMoveVolume(int handleNo, int volume, int frames) {
    NNS_SndPlayerMoveVolume(GF_GetSoundHandle(handleNo), volume, frames);
    if (handleNo == 0) {
        GF_SndWorkSetGbSoundsVolume((u8)volume);
    }
}

void GF_SndHandleSetInitialVolume(int handleNo, int volume) {
    if (volume < 0) {
        volume = 0;
    }
    if (volume > 0x7F) {
        volume = 0x7F;
    }
    NNS_SndPlayerSetInitialVolume(GF_GetSoundHandle(handleNo), volume);
}

void sub_02005448(int seqNo) {
    sub_02005464(seqNo, GF_GetSndHandleByPlayerNo(GF_GetPlayerNoBySeq((u16)seqNo)));
}

void sub_02005464(int seqNo, int handleNo) {
    const NNSSndSeqParam *param = NNS_SndArcGetSeqParam(seqNo);
    int volume;

    if (handleNo == 1 || handleNo == 8) {
        volume = 0x7F;
    } else if (param == NULL) {
        return;
    } else {
        volume = param->volume;
    }
    if (sub_020378CC() == 1) {
        GF_SndHandleSetInitialVolume(handleNo, volume / 5);
    }
}

u8 GF_GetVolumeBySeqNo(u16 seqNo) {
    const NNSSndSeqParam *param = NNS_SndArcGetSeqParam(seqNo);
    if (param == NULL) {
        return 0;
    }
    return param->volume;
}

void GF_SetVolumeBySeqNo(u16 seqNo, u16 volume) {
    GF_SndHandleSetInitialVolume(GF_GetSndHandleByPlayerNo(GF_GetPlayerNoBySeq(seqNo)), volume);
}

int GF_SndPlayerCountPlayingSeqByPlayerNo(int playerNo) {
    GF_ASSERT(playerNo >= 0);
    return NNS_SndPlayerCountPlayingSeqByPlayerNo(playerNo);
}

u8 GF_GetPlayerNoBySeq(int seqNo) {
    const NNSSndSeqParam *param;

    if (seqNo == 0) {
        return 0xFF;
    }
    param = NNS_SndArcGetSeqParam(seqNo);
    if (param == NULL) {
        return 0xFF;
    }
    return param->playerNo;
}

int GF_NNS_SndPlayerGetSeqNo(NNSSndHandle *handle) {
    return NNS_SndPlayerGetSeqNo(handle);
}

void *GF_GetBankInfoBySeqNo(u16 seqNo) {
    return NNS_SndArcGetBankInfo(GF_GetBankBySeqNo(seqNo));
}

u16 GF_GetBankBySeqNo(int seqNo) {
    const NNSSndSeqParam *param = NNS_SndArcGetSeqParam(seqNo);
    if (param == NULL) {
        return 0;
    }
    return param->bankNo;
}

BOOL sub_02005518(void) {
    return GF_SndWorkMicCounterFull();
}

int GF_MIC_StartAutoSampling(MICAutoParam *param) {
    int result = MIC_StartAutoSampling(param);
    sMicState.micActive = 1;
    sMicParam.param = *param;
    return result;
}

void GF_MIC_StopAutoSampling(void) {
    GetSoundDataPointer();
    sMicState.micActive = 0;
    MIC_StopAutoSampling();
}

void GF_MicPauseOnLidClose(void) {
    if (sMicState.micActive != 0) {
        GF_ASSERT(MIC_StopAutoSampling() == 0);
    }
}

void GF_MicResumeOnLidOpen(void) {
    if (sMicState.micActive != 0) {
        GF_ASSERT(MIC_StartAutoSampling(&sMicParam.param) == 0);
    }
    GF_SndWorkMicCounterReset();
}

NNSSndWaveOutHandle *sub_020055AC(int ch) {
    u8 *p10;
    u8 *p11;

    GetSoundDataPointer();
    p10 = GF_SdatGetAttrPtr(0x10);
    p11 = GF_SdatGetAttrPtr(0x11);
    GF_ASSERT(ch == 14 || ch == 15);
    if (ch == 14) {
        GF_ASSERT(*p10 != 0);
    }
    if (ch == 15) {
        GF_ASSERT(*p11 != 0);
    }
    if (ch == 14) {
        return GF_SdatGetAttrPtr(0);
    }
    return GF_SdatGetAttrPtr(1);
}

BOOL sub_02005600(int ch) {
    u8 *p10;
    u8 *p11;
    NNSSndWaveOutHandle *h;

    GetSoundDataPointer();
    p10 = GF_SdatGetAttrPtr(0x10);
    p11 = GF_SdatGetAttrPtr(0x11);
    GF_ASSERT(ch == 14 || ch == 15);
    if (ch == 14) {
        if (*p10 == 0) {
            h = GF_SdatGetAttrPtr(0);
            *h = NNS_SndWaveOutAllocChannel(ch);
            if (*h == NULL) {
                return 0;
            }
            *p10 = 1;
        } else {
            GF_AssertFail();
        }
    } else {
        if (*p11 == 0) {
            h = GF_SdatGetAttrPtr(1);
            *h = NNS_SndWaveOutAllocChannel(ch);
            if (*h == NULL) {
                return 0;
            }
            *p11 = 1;
        } else {
            GF_AssertFail();
        }
    }
    return 1;
}

void sub_02005680(int ch) {
    u8 *p10;
    u8 *p11;

    GetSoundDataPointer();
    p10 = GF_SdatGetAttrPtr(0x10);
    p11 = GF_SdatGetAttrPtr(0x11);
    if (ch != 14 && ch != 15) {
        GF_AssertFail();
        return;
    }
    if (ch == 14) {
        if (*p10 == 1) {
            NNS_SndWaveOutFreeChannel(*sub_020055AC(ch));
            *p10 = 0;
            return;
        }
        GF_AssertFail();
        return;
    }
    if (*p11 == 1) {
        NNS_SndWaveOutFreeChannel(*sub_020055AC(ch));
        *p11 = 0;
        return;
    }
    GF_AssertFail();
}

BOOL sub_020056E8(UnkStruct_02004A44_0 *wavParam, int ch) {
    BOOL result = NNS_SndWaveOutStart(*wavParam->unk00, wavParam->unk04, wavParam->unk08, wavParam->unk0c, wavParam->unk10, wavParam->unk14, wavParam->unk18, wavParam->unk1c, wavParam->unk20, wavParam->unk24);
    if (!result) {
        sub_02005680(ch);
    }
    return result;
}

void sub_02005728(int ch) {
    NNS_SndWaveOutStop(*sub_020055AC(ch));
}

BOOL sub_02005738(int ch) {
    return NNS_SndWaveOutIsPlaying(*sub_020055AC(ch));
}

void sub_02005748(int ch, u8 pan) {
    if (pan > 0x7F) {
        pan = 0x7F;
    }
    NNS_SndWaveOutSetPan(*sub_020055AC(ch), pan);
}

void sub_02005760(int ch, int speed) {
    NNS_SndWaveOutSetSpeed(*sub_020055AC(ch), speed);
}

void sub_02005774(int ch, int volume) {
    if (sub_020378CC() == 1) {
        NNSSndWaveOutHandle *h = sub_020055AC(ch);
        NNS_SndWaveOutSetVolume(*h, volume / 5);
    } else {
        NNS_SndWaveOutSetVolume(*sub_020055AC(ch), volume);
    }
}

BOOL sub_020057AC(int waveArcNo, int volume, int pan, int ch, enum HeapID heapId) {
    void **bufp;
    SndWaveArcInfo *info;
    u32 size;
    BOOL result;
    UnkStruct_02004A44_0 wavParam;

    GetSoundDataPointer();
    bufp = GF_SdatGetAttrPtr(0x22);
    GF_ASSERT(ch == 14 || ch == 15);
    info = NNS_SndArcGetWaveArcInfo(waveArcNo);
    if (info == NULL) {
        GF_AssertFail();
        return 0;
    }
    size = NNS_SndArcGetFileSize(info->fileId);
    if (size == 0) {
        GF_AssertFail();
        return 0;
    }
    if (ch == 14) {
        *bufp = Heap_Alloc(heapId, size);
        if (*bufp == NULL) {
            GF_AssertFail();
            return 0;
        }
        memset(*bufp, 0, size);
        if (NNS_SndArcReadFile(info->fileId, *bufp, size, 0) == -1) {
            GF_AssertFail();
            return 0;
        }
        sub_02005898(*bufp, size);
    }
    wavParam.unk00 = sub_020055AC(ch);
    wavParam.unk04 = NNS_SND_WAVE_FORMAT_PCM8;
    wavParam.unk08 = *bufp;
    wavParam.unk0c = 0;
    wavParam.unk18 = 0x3443;
    wavParam.unk10 = 0;
    wavParam.unk1c = volume;
    wavParam.unk20 = 0x6000;
    wavParam.unk24 = pan;
    wavParam.unk14 = size;
    result = sub_020056E8(&wavParam, ch);
    sub_02005774(ch, volume);
    *(u8 *)GF_SdatGetAttrPtr(0xF) = 1;
    return result;
}

void sub_02005898(u8 *buf, u32 size) {
    u32 i;
    u8 tmp;

    for (i = 0; i < size / 2; i++) {
        tmp = buf[i];
        buf[i] = buf[size - 1 - i];
        buf[size - 1 - i] = tmp;
    }
}

void sub_020058B8(int ch) {
    u8 *pf;
    void **bufp;

    GetSoundDataPointer();
    pf = GF_SdatGetAttrPtr(0xF);
    bufp = GF_SdatGetAttrPtr(0x22);
    GF_ASSERT(ch == 14 || ch == 15);
    sub_02005728(ch);
    if (*pf == 1) {
        *pf = 0;
        Heap_Free(*bufp);
    }
}

BOOL sub_020058F4(void) {
    BOOL active = NNS_SndCaptureIsActive();
    if (active == 1) {
        sub_02005908();
    }
    return active;
}

int sub_02005908(void) {
    return NNS_SndCaptureGetCaptureType();
}

void sub_02005910(int frames) {
    NNS_SndCaptureStopReverb(frames);
}

void GF_SndHandleSetTrackPitch(int handleNo, int track, int pitch) {
    NNS_SndPlayerSetTrackPitch(GF_GetSoundHandle(handleNo), track, pitch);
}

void sub_0200592C(u16 seqNo, int track, int pitch) {
    GF_SndHandleSetTrackPitch(GF_GetSndHandleByPlayerNo(GF_GetPlayerNoBySeq(seqNo)), track, pitch);
}

void sub_02005944(int playerNo, int track, int pitch) {
    GF_SndHandleSetTrackPitch(GF_GetSndHandleByPlayerNo(playerNo), track, pitch);
}

void GF_SndHandleSetTrackPan(int handleNo, int track, int pan) {
    NNS_SndPlayerSetTrackPan(GF_GetSoundHandle(handleNo), track, pan);
}

void GF_SndHandleSetTempoRatio(int handleNo, int ratio) {
    NNS_SndPlayerSetTempoRatio(GF_GetSoundHandle(handleNo), ratio);
}

void GF_SndSetMonoFlag(int flag) {
    NNS_SndSetMonoFlag(flag);
    sMicState.monoFlag = flag;
}

void sub_02005990(int a0) {
    int *p = GF_SdatGetAttrPtr(7);
    *p = a0;
}

void sub_020059A0(int a0) {
    int *p = GF_SdatGetAttrPtr(8);
    *p = a0;
}

BOOL GF_SndGetAfterFadeDelayTimer(void) {
    u16 *p = GF_SdatGetAttrPtr(8);
    if (*p == 0) {
        *p = 0;
        return 0;
    }
    (*p)--;
    return *p;
}

void Sound_SetMasterVolume(int volume) {
    NNS_SndSetMasterVolume(volume);
}

s8 *sub_020059D8(void) {
    return sMicBuffer;
}

void sub_020059E0(u8 a0) {
    u8 *p = GF_SdatGetAttrPtr(0x13);
    *p = a0;
}

BOOL GF_NowStartMusicId(u16 a0, u16 a1, int a2, u8 a3, int a4) {
    return sub_02005A10(4, a0, a1, a2, a3, a4);
}

BOOL sub_02005A10(int a0, u16 a1, u16 a2, int a3, u8 a4, int a5) {
    u8 *p = GF_SdatGetAttrPtr(0x16);
    sub_02005AB0(a0, a1, a2, a3, a4, a5);
    *p = 0;
    GF_SndSetState(5);
    return 1;
}

BOOL GF_FadeStartMusicId(u16 a0, u16 a1, int a2, int a3, u8 a4, int a5) {
    return sub_02005A74(4, a0, a1, a2, a3, a4, a5);
}

BOOL sub_02005A74(int a0, u16 a1, u16 a2, int a3, int a4, u8 a5, int a6) {
    int *p = GF_SdatGetAttrPtr(9);
    sub_02005AB0(a0, a1, a2, a3, a5, a6);
    *p = a4;
    GF_SndSetState(6);
    return 1;
}

void sub_02005AB0(int a0, u16 seqNo, u16 fadeFrames, int delay, u8 a4, int a5) {
    void **p = GF_SdatGetAttrPtr(2);
    GF_SndStartFadeOutBGM(0, fadeFrames);
    sub_02004A60(0);
    GF_SetCurrentPlayingBGM(seqNo);
    sub_020059A0(delay);
    *p = GF_GetBankInfoBySeqNo(seqNo);
    sub_020059E0(a4);
}

void GF_SndSetAllocatableChannelForBGMPlayer(u32 flags) {
    NNS_SndPlayerSetAllocatableChannel(7, flags);
}

BOOL sub_02005AF8(int a0) {
    if (a0 == 0) {
        GF_SndSetAllocatableChannelForBGMPlayer(0xA7FE);
        sub_02005910(0);
    } else {
        GF_SndSetAllocatableChannelForBGMPlayer(0x3FFF);
    }
    return sub_020058F4();
}

void sub_02005B20(void *unused) {
    if (GF_SndGetFadeTimer() == 0 && GF_NNS_SndPlayerGetSeqNo(GF_GetSoundHandle(0)) != -1) {
        sub_02005FD8();
        sub_020053A8(1, 1);
        return;
    }
    Sound_Stop();
}

void GF_SndHandleSetPlayerVolume(int playerNo, int volume) {
    NNS_SndPlayerSetPlayerVolume(playerNo, volume);
}

void sub_02005B58(u8 a0) {
    u8 *p = GF_SdatGetAttrPtr(0x35);
    *p = a0;
}

void sub_02005B68(u8 a0) {
    u8 *p = GF_SdatGetAttrPtr(0x36);
    *p = a0;
}

BOOL sub_02005B78(u16 seqNo, u32 varNo, s16 *dst) {
    GF_ASSERT(dst != NULL);
    GF_ASSERT(varNo <= 15);
    return NNS_SndPlayerReadVariable(GF_GetSoundHandle(GF_GetSndHandleByPlayerNo(GF_GetPlayerNoBySeq(seqNo))), varNo, dst);
}

void sub_02005BA8(u16 seqNo) {
    SndUnk37 *p = GF_SdatGetAttrPtr(0x37);
    GF_SetVolumeBySeqNo(seqNo, sPitchVolumeTable[p->idx].volume);
    GF_SndHandleSetTrackPitch(4, 0xFFFF, sPitchVolumeTable[p->idx].pitch);
    if (p->cnt >= 8) {
        p->cnt = 0;
    }
}

void sub_02005BEC(u8 a0) {
    u8 *p = GF_SdatGetAttrPtr(0x38);
    *p = a0;
}

u8 sub_02005BFC(void) {
    u8 *p = GF_SdatGetAttrPtr(0x38);
    return *p;
}

void sub_02005C08(u8 a0) {
    u8 *p = GF_SdatGetAttrPtr(0x39);
    *p = a0;
}

u8 SoundSys_GetGBSoundsState(void) {
    u8 *p = GF_SdatGetAttrPtr(0x39);
    return *p;
}

void SoundSys_ToggleGBSounds(void) {
    u16 dsSeq;
    u8 volume;

    if (SoundSys_GetGBSoundsState() == 0) {
        sub_02005C08(1);
    } else {
        sub_02005C08(0);
    }
    if (sub_02004AAC() == 0) {
        dsSeq = GF_GetCurrentPlayingBGM();
        volume = GF_SndWorkGetGbSoundsVolume();
        if (dsSeq != GBSounds_GetGBSeqNoByDSSeqNo(dsSeq)) {
            PlayBGM(dsSeq);
        }
        GF_SndHandleMoveVolume(0, volume, 0);
    }
}

u16 GBSounds_GetGBSeqNoByDSSeqNo(u16 seqNo) {
    u16 i;
    for (i = 0; i < 0x88; i++) {
        if (seqNo == sGBSeqTable[i].ds) {
            return sGBSeqTable[i].gb;
        }
    }
    return seqNo;
}

u16 GBSounds_GetDSSeqNoByGBSeqNo(u16 seqNo) {
    u16 i;
    for (i = 0; i < 0x88; i++) {
        if (seqNo == sGBSeqTable[i].gb) {
            return sGBSeqTable[i].ds;
        }
    }
    return seqNo;
}

void GBSounds_SetAllocatableChannels(void) {
    NNS_SndPlayerSetTrackAllocatableChannel(GF_GetSoundHandle(0), 0xF, 0xA7FE);
    NNS_SndPlayerSetTrackAllocatableChannel(GF_GetSoundHandle(7), 0xF, 0xA7FE);
    NNS_SndPlayerSetTrackAllocatableChannel(GF_GetSoundHandle(2), 0xF, 0xA7FE);
}

void sub_02005CF4(int a0) {
    sMicState.unkC = a0;
}

void sub_02005D00(void) {
    sMicState.unkC = 0;
    sMicState.unk4 = 0;
}
