#include "global.h"

typedef struct PokeathlonCourseData PokeathlonCourseData;
extern void *PokeathlonCourse_GetHeapAllocPtr4(PokeathlonCourseData *data);

// Float / 64-bit helpers from the ROM's runtime library.
extern unsigned long long _dflt(int);
extern unsigned long long _dmul(unsigned long long, unsigned long long);
extern int _dfix(unsigned long long);
extern unsigned long long _f2d(u32);
extern s64 _ll_mul(s64 a, s64 b);

typedef struct UnkStruct_ov96_02205E30_Player {
    u32 unk_00[22]; // 0x00; the word at [unk_B1] is an object whose +0x30 is read
    VecFx32 pos;    // 0x58
    VecFx32 vel;    // 0x64
    u8 filler_70[4];
    u32 dir;        // 0x74
    u8 filler_78[0x20];
    u32 unk_98;
    u8 unk_9C;
    u8 unk_9D;
    u8 filler_9E[4];
    u8 unk_A2;
    u8 filler_A3;
    u8 active;      // 0xA4
    u8 filler_A5;
    u8 unk_A6;
    u8 unk_A7;
    u8 unk_A8;
    u8 unk_A9;
    u8 unk_AA;
    u8 unk_AB;
    u16 unk_AC;
    u8 filler_AE[2];
    u8 unk_B0;
    u8 unk_B1;
    u8 filler_B2[6];
} UnkStruct_ov96_02205E30_Player; // size 0xB8

typedef struct UnkStruct_ov96_02205E30 {
    u8 filler_00[0x24];
    UnkStruct_ov96_02205E30_Player players[4]; // 0x24
    u8 filler_304[0x20C];
    u8 unk_510;
    u8 filler_511[8];
    u8 unk_519;
    u8 filler_51A[2];
    s16 unk_51C;
    s16 unk_51E;
    u8 filler_520[0x44];
    u8 unk_564[0x158];
    u8 unk_6BC[4];
} UnkStruct_ov96_02205E30;

void ov96_02206368(PokeathlonCourseData *data, UnkStruct_ov96_02205E30 *ctx, UnkStruct_ov96_02205E30_Player *player);
int ov96_02207B8C(UnkStruct_ov96_02205E30_Player *player);
u8 ov96_02207BD4(u8 value);
void ov96_021E8228(PokeathlonCourseData *data, u32 index, u32 sub, u32 kind, u32 value);
u32 ov96_021EAF8C(void *obj);
u32 ov96_02207300(UnkStruct_ov96_02205E30 *ctx, u32 dir, u32 param, VecFx32 *prevPos, VecFx32 *pos, VecFx32 *outPos);
int ov96_02207418(PokeathlonCourseData *data, UnkStruct_ov96_02205E30_Player *players, VecFx32 *out);
void ov96_022078B0(void *unk564, UnkStruct_ov96_02205E30_Player *player, u8 *out);

static int ov96_02205E30_Damp(int v) {
    return _dfix(_dmul(_dflt(v), 0xBFD3333333333333ULL));
}

void ov96_02205E30(PokeathlonCourseData *data) {
    UnkStruct_ov96_02205E30 *ctx;
    UnkStruct_ov96_02205E30_Player *player;
    u8 skip[4];
    VecFx32 friction;
    VecFx32 prevPos;
    VecFx32 hitPos;
    int i;
    int hit;
    int fric;
    fx32 fricMag;

    ctx = PokeathlonCourse_GetHeapAllocPtr4(data);
    ctx->unk_519 = 0;
    for (i = 0; i < 4; i++) {
        skip[i] = 0;
        if (ctx->players[i].active != 0) {
            ov96_02206368(data, ctx, &ctx->players[i]);
            skip[i] = 1;
        }
    }

    for (i = 0; i < 4; i++) {
        player = &ctx->players[i];
        if (skip[i] != 0) {
            continue;
        }

        if (ov96_02207B8C(player) != 0) {
            player->unk_A7 = ov96_02207BD4(player->unk_AA);
            player->unk_AA = 0;
            player->unk_AB = 1;
            player->vel.x = 0;
            player->vel.y = 0;
            player->vel.z = 0;
            player->unk_B0 = 2;
            player->unk_A9 = 10;
            ov96_021E8228(data, (u8)player->unk_98, player->unk_B1, 3, player->unk_A7);
        }

        if (player->unk_A9 != 0 && player->unk_AB != 0) {
            if (player->unk_A8 == 0) {
                if (player->unk_A7 != 0) {
                    player->unk_AC = player->unk_AC + 1;
                    if (player->unk_AC > 999) {
                        player->unk_AC = 999;
                    }
                    player->unk_A7 = player->unk_A7 - 1;
                }
                player->unk_A9 = player->unk_A9 - 1;
                if (player->unk_A9 == 0) {
                    player->unk_A9 = 0;
                    player->unk_9C = 1;
                    player->unk_9D = 1;
                    ov96_021E8228(data, (u8)player->unk_98, player->unk_B1, 7, 1);
                } else {
                    player->unk_A8 = 4;
                }
            } else {
                player->unk_A8 = player->unk_A8 - 1;
            }
        }

        if (player->unk_AB != 0) {
            continue;
        }

        prevPos = player->pos;
        VEC_Add(&player->pos, &player->vel, &player->pos);

        if (player->pos.x < 0xD0000 || player->pos.x > 0x130000) {
            if (player->pos.y < 0x68000) {
                player->pos.y = 0x68000;
            } else if (player->pos.y > 0x188000) {
                player->pos.y = 0x188000;
            }
        } else {
            if (player->pos.y < 0x68000) {
                player->pos.y = 0x68000;
            } else if (player->pos.y > 0x1A0000) {
                player->pos.y = 0x1A0000;
            }
        }

        if (player->pos.y > 0x188000) {
            if (player->pos.x < 0xD0000) {
                player->pos.x = 0xD0000;
            } else if (player->pos.x > 0x130000) {
                player->pos.x = 0x130000;
            }
        } else {
            if (player->pos.x < 0x90000) {
                player->pos.x = 0x90000;
            } else if (player->pos.x > 0x170000) {
                player->pos.x = 0x170000;
            }
        }

        player->dir = (u8)ov96_02207300(ctx, player->dir, ov96_021EAF8C((void *)player->unk_00[player->unk_B1]), &prevPos, &player->pos, &player->pos);

        switch (player->dir) {
        case 1:
            if (player->vel.y > 0) {
                player->vel.y = ov96_02205E30_Damp(player->vel.y);
            }
            break;
        case 2:
            if (player->vel.x < 0) {
                player->vel.x = ov96_02205E30_Damp(player->vel.x);
            }
            break;
        case 3:
            if (player->vel.y < 0) {
                player->vel.y = ov96_02205E30_Damp(player->vel.y);
            }
            break;
        case 4:
            if (player->vel.x > 0) {
                player->vel.x = ov96_02205E30_Damp(player->vel.x);
            }
            break;
        case 5:
            if (player->vel.x > 0) {
                player->vel.x = ov96_02205E30_Damp(player->vel.x);
            }
            if (player->vel.y > 0) {
                player->vel.y = ov96_02205E30_Damp(player->vel.y);
            }
            break;
        case 6:
            if (player->vel.x < 0) {
                player->vel.x = ov96_02205E30_Damp(player->vel.x);
            }
            if (player->vel.y > 0) {
                player->vel.y = ov96_02205E30_Damp(player->vel.y);
            }
            break;
        case 7:
            if (player->vel.x < 0) {
                player->vel.x = ov96_02205E30_Damp(player->vel.x);
            }
            if (player->vel.y < 0) {
                player->vel.y = ov96_02205E30_Damp(player->vel.y);
            }
            break;
        case 8:
            if (player->vel.x > 0) {
                player->vel.x = ov96_02205E30_Damp(player->vel.x);
            }
            if (player->vel.y < 0) {
                player->vel.y = ov96_02205E30_Damp(player->vel.y);
            }
            break;
        }

        hit = ov96_02207418(data, ctx->players, &hitPos);
        if (ctx->unk_519 == 0 && hit != 0) {
            ctx->unk_519 = 1;
            ctx->unk_51E = hitPos.x / 4096;
            ctx->unk_51C = hitPos.y / 4096;
        }

        friction = player->vel;
        if (VEC_Mag(&friction) > 0) {
            fric = _dfix(_dmul(0x40B0000000000000ULL, _dmul(0x3FB999999999999AULL, _f2d(0x40C00000))));
            if (ctx->unk_510 != 0) {
                fric += 0x3000;
            }
            VEC_Normalize(&friction, &friction);
            friction.x = (s32)((u64)(_ll_mul((s64)friction.x, (s64)fric) + 0x800) >> 12);
            friction.y = (s32)((u64)(_ll_mul((s64)friction.y, (s64)fric) + 0x800) >> 12);
            fricMag = VEC_Mag(&friction);
            if (VEC_Mag(&player->vel) < fricMag) {
                player->vel.x = 0;
                player->vel.y = 0;
            } else {
                VEC_Subtract(&player->vel, &friction, &player->vel);
            }
        }

        if (player->unk_9C == 0 && player->unk_A6 == 1) {
            player->unk_A2 = player->unk_A2 - 1;
            if (player->unk_A2 == 0) {
                player->unk_A6 = 0;
            }
        }

        ov96_022078B0(ctx->unk_564, player, &ctx->unk_6BC[i]);
    }
}
