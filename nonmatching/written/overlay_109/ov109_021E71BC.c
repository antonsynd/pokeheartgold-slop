#include "global.h"

typedef struct UnkStruct_ov109_021E71BC {
    u8 unk0[0x14];
    void *bgConfig;
    u8 unk18;
    u8 unk19;
} UnkStruct_ov109_021E71BC;

extern void ov109_021E7178(void *data, void *photo, u8 a2, u8 x, u8 y);
extern void ScheduleBgTilemapBufferTransfer(void *bgConfig, u8 bgId);

extern const u8 ov109_021E7890[12];

void ov109_021E71BC(UnkStruct_ov109_021E71BC *data, int a, int b) {
    int val;

    if (a / 12 == data->unk19) {
        val = ov109_021E7890[a % 12];
        ov109_021E7178(data, NULL, 3, (u8)(val % 4), (u8)(val >> 2));
    }
    if (b / 12 == data->unk19) {
        val = ov109_021E7890[b % 12];
        ov109_021E7178(data, NULL, 3, (u8)(val % 4), (u8)(val >> 2));
    }
    ScheduleBgTilemapBufferTransfer(data->bgConfig, 3);
}
