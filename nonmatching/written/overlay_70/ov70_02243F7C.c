#include "global.h"

extern int ov70_02245E84[];
extern int ov70_02245F58[];

extern int ov70_02243F54(void *work, int a);

int ov70_02243F7C(void *work, int idx) {
    int base = ov70_02245E84[idx];
    int count = ov70_02245F58[idx * 2 + 1];

    if (count > 0) {
        int i = 0;
        do {
            if (ov70_02243F54(work, base + i) > 0) {
                return 1;
            }
            i++;
        } while (i < ov70_02245F58[idx * 2 + 1]);
    } else {
        if (ov70_02243F54(work, base) > 0) {
            return 1;
        }
    }
    return 0;
}
