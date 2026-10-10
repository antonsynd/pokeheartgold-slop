#include "global.h"
#include "safari_zone.h"
#include "unk_02005D10.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define S32AT(p, off) (*(int *)((u8 *)(p) + (off)))

extern void ov108_021E6B00(void *data);
extern void ov108_021E7BB4(void *data, u8 a1, u8 a2);
extern void ov108_021E79A8(void *data, int a1, int a2, int a3);

int ov108_021E6450(void *data) {
    PlaySE(0x5DC);
    if (U8AT(data, 0x184E3) != 0) {
        ov108_021E6B00(data);
        return 1;
    }
    u8 areaNo = (u8)(U8AT(data, 0x184E0) + U8AT(data, 0x184DE) * 6);
    S32AT(data, 0x184E8) = 1;
    SafariZone_InitAreaInSet((SafariZoneAreaSet *)((u8 *)data + 0x1C), U8AT(data, 0x184DF), areaNo);
    u8 idx = U8AT(data, 0x184DF);
    ov108_021E7BB4(data, idx, U8AT(data, idx * 0x7A + 0x1C));
    ov108_021E79A8(data, 1, 0, 0);
    return 2;
}
