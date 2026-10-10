typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_02233550 {
    u8 filler_00[0x28];
    void *palette;      // 0x28
    u8 filler_2C[0x804];
    void *saveData;     // 0x830
} UnkStruct_ov40_02233550;

const s32 ov40_02245174[5] = { 0, 1, 4, 3, 2 };

void *Save_VarsFlags_Get(void *saveData);
u16 Save_VarsFlags_GetBattleTowerPrintProgress(void *state);
u16 Save_VarsFlags_GetBattleFactoryPrintProgress(void *state);
u16 Save_VarsFlags_GetBattleArcadePrintProgress(void *state);
u16 Save_VarsFlags_GetBattleCastlePrintProgress(void *state);
u16 Save_VarsFlags_GetBattleHallPrintProgress(void *state);
u16 *PaletteData_GetFadedBuf(void *data, s32 bufferID);
void ov40_022334F8(u16 *buf, s32 offset, s32 count);
void PaletteData_SetAutoTransparent(void *data, s32 autoTransparent);

void ov40_02233550(UnkStruct_ov40_02233550 *p)
{
    void *palette = p->palette;
    void *vars = Save_VarsFlags_Get(p->saveData);
    s32 progress[5];
    s32 i;

    progress[0] = Save_VarsFlags_GetBattleTowerPrintProgress(vars);
    progress[1] = Save_VarsFlags_GetBattleFactoryPrintProgress(vars);
    progress[2] = Save_VarsFlags_GetBattleArcadePrintProgress(vars);
    progress[3] = Save_VarsFlags_GetBattleCastlePrintProgress(vars);
    progress[4] = Save_VarsFlags_GetBattleHallPrintProgress(vars);

    for (i = 0; i < 5; i++) {
        if (progress[i] != 0) {
            if ((u32)(progress[i] - 2) <= 1) {
                u16 *buf = PaletteData_GetFadedBuf(p->palette, 2);
                ov40_022334F8(buf, (s32)(((u32)(ov40_02245174[i] + 4) << 20) >> 16), 0x10);
            }
        }
    }
    PaletteData_SetAutoTransparent(palette, 1);
}
