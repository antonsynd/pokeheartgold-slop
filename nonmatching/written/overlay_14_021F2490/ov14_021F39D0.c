typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    s16 x;
    s16 y;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
    s32 unk30;
} UnkStruct_ov14_021F39D0_Template;

typedef struct {
    u8 pad0[0x2f4];
    void *unk2F4;
    void *unk2F8;
    u8 pad2FC[0x2c];
    void *unk328;
    u8 pad32C[0xc4];
    void *unk3F0[8];
    u8 pad410[0x84b8];
    u16 unk88C8;
    u8 pad88CA[0x8];
    u16 unk88D2;
} UnkStruct_ov14_021F39D0;

extern UnkStruct_ov14_021F39D0_Template ov14_021F83E4;
extern s8 ov14_021F8070[];
extern s8 ov14_021F8078[];

void ManagedSprite_GetPositionXY(void *a0, s16 *a1, s16 *a2);
u32 ManagedSprite_GetDrawPriority(void *a0);
s32 ManagedSprite_GetPriority(void *a0);
void *SpriteSystem_NewSprite(void *a0, void *a1, UnkStruct_ov14_021F39D0_Template *a2);
void ManagedSprite_SetPaletteOverride(void *a0, u32 a1);
void ManagedSprite_SetDrawFlag(void *a0, u32 a1);
void ManagedSprite_SetPositionXY(void *a0, s16 a1, s16 a2);
void ManagedSprite_SetPriority(void *a0, s32 a1);
void ov14_021F2A74(UnkStruct_ov14_021F39D0 *a0, u32 a1, u32 a2);

void ov14_021F39D0(UnkStruct_ov14_021F39D0 *a0)
{
    s16 pos[2];
    UnkStruct_ov14_021F39D0_Template tpl;
    u32 drawPriority;
    s32 priority;
    u32 i;

    if (a0->unk88C8 == 0) {
        return;
    }
    ManagedSprite_GetPositionXY(a0->unk328, &pos[1], &pos[0]);
    if (a0->unk3F0[0] == 0) {
        tpl = ov14_021F83E4;
        tpl.unk8 = ManagedSprite_GetDrawPriority(a0->unk328) + 1;
        tpl.unk2C = ManagedSprite_GetPriority(a0->unk328);
        tpl.unk14 = 0xc11f;
        a0->unk88D2 = 1;
        for (i = 0; i < 8; i++) {
            tpl.x = pos[1] + ov14_021F8070[i];
            tpl.y = pos[0] + ov14_021F8078[i];
            a0->unk3F0[i] = SpriteSystem_NewSprite(a0->unk2F4, a0->unk2F8, &tpl);
            ManagedSprite_SetPaletteOverride(a0->unk3F0[i], 8);
            ManagedSprite_SetDrawFlag(a0->unk3F0[i], 0);
        }
        a0->unk88D2 = 0;
        return;
    }
    drawPriority = ManagedSprite_GetDrawPriority(a0->unk328);
    priority = ManagedSprite_GetPriority(a0->unk328);
    for (i = 0; i < 8; i++) {
        ManagedSprite_SetPositionXY(a0->unk3F0[i], pos[1] + ov14_021F8070[i], pos[0] + ov14_021F8078[i]);
        ov14_021F2A74(a0, 0x3d + i, drawPriority + 1);
        ManagedSprite_SetPriority(a0->unk3F0[i], priority);
        ManagedSprite_SetDrawFlag(a0->unk3F0[i], 0);
    }
}
