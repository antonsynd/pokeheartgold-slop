#include "global.h"

typedef struct UnkStruct_ov108_021E5AF0 {
    u32 unk0;
    int state;
    u32 unk8;
    int unkC;
} UnkStruct_ov108_021E5AF0;

extern int ov108_021E5F10(UnkStruct_ov108_021E5AF0 *data);
extern int ov108_021E5F38(UnkStruct_ov108_021E5AF0 *data);
extern int ov108_021E5E68(UnkStruct_ov108_021E5AF0 *data);
extern int ov108_021E6010(UnkStruct_ov108_021E5AF0 *data);
extern void ov108_021E846C(UnkStruct_ov108_021E5AF0 *data);

int ov108_021E5AF0(UnkStruct_ov108_021E5AF0 *data) {
    switch (data->state) {
    case 0:
        data->state = ov108_021E5F10(data);
        break;
    case 1:
        data->state = ov108_021E5F38(data);
        break;
    case 2:
        data->state = ov108_021E5E68(data);
        break;
    case 3:
        data->state = ov108_021E6010(data);
        break;
    case 4:
        data->state = 0;
        ov108_021E846C(data);
        return data->unkC;
    }
    ov108_021E846C(data);
    return 3;
}
