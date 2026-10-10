typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef int s32;

void ManagedSprite_SetDrawFlag(void *, int);
void ManagedSprite_SetAnim(void *, int);
void ManagedSprite_SetPaletteOverride(void *, int);
void ManagedSprite_SetPositionXYWithSubscreenOffset(void *, s16, s16, s32);
extern const u8 ov112_021FECE4[];

void ov112_021EA51C(u8 *work, int idx) {
    const u8 *ent = &ov112_021FECE4[idx * 4];
    void *sprite = *(void **)(work + 0x1E530);
    ManagedSprite_SetPositionXYWithSubscreenOffset(sprite, ent[0], ent[1], 0x100000);
    ManagedSprite_SetAnim(*(void **)(work + 0x1E530), ent[2]);
    ManagedSprite_SetPaletteOverride(*(void **)(work + 0x1E530), ent[3]);
    ManagedSprite_SetDrawFlag(*(void **)(work + 0x1E530), 1);
}
