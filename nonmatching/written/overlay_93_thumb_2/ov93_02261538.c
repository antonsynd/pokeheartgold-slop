#include "global.h"

typedef struct UnkStruct_ov93_02261538 {
    u8 filler_00[0x10];
    u8 unk_10;
} UnkStruct_ov93_02261538;

typedef void (*ov93_02261538_Fn)(void *, void *, void *, void *);

extern ov93_02261538_Fn ov93_02262C94[];

void ov93_02261538(void *param0, void *param1, UnkStruct_ov93_02261538 *param2) {
    ov93_02261538_Fn fn = ov93_02262C94[param2->unk_10];
    fn(param0, param1, param2, (void *)fn);
}
