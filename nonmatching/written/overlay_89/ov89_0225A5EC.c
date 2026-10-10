#include "global.h"

typedef int (*ov89_0225A5EC_Fn)(void *, void *, void *, u32);

typedef struct ov89_0225CDB0_Entry {
    ov89_0225A5EC_Fn unk_00;
    ov89_0225A5EC_Fn unk_04;
    ov89_0225A5EC_Fn unk_08;
} ov89_0225CDB0_Entry;

extern const ov89_0225CDB0_Entry ov89_0225CDB0[];

extern BOOL ov89_0225AFC0(void *obj, int sel);
extern void ov89_0225AF10(void *p0, int a, int b);
extern void ov89_0225AC24(void *p0, void *obj, int idx);
extern void ov89_0225AF9C(void *p0);

void ov89_0225A5EC(u8 *param0) {
    int i, j, k;
    int countUp;
    int countDown;
    u8 *obj;
    u8 *v5;
    u8 *v6;
    u32 word;
    u32 word6;
    u32 word5;
    ov89_0225A5EC_Fn fn;

    countUp = 0;
    countDown = 0;

    for (i = 0; i < 0x80; i++) {
        obj = *(u8 **)(param0 + i * 4 + 0xb4);
        if (obj != NULL) {
            word = *(u32 *)(obj + 0x240);
            if (((word >> 8) & 0xff) != 0) {
                *(u8 **)(param0 + countUp * 4 + 0x2b4) = obj;
                countUp++;
            } else {
                *(u8 **)(param0 + (0x7f - countDown) * 4 + 0x2b4) = obj;
                countDown++;
            }
        }
    }

    for (k = 0; k < countDown; k++) {
        v6 = *(u8 **)(param0 + (0x7f - k) * 4 + 0x2b4);
        if (countUp > 0) {
            for (j = 0; j < countUp; j++) {
                v5 = *(u8 **)(param0 + j * 4 + 0x2b4);
                word5 = *(u32 *)(v5 + 0x240);
                fn = ov89_0225CDB0[(word5 >> 8) & 0xff].unk_08;
                if (fn(param0, v5, v6, (u32)fn) == 1) {
                    word5 = *(u32 *)(v5 + 0x240);
                    if (ov89_0225AFC0(v6, (word5 >> 8) & 0xff) == 1) {
                        word6 = *(u32 *)(v6 + 0x240);
                        if ((word6 >> 24) == 0xff) {
                            word6 = *(u32 *)(v6 + 0x240);
                            word5 = *(u32 *)(v5 + 0x240);
                            *(u32 *)(v6 + 0x240) = (word6 & 0xffffff) | ((word5 >> 24) << 24);
                            word5 = *(u32 *)(v5 + 0x240);
                            ov89_0225AF10(param0, word5 >> 24, (word5 >> 8) & 0xff);
                            break;
                        }
                    }
                }
            }
        }
    }

    if (param0[0x73d] != 0 && param0[0x73e] == 1) {
        for (i = 0; i < 0x80; i++) {
            obj = *(u8 **)(param0 + i * 4 + 0xb4);
            if (obj != NULL) {
                u32 sel = param0[0x73d];

                word = *(u32 *)(obj + 0x240);
                if (((word >> 8) & 0xff) != sel && ((word >> 16) & 0xff) != sel) {
                    if (ov89_0225AFC0(obj, sel) == 0) {
                        ov89_0225AC24(param0, obj, i);
                    }
                }
            }
        }
        ov89_0225AF9C(param0);
    }
}
