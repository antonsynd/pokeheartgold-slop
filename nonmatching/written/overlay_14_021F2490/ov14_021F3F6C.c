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
} UnkStruct_ov14_021F3F6C_Template;

typedef struct {
    u8 pad0[0x2f4];
    void *unk2F4;
    void *unk2F8;
    u8 pad2FC[0xf4];
    void *unk3F0[8];
    u8 pad410[0x84b8];
    u16 unk88C8;
    u8 pad88CA[0x8];
    u16 unk88D2;
} UnkStruct_ov14_021F3F6C_34;

typedef struct {
    u8 pad0[0x21];
    u8 unk21;
    u8 pad22[0x12];
    UnkStruct_ov14_021F3F6C_34 *unk34;
} UnkStruct_ov14_021F3F6C;

extern UnkStruct_ov14_021F3F6C_Template ov14_021F810C;
extern s8 ov14_021F8070[];
extern s8 ov14_021F8078[];

#define Sprite(base, idx) (*(void **)((u8 *)(base) + 0x2fc + (idx) * 4))

void ManagedSprite_GetPositionXY(void *a0, s16 *a1, s16 *a2);
u32 ManagedSprite_GetDrawPriority(void *a0);
s32 ManagedSprite_GetPriority(void *a0);
void *SpriteSystem_NewSprite(void *a0, void *a1, UnkStruct_ov14_021F3F6C_Template *a2);
void ManagedSprite_SetPaletteOverride(void *a0, u32 a1);
void ManagedSprite_SetDrawFlag(void *a0, u32 a1);
void ManagedSprite_SetPositionXY(void *a0, s16 a1, s16 a2);
void ManagedSprite_SetPriority(void *a0, s32 a1);
void *Sprite_GetImageProxy(void *a0);
void Sprite_SetImageProxy(void *a0, void *a1);
void ov14_021F2A74(UnkStruct_ov14_021F3F6C_34 *a0, u32 a1, u32 a2);

void ov14_021F3F6C(UnkStruct_ov14_021F3F6C *a0)
{
    s16 pos[2];
    UnkStruct_ov14_021F3F6C_Template tpl;
    UnkStruct_ov14_021F3F6C_34 *r4;
    u32 idx;
    void *proxy;
    u32 drawPriority;
    s32 priority;
    u16 i;

    if (a0->unk21 == 0xff) {
        return;
    }
    r4 = a0->unk34;
    idx = *((u8 *)r4 + a0->unk21 + 0x4094);
    ManagedSprite_GetPositionXY(Sprite(r4, idx), &pos[1], &pos[0]);
    if (r4->unk3F0[0] == 0) {
        tpl = ov14_021F810C;
        tpl.unk8 = ManagedSprite_GetDrawPriority(Sprite(r4, idx)) + 1;
        tpl.unk2C = ManagedSprite_GetPriority(Sprite(r4, idx));
        tpl.unk14 = idx + 0xc0e0;
        r4->unk88D2 = 1;
        for (i = 0; i < 8; i = i + 1) {
            tpl.x = pos[1] + ov14_021F8070[i];
            tpl.y = pos[0] + ov14_021F8078[i];
            r4->unk3F0[i] = SpriteSystem_NewSprite(r4->unk2F4, r4->unk2F8, &tpl);
            ManagedSprite_SetPaletteOverride(r4->unk3F0[i], 8);
        }
        r4->unk88D2 = 0;
        return;
    }
    proxy = Sprite_GetImageProxy(*(void **)Sprite(r4, idx));
    drawPriority = ManagedSprite_GetDrawPriority(Sprite(r4, idx));
    priority = ManagedSprite_GetPriority(Sprite(r4, idx));
    for (i = 0; i < 8; i = i + 1) {
        Sprite_SetImageProxy(*(void **)r4->unk3F0[i], proxy);
        ManagedSprite_SetPositionXY(r4->unk3F0[i], pos[1] + ov14_021F8070[i], pos[0] + ov14_021F8078[i]);
        ov14_021F2A74(a0->unk34, i + 0x3d, drawPriority + 1);
        ManagedSprite_SetPriority(a0->unk34->unk3F0[i], priority);
        ManagedSprite_SetDrawFlag(a0->unk34->unk3F0[i], 1);
    }
}
