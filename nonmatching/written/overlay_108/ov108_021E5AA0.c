#include "global.h"

typedef struct UnkStruct_ov108_021E5AA0 {
    u32 unk0;
    int state;
    u32 unk8;
    int unkC;
} UnkStruct_ov108_021E5AA0;

extern int ov108_021E5D90(UnkStruct_ov108_021E5AA0 *data);
extern int ov108_021E5DB8(UnkStruct_ov108_021E5AA0 *data);
extern int ov108_021E5E68(UnkStruct_ov108_021E5AA0 *data);
extern void ov108_021E846C(UnkStruct_ov108_021E5AA0 *data);

int ov108_021E5AA0(UnkStruct_ov108_021E5AA0 *data) {
    switch (data->state) {
    case 0:
        data->state = ov108_021E5D90(data);
        break;
    case 1:
        data->state = ov108_021E5DB8(data);
        break;
    case 2:
        data->state = ov108_021E5E68(data);
        break;
    case 4:
        data->state = 0;
        ov108_021E846C(data);
        return data->unkC;
    }
    ov108_021E846C(data);
    return 2;
}
