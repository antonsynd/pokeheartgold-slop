#include "global.h"

extern u16 sub_0203769C(void);

void ov83_02241474(int netID, int unused, u8 *data, u8 *app) {
    u16 v;

    app[0xf] = app[0xf] + 1;

    if (netID == sub_0203769C()) {
        return;
    }

    v = *(u16 *)(data + 2);
    app[0x7fd] = v;

    if (sub_0203769C() == 0) {
        if (app[0x12] != 0xff) {
            app[0x7fd] = 0;
            return;
        }
        app[0x12] = app[0x7fd] + app[0x15];
        v = *(u16 *)(data + 8);
        *(u16 *)(app + 0x10) = v;
        v = *(u16 *)(data + 0xa);
        app[0x13] = v;
        return;
    }

    v = *(u16 *)(data + 4);
    app[0x12] = v;
    v = *(u16 *)(data + 8);
    *(u16 *)(app + 0x10) = v;
    v = *(u16 *)(data + 0xa);
    app[0x13] = v;
}
