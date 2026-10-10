#include "global.h"
#include "filesystem.h"
#include "heap.h"
#include "sprite.h"
#include "system.h"

extern u32 AGB_GetBoxMonData(void *mon, int attr, void *dst);
extern int ov74_02231D70(u8 *work, int box, int index);
extern int ov74_02231D94(u8 *work, int box, int index);
extern u32 ov74_02231DB8(u8 *work, int box, int index);
extern int TranslateAgbSpecies(int species);
extern u32 ov74_02231E54(int species, u32 personality, u32 version);
extern void ov74_02231F30(int species, int isEgg, u32 form, int index, Sprite *sprite, void *buffer, NARC *narc);
extern void ov74_02231FB0(void);
extern void ov74_02232678(u8 *work, int box);
extern void ov74_0223262C(u8 *work);

void ov74_02231FF4(u8 *work) {
    u32 callerR4;
    int i;
    int speciesGBA;
    int isEgg;
    u32 personality;
    u32 form;
    NARC *narc;
    void *buffer;

    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    form = callerR4;

    narc = NARC_New(0x14, 0x4c);
    buffer = Heap_AllocAtEnd(0x4c, 0x1000);

    for (i = 0; i < 30; i++) {
        u8 *mon = *(u8 **)(work + 0xe880) + 4 + *(int *)(work + 0xe884) * 0x960 + i * 0x50;
        Sprite **sprites = (Sprite **)(work + 0x1a8 + i * 0xc);

        if (AGB_GetBoxMonData(mon, 5, NULL) != 0) {
            speciesGBA = ov74_02231D70(work, *(int *)(work + 0xe884), i);
            isEgg = ov74_02231D94(work, *(int *)(work + 0xe884), i);
            personality = ov74_02231DB8(work, *(int *)(work + 0xe884), i);
            form = ov74_02231E54(TranslateAgbSpecies(speciesGBA), personality, gSystem.unk6A);
            ov74_02231F30(speciesGBA, isEgg, form, i, sprites[0], buffer, narc);
            Sprite_SetDrawFlag(sprites[0], TRUE);
            if (AGB_GetBoxMonData(mon, 0xc, NULL) != 0) {
                Sprite_SetDrawFlag(sprites[1], TRUE);
            } else {
                Sprite_SetDrawFlag(sprites[1], FALSE);
            }
        } else {
            ov74_02231F30(speciesGBA, isEgg, form, i, NULL, buffer, narc);
            Sprite_SetDrawFlag(sprites[0], FALSE);
            Sprite_SetDrawFlag(sprites[1], FALSE);
        }
    }

    Heap_Free(buffer);
    NARC_Delete(narc);
    *(void **)(work + 0x12604) = (void *)ov74_02231FB0;
    ov74_02232678(work, *(int *)(work + 0xe884));
    ov74_0223262C(work);
}
