#include "global.h"

typedef struct AnimSub {
    u8 unk0;
    u8 mainState;
    s16 data[7];
} AnimSub;

typedef struct AnimEntry {
    u32 active;
    u8 pad04[0x0c - 0x04];
    u16 unkC;
    u8 pad0E[0x26 - 0x0e];
    AnimSub sub;
    u8 pad36[0x38 - 0x36];
    u32 unk38;
} AnimEntry;

extern AnimEntry *ov80_02239938(void *a0, u32 a1);
extern void *sub_02096868(void *a0);
extern void *sub_0209680C(void *a0);
extern void ov80_0222EFD0(void *out, u32 a, u16 b, s16 c);
extern void ov42_022299C0(void *s, void *out);

void ov80_02239BF0(void *a0, u32 a1, int a2, const s16 *a3, int count);
void ov80_02239C54(void *a0);

static void ov80_02239C28(void *a0, AnimEntry *entry);
static int ov80_02239C80(void *a0, AnimEntry *entry);

void ov80_02239BF0(void *a0, u32 a1, int a2, const s16 *a3, int count) {
    AnimEntry *entry = ov80_02239938(a0, a1);
    int i;
    MI_CpuFill8(&entry->sub, 0, 0x10);
    entry->sub.unk0 = a2;
    for (i = 0; i < count; i++) {
        entry->sub.data[i] = a3[i];
    }
}

static int (*const ov80_0223DB24[])(void *a0, AnimEntry *entry) = {
    NULL,
    ov80_02239C80,
};

static void ov80_02239C28(void *a0, AnimEntry *entry) {
    int (*fn)(void *a0, AnimEntry *entry) = ov80_0223DB24[entry->sub.unk0];
    if (fn != NULL) {
        if (fn(a0, entry) == 1) {
            MI_CpuFill8(&entry->sub, 0, 0x10);
        }
    }
}

void ov80_02239C54(void *a0) {
    AnimEntry *arr = sub_02096868(a0);
    int i;
    for (i = 0; i < 0x20; i++, arr++) {
        if (arr->active != 0 && arr->unk38 == 0) {
            ov80_02239C28(a0, arr);
        }
    }
}

static int ov80_02239C80(void *a0, AnimEntry *entry) {
    AnimSub *st = &entry->sub;
    void *unkObj = sub_0209680C(a0);
    u8 buf[8];
    int newState;
    if (st->data[2] > 0) {
        st->data[2]--;
        return 0;
    }
    switch (st->mainState) {
    case 0:
        switch (st->data[0]) {
        case 0:
        case 1:
            if (st->data[1] == 0) {
                st->data[3] = 2;
                st->data[4] = 3;
            } else {
                st->data[3] = 3;
                st->data[4] = 2;
            }
            break;
        case 2:
        case 3:
            if (st->data[1] == 0) {
                st->data[3] = 0;
                st->data[4] = 1;
            } else {
                st->data[3] = 1;
                st->data[4] = 0;
            }
            break;
        default:
            GF_AssertFail();
            return 1;
        }
        st->data[5] = st->data[0];
        st->mainState++;
        // fallthrough
    case 1:
    case 2:
    case 3:
        ov80_0222EFD0(buf, entry->active, entry->unkC, st->data[st->mainState + 2]);
        ov42_022299C0(*(void **)((u8 *)unkObj + 0x30), buf);
        if (st->data[0] == st->data[st->mainState + 2]) {
            st->data[2] = 0x2d;
            newState = 1;
        } else {
            st->data[2] = 0x1e;
            newState = st->mainState + 1;
        }
        break;
    default:
        return 1;
    }
    st->mainState = newState;
    return 0;
}
