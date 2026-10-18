#include "global.h"

#include "bg_window.h"
#include "gf_gfx_loader.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "pokemon.h"

typedef struct Ov70MonInfo {
    s16 species;
    s8 gender;
    s8 level;
} Ov70MonInfo;

void ov70_02245084(Window *window, String *string, u32 x, u32 y, u32 z, u32 color);

extern int ov70_02245910[];
extern u32 ov70_022465EC[];

void ov70_0223F508(MsgData *msgData, MessageFormat *msgFmt, Window *windows, BoxPokemon *boxMon, Ov70MonInfo *info) {
    String *label;
    String *levelStr;
    String *nickname;
    String *genderStr;
    int gender;
    int level;
    int i;

    nickname = String_New(11, (enum HeapID)0x3D);
    genderStr = String_New(11, (enum HeapID)0x3D);
    GetBoxMonData(boxMon, MON_DATA_NICKNAME_STRING, nickname);
    gender = GetBoxMonData(boxMon, MON_DATA_GENDER, NULL) + 1;
    level = CalcBoxMonLevel(boxMon);
    label = NewString_ReadMsgData(msgData, 0x68);
    BufferIntegerAsString(msgFmt, 3, level, 3, PRINTING_MODE_LEFT_ALIGN, TRUE);
    levelStr = ReadMsgData_ExpandPlaceholders(msgFmt, msgData, 0x6C, (enum HeapID)0x3D);
    if (gender != 3) {
        ReadMsgDataIntoString(msgData, ov70_02245910[gender], genderStr);
    }
    for (i = 0; i < 3; i++) {
        FillWindowPixelBuffer(&windows[i], 0);
    }
    ov70_02245084(&windows[0], label, 0, 0, 0, 0xF0200);
    ov70_02245084(&windows[1], nickname, 0, 0, 0, 0x10200);
    ov70_02245084(&windows[2], levelStr, 0, 0, 2, 0x10200);
    if (gender != 3) {
        ov70_02245084(&windows[1], genderStr, 0x46, 0, 0, ov70_022465EC[gender - 1]);
    }
    info->species = GetBoxMonData(boxMon, MON_DATA_SPECIES, NULL);
    info->gender = gender;
    info->level = level;
    String_Delete(levelStr);
    String_Delete(genderStr);
    String_Delete(nickname);
    String_Delete(label);
}

void *ov70_0223F634(enum HeapID heapID, int a1, u32 *pltt) {
    u32 size;
    void *ret = GfGfxLoader_LoadFromNarc_GetSizeOut((NarcId)0x4A, 13, FALSE, heapID, FALSE, &size);
    *pltt = size / 2;
    return ret;
}
