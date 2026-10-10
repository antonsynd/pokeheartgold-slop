#include "global.h"

typedef struct UnkStruct_ov108_021E5B48 {
    u32 unk0;
    int state;
    u32 unk8;
    int unkC;
} UnkStruct_ov108_021E5B48;

extern int ov108_021E6068(UnkStruct_ov108_021E5B48 *data);
extern int ov108_021E5E68(UnkStruct_ov108_021E5B48 *data);
extern int ov108_021E6090(UnkStruct_ov108_021E5B48 *data);
extern void ov108_021E846C(UnkStruct_ov108_021E5B48 *data);

int ov108_021E5B48(UnkStruct_ov108_021E5B48 *data) {
    switch (data->state) {
    case 0:
        data->state = ov108_021E6068(data);
        break;
    case 2:
        data->state = ov108_021E5E68(data);
        break;
    case 3:
        data->state = ov108_021E6090(data);
        break;
    case 4:
        data->state = 0;
        ov108_021E846C(data);
        return data->unkC;
    }
    ov108_021E846C(data);
    return 4;
}
