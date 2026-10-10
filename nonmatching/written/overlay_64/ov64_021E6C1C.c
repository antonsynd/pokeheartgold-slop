#include "global.h"
#include "filesystem.h"
#include "follow_mon.h"
#include "heap.h"
#include "pokemon.h"
#include "sprite.h"
#include "sprite_system.h"

extern const u8 ov64_021E6FD4[0x34];
extern const s16 ov64_021E6ECC[];

extern u32 ov64_021E6E30(u16 species, u8 a1, u8 gender);
extern void sub_020145B4(const void *src, int a1, int a2, int a3, int a4, int a5, void *dest);
extern void ov64_021E5AAC(void *src, u32 dest, u32 size);
extern void ov64_021E5AE4(void *src, u32 dest, u32 size);

typedef struct UnkStruct_ov64_021E6C1C_Tmpl {
    s16 x;
    s16 y;
    u8 filler_04[0x10];
    int resId;
    int unk_18;
    int unk_1C;
    int unk_20;
    u8 filler_24[0x10];
} UnkStruct_ov64_021E6C1C_Tmpl;

typedef struct UnkStruct_ov64_021E6C1C_Sprite {
    Sprite *sprite;
} UnkStruct_ov64_021E6C1C_Sprite;

void ov64_021E6C1C(u8 *work, int slot, int pos, int resId, int param5) {
    u8 hdr[4];
    UnkStruct_ov64_021E6C1C_Tmpl tmpl;
    NARC *narc;
    int fileId;
    int vramRes;
    int n;
    int i;
    UnkStruct_ov64_021E6C1C_Sprite **slotPtr;
    UnkStruct_ov64_021E6C1C_Sprite *ms;
    u32 loc;
    u32 size;
    u8 gender;
    u32 fileIdx;
    void *res;
    u8 *tex;
    u8 *texImg;
    void *buf;
    u32 palLoc;
    u8 *palData;
    u16 species;

    species = *(u16 *)(work + 0x198);
    ReadWholeNarcMemberByIdPair(hdr, 0x8d, SpeciesToOverworldModelIndexOffset(species));
    narc = NARC_New(0x61, 0x3b);
    if (hdr[1] != 0) {
        fileId = 0xD;
        vramRes = 0xDCC2;
        n = 8;
    } else {
        fileId = 0xA;
        vramRes = 0xDCC1;
        n = 4;
    }
    SpriteSystem_LoadCharResObjFromOpenNarc(*(SpriteSystem **)(work + 0x130), *(SpriteManager **)(work + 0x134), narc, fileId, TRUE, TRUE, resId);
    NARC_Delete(narc);

    for (i = 0; i < 0x34; i++) {
        ((u8 *)&tmpl)[i] = ov64_021E6FD4[i];
    }
    tmpl.resId = resId;
    tmpl.unk_18 = param5;
    tmpl.unk_1C = vramRes;
    tmpl.unk_20 = vramRes;
    tmpl.x = ov64_021E6ECC[pos * 2];
    tmpl.y = ov64_021E6ECC[pos * 2 + 1];

    slotPtr = (UnkStruct_ov64_021E6C1C_Sprite **)(work + 0x138);
    ms = (UnkStruct_ov64_021E6C1C_Sprite *)SpriteSystem_NewSprite(*(SpriteSystem **)(work + 0x130), *(SpriteManager **)(work + 0x134), (const ManagedSpriteTemplate *)&tmpl);
    slotPtr[slot] = ms;
    loc = NNS_G2dGetImageLocation(Sprite_GetImageProxy(slotPtr[slot]->sprite), 1);

    size = n * (n * 0x20);
    gender = GetGenderBySpeciesAndPersonality(*(u16 *)(work + 0x198), *(u32 *)(work + 0x190));
    fileIdx = ov64_021E6E30(*(u16 *)(work + 0x198), *(u8 *)(work + 0x19B), gender);
    res = AllocAndReadWholeNarcMemberByIdPair(0x51, (u16)fileIdx, 0x3b);
    tex = (u8 *)NNS_G3dGetTex(res);
    texImg = tex + *(int *)(tex + 0x14);
    buf = Heap_Alloc(0x3b, size);
    if ((u16)(*(u16 *)(work + 0x198) - 0x62) < 2) {
        sub_020145B4(texImg + size * 6, n, 0, 0, n, n, buf);
        ov64_021E5AAC(buf, loc, size);
        sub_020145B4(texImg + size * 7, n, 0, 0, n, n, buf);
        ov64_021E5AAC(buf, loc + size, size);
    } else {
        sub_020145B4(texImg + size * 2, n, 0, 0, n, n, buf);
        ov64_021E5AAC(buf, loc, size);
        sub_020145B4(texImg + size * 3, n, 0, 0, n, n, buf);
        ov64_021E5AAC(buf, loc + size, size);
    }
    Heap_Free(buf);

    palLoc = NNS_G2dGetImagePaletteLocation(Sprite_GetPaletteProxy(slotPtr[slot]->sprite), 1);
    palData = tex + *(int *)(tex + 0x38);
    if (CalcShininessByOtIdAndPersonality(*(u32 *)(work + 0x194), *(u32 *)(work + 0x190)) != 0) {
        palData += 0x20;
    }
    ov64_021E5AE4(palData, palLoc, 0x20);
    Heap_Free(res);
}
