#include "global.h"

typedef struct UnkStruct_ov43_0222C2B0_B {
    u8 padding_00[4];
    void *saveData;
    u8 padding_08[0x10];
    u8 unk_18[0x40];
} UnkStruct_ov43_0222C2B0_B;

extern void *sub_0202C6F4(void *saveData);
extern u32 ov43_0222C620(void *a);
extern void *sub_0202C23C(void *a, u32 b);
extern unsigned long long DWC_GetFriendKey(void *friendData);
extern void PlaySE(u16 sndseq);
extern void ov43_0222AAA4(void *a, u32 lo, u32 hi);
extern void ov43_0222AB20(void *a, void *b, u32 c, u32 d);
extern void ov43_0222C550(void *a, void *b, u32 c, u32 d);

int ov43_0222C2B0(void *param0, UnkStruct_ov43_0222C2B0_B *param1, void *param2, u32 heapID) {
    void *v0;
    unsigned long long v1;
    u32 v2;
    u32 v3;

    v0 = sub_0202C6F4(param1->saveData);
    v3 = ov43_0222C620(param0);
    v1 = DWC_GetFriendKey(sub_0202C23C(v0, param1->unk_18[v3]));

    if (v1 != 0) {
        v2 = 0x3c;
    } else {
        v2 = 0x42;
    }
    PlaySE(0x5dd);
    ov43_0222AAA4(param2, (u32)v1, (u32)(v1 >> 32));
    ov43_0222AB20(param2, param1->saveData, param1->unk_18[v3], heapID);
    ov43_0222C550(param0, param2, v2, heapID);
    return 1;
}
