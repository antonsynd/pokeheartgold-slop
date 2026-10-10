#include "global.h"

typedef struct UnkStruct_ov109_021E5A70_Args {
    u8 unk0[2];
    u8 unk2;
    u8 unk3[5];
    void *menuInputStateMgr;
    void *saveData;
} UnkStruct_ov109_021E5A70_Args;

typedef struct UnkStruct_ov109_021E5A70 {
    u32 heapId;
    u8 unk4[8];
    u32 menuInputState;
    UnkStruct_ov109_021E5A70_Args *args;
    u8 unk14[5];
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
    u8 unk1D[5];
    u8 textFrameDelay;
    u8 frame;
    u8 unk24[0xA0];
    u8 numSaved;
    u8 unkC5;
    u8 unkC6[2];
    void *photos;
    u8 unkCC[0x120];
    void *photoAlbum;
} UnkStruct_ov109_021E5A70;

extern u32 MenuInputStateMgr_GetState(void *mgr);
extern void *Save_PlayerData_GetOptionsAddr(void *saveData);
extern u8 Options_GetTextFrameDelay(void *options);
extern u32 Options_GetFrame(void *options);
extern void *Save_PhotoAlbum_Get(void *saveData);
extern void *PhotoAlbum_LoadAllInUsePhotos(void *photoAlbum, u32 heapId);
extern u8 PhotoAlbum_GetNumSaved(void *photoAlbum);
extern void ov109_021E5D08(UnkStruct_ov109_021E5A70 *data);

const u8 ov109_021E7890[12] = { 0x00, 0x01, 0x04, 0x05, 0x08, 0x09, 0x02, 0x03, 0x06, 0x07, 0x0A, 0x0B };

void ov109_021E5A70(UnkStruct_ov109_021E5A70 *data) {
    void *options;
    int idx;
    int val;

    data->menuInputState = MenuInputStateMgr_GetState(data->args->menuInputStateMgr);
    options = Save_PlayerData_GetOptionsAddr(data->args->saveData);
    data->textFrameDelay = Options_GetTextFrameDelay(options);
    data->frame = Options_GetFrame(options);
    idx = data->args->unk2;
    val = ov109_021E7890[idx % 12];
    data->unk19 = idx / 12;
    data->unk1B = val % 4;
    data->unk1C = val >> 2;
    data->photoAlbum = Save_PhotoAlbum_Get(data->args->saveData);
    data->photos = PhotoAlbum_LoadAllInUsePhotos(data->photoAlbum, data->heapId);
    data->numSaved = PhotoAlbum_GetNumSaved(data->photoAlbum);
    data->unkC5 = data->numSaved;
    data->unk1A = data->unkC5 / 12;
    if (data->unkC5 % 12 != 0) {
        data->unk1A++;
    }
    if (data->unkC5 == 0) {
        data->unk1A = 1;
    }
    ov109_021E5D08(data);
}
