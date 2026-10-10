#include "global.h"

extern u16 sub_0203769C(void);

void ov83_022451B8(int netID, int unused, u8 *data, u8 *app) {
    u16 v;

    app[0x17] = app[0x17] + 1;

    if (netID == sub_0203769C()) {
        return;
    }

    v = *(u16 *)(data + 2);
    app[0x5b5] = v;

    if (sub_0203769C() == 0) {
        if (app[0x11] != 0xff) {
            app[0x5b5] = 0;
            return;
        }
        app[0x11] = app[0x5b5] + app[0x15];
        v = *(u16 *)(data + 8);
        app[0x12] = v;
        v = *(u16 *)(data + 0xa);
        app[0x13] = v;
        return;
    }

    v = *(u16 *)(data + 4);
    app[0x11] = v;
    v = *(u16 *)(data + 8);
    app[0x12] = v;
    v = *(u16 *)(data + 0xa);
    app[0x13] = v;
}
