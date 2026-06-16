#include "global.h"

// unk_0205BFF0.h is not self-contained (uses u8 without including types) and
// clang-format forces the matching header first, so declare all 15 functions
// locally with the same signatures the header (and callers) were built with.
int sub_0205BFF0(u8 a, u8 b);
int sub_0205C01C(u8 a, u8 b);
int sub_0205C048(u8 a, u8 b);
int sub_0205C074(u8 a, u8 b);
int sub_0205C0A0(u8 a, u32 b);
u32 sub_0205C0CC(u8 a);
u32 sub_0205C0F4(u8 a);
int sub_0205C11C(u8 a);
u32 sub_0205C144(u8 a0);
u32 sub_0205C174(u8 a, u8 b);
u32 sub_0205C1A0(u8 a);
u32 sub_0205C1C8(u8 a);
u32 sub_0205C1F0(u8 a);
u32 sub_0205C218(u8 a);
u32 sub_0205C240(u8 a);

int sub_0205BFF0(u8 a, u8 b) {
    int base;
    switch (b) {
    case 0:
        base = 0xb;
        break;
    case 1:
        base = 0x13;
        break;
    case 2:
        base = 0x1b;
        break;
    case 3:
        base = 0x73;
        break;
    }
    return base + (a << 2);
}

int sub_0205C01C(u8 a, u8 b) {
    int base;
    switch (b) {
    case 0:
        base = 0xa;
        break;
    case 1:
        base = 0x12;
        break;
    case 2:
        base = 0x1a;
        break;
    case 3:
        base = 0x72;
        break;
    }
    return base + (a << 2);
}

int sub_0205C048(u8 a, u8 b) {
    int base;
    switch (b) {
    case 0:
        base = 0xd;
        break;
    case 1:
        base = 0x15;
        break;
    case 2:
        base = 0x1d;
        break;
    case 3:
        base = 0x75;
        break;
    }
    return base + (a << 2);
}

int sub_0205C074(u8 a, u8 b) {
    int base;
    switch (b) {
    case 0:
        base = 0xc;
        break;
    case 1:
        base = 0x14;
        break;
    case 2:
        base = 0x1c;
        break;
    case 3:
        base = 0x74;
        break;
    }
    return base + (a << 2);
}

int sub_0205C0A0(u8 a, u32 b) {
    int base;
    switch (a) {
    case 0:
        base = 0x25;
        break;
    case 1:
        base = 0x31;
        break;
    case 2:
        base = 0x3d;
        break;
    case 3:
        base = 0x7d;
        break;
    }
    return base + (b >> 1);
}

u32 sub_0205C0CC(u8 a) {
    switch (a) {
    case 0:
        return 0x23;
    case 1:
        return 0x2f;
    case 2:
        return 0x3b;
    case 3:
        return 0x7b;
    }
    return a;
}

u32 sub_0205C0F4(u8 a) {
    switch (a) {
    case 0:
        return 0x22;
    case 1:
        return 0x2e;
    case 2:
        return 0x3a;
    case 3:
        return 0x7a;
    }
    return a;
}

int sub_0205C11C(u8 a) {
    switch (a) {
    case 0:
        return 0x24;
    case 1:
        return 0x30;
    case 2:
        return 0x3c;
    case 3:
        return 0x7c;
    }
    return a;
}

u32 sub_0205C144(u8 a0) {
    u32 ret;
    switch (a0) {
    case 0:
        ret = 0;
        break;
    case 1:
        ret = 1;
        break;
    case 2:
        ret = 2;
        break;
    case 3:
        ret = 2;
        GF_AssertFail();
        break;
    }
    return ret;
}

u32 sub_0205C174(u8 a, u8 b) {
    int base;
    switch (a) {
    case 0:
        base = 0x4b;
        break;
    case 1:
        base = 0x53;
        break;
    case 2:
        base = 0x5b;
        break;
    case 3:
        base = 0x8b;
        break;
    }
    return base + b;
}

u32 sub_0205C1A0(u8 a) {
    switch (a) {
    case 0:
        return 0x47;
    case 1:
        return 0x4f;
    case 2:
        return 0x57;
    case 3:
        return 0x87;
    }
    return a;
}

u32 sub_0205C1C8(u8 a) {
    switch (a) {
    case 0:
        return 0x46;
    case 1:
        return 0x4e;
    case 2:
        return 0x56;
    case 3:
        return 0x86;
    }
    return a;
}

u32 sub_0205C1F0(u8 a) {
    switch (a) {
    case 0:
        return 0x48;
    case 1:
        return 0x50;
    case 2:
        return 0x58;
    case 3:
        return 0x88;
    }
    return a;
}

u32 sub_0205C218(u8 a) {
    switch (a) {
    case 0:
        return 0x49;
    case 1:
        return 0x51;
    case 2:
        return 0x59;
    case 3:
        return 0x89;
    }
    return a;
}

u32 sub_0205C240(u8 a) {
    switch (a) {
    case 0:
        return 0x4a;
    case 1:
        return 0x52;
    case 2:
        return 0x5a;
    case 3:
        return 0x8a;
    }
    return a;
}
