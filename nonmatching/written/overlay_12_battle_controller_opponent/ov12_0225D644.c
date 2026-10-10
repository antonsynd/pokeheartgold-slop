typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

extern const u8 ov12_0226D1E8[];

u32 BattleSystem_GetBattleType(void *bs);
void *BattleSystem_GetSpriteManager(void *bs);
u32 BattleSystem_GetBattlerIdPartner(void *bs, u32 battler);
char *BattleSystem_GetOpponentData(void *bs, u32 id);
void ManagedSprite_OffsetPositionXY(void *spr, s16 x, s16 y);
void ManagedSprite_GetPositionXY(void *spr, s16 *x, s16 *y);
void ManagedSprite_SetPriority(void *spr, u32 v);
void ManagedSprite_SetAnimationFrame(void *spr, u32 v);
void ManagedSprite_SetAnim(void *spr, u32 v);
void ManagedSprite_SetAnimateFlag(void *spr, u32 v);
u32 ManagedSprite_GetAnimationFrame(void *spr);
void Sprite_DeleteAndFreeResources(void *spr);
void SpriteManager_UnloadCharObjById(void *sm, u32 id);
void SpriteManager_UnloadPlttObjById(void *sm, u32 id);
void SpriteManager_UnloadCellObjById(void *sm, u32 id);
void SpriteManager_UnloadAnimObjById(void *sm, u32 id);
u32 ov07_02233F20(void *a);
void ov07_022344A8(void *a, s16 x, s16 y);
void ov07_0223449C(void *a, u32 v);
void ov07_02233EFC(void *a, u32 v);
void ov07_022344C0(void *a, u32 v);
void ov07_022344D0(void *a, u32 v);
void ov12_0226430C(void *bs, u32 battler, u32 command);
void Heap_Free(void *ptr);
void SysTask_Destroy(void *task);

static void Cleanup(char *d)
{
    void *sm = BattleSystem_GetSpriteManager(*(void **)d);
    u32 id;
    Sprite_DeleteAndFreeResources(*(void **)(*(char **)(d + 4) + 0x18));
    *(u32 *)(*(char **)(d + 4) + 0x18) = 0;
    id = *(u8 *)(*(char **)(d + 4) + 0x195);
    SpriteManager_UnloadCharObjById(sm, id + 0x4E2F);
    id = *(u8 *)(*(char **)(d + 4) + 0x195);
    SpriteManager_UnloadPlttObjById(sm, id + 0x4E2A);
    id = *(u8 *)(*(char **)(d + 4) + 0x195);
    SpriteManager_UnloadCellObjById(sm, id + 0x4E27);
    id = *(u8 *)(*(char **)(d + 4) + 0x195);
    SpriteManager_UnloadAnimObjById(sm, id + 0x4E27);
    *(u8 *)(d + 0xa) = 2;
}

void ov12_0225D644(void *task, char *d)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    s16 *st = (s16 *)&slot;
    u32 battleType = BattleSystem_GetBattleType(*(void **)d);

    switch (*(u8 *)(d + 0xa)) {
    case 0:
        if (*(u8 *)(d + 0xb) != 2) {
            ManagedSprite_SetPriority(*(void **)(*(char **)(d + 4) + 0x18), 1);
            ManagedSprite_SetAnimationFrame(*(void **)(*(char **)(d + 4) + 0x18), 0);
            ManagedSprite_SetAnim(*(void **)(*(char **)(d + 4) + 0x18), 1);
            ManagedSprite_SetAnimateFlag(*(void **)(*(char **)(d + 4) + 0x18), 1);
            *(u8 *)(d + 0xa) = 1;
            return;
        }
        ManagedSprite_OffsetPositionXY(*(void **)(*(char **)(d + 4) + 0x18), 5, 0);
        ManagedSprite_GetPositionXY(*(void **)(*(char **)(d + 4) + 0x18), &st[1], &st[0]);
        if (st[1] < 0x128) {
            return;
        }
        Cleanup(d);
        return;
    case 1: {
        char *p;
        ManagedSprite_OffsetPositionXY(*(void **)(*(char **)(d + 4) + 0x18), -5, 0);
        ManagedSprite_GetPositionXY(*(void **)(*(char **)(d + 4) + 0x18), &st[1], &st[0]);
        p = *(char **)(d + 4);
        if (*(u32 *)(p + 0x88) != 0 && (battleType & 2) && !(battleType & 8)) {
            u32 frame = ManagedSprite_GetAnimationFrame(*(void **)(p + 0x18));
            u32 idx = *(u32 *)(d + 0xc);
            if (*(s16 *)(ov12_0226D1E8 + idx * 0x18 + frame * 4) != 0x7FFF) {
                u32 partner = BattleSystem_GetBattlerIdPartner(*(void **)d, *(u8 *)(d + 9));
                char *opp = BattleSystem_GetOpponentData(*(void **)d, partner);
                if (frame == 3 && ov07_02233F20(*(void **)(opp + 0x88)) != 0) {
                    s32 x = st[1] + *(s16 *)(ov12_0226D1E8 + idx * 0x18 + frame * 4);
                    s32 y = st[0] + *(s16 *)(ov12_0226D1E8 + 2 + idx * 0x18 + frame * 4);
                    ov07_022344A8(*(void **)(opp + 0x88), (s16)x, (s16)y);
                    ov07_0223449C(*(void **)(opp + 0x88), 1);
                    ov07_02233EFC(*(void **)(opp + 0x88), 0);
                    ov07_022344C0(*(void **)(opp + 0x88), 1);
                    ov07_022344D0(*(void **)(opp + 0x88), 1);
                }
            }
        }
        if (st[1] > -40) {
            return;
        }
        Cleanup(d);
        return;
    }
    case 2:
        ov12_0226430C(*(void **)d, *(u8 *)(d + 9), *(u8 *)(d + 8));
        Heap_Free(d);
        SysTask_Destroy(task);
        return;
    }
}
