#include "global.h"

typedef struct UnkOv74Peer {
    u32 unk_00;
    u8 unk_04[0x34];
} UnkOv74Peer;

typedef struct UnkOv74Parent {
    UnkOv74Peer unk_00[8];
    u16 unk_1C0;
    u8 unk_1C2;
    u8 unk_1C3_0 : 4;
    u8 unk_1C3_4 : 4;
} UnkOv74Parent;

typedef struct UnkOv74Child {
    u32 unk_00;
    u8 unk_04[6];
    u8 unk_0A;
    u8 unk_0B;
} UnkOv74Child;

typedef struct UnkOv74ChildList {
    UnkOv74Child unk_00[8];
    u8 unk_60;
} UnkOv74ChildList;

typedef struct UnkOv74Settings {
    u32 unk_00;
    u32 unk_04;
} UnkOv74Settings;

typedef struct UnkOv74TransferSource {
    u8 unk_00[8];
    u32 unk_08;
} UnkOv74TransferSource;

typedef struct UnkOv74Transfer {
    void *unk_00;
    void *unk_04;
    u8 unk_08[4];
    UnkOv74TransferSource *unk_0C;
    u32 unk_10;
    u32 unk_14;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    u8 unk_1C;
} UnkOv74Transfer;

typedef struct UnkOv74Global {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[0x18];
    u32 unk_1C;
    u32 unk_20;
    void *unk_24;
    u32 unk_28;
    u32 unk_2C;
} UnkOv74Global;

typedef struct UnkOv74WMParent {
    u8 unk_00[0x32];
    u16 unk_32;
} UnkOv74WMParent;

extern u8 ov74_0223C920[];
extern u8 ov74_0223D0C4[];

extern u32 WM_GetLinkLevel(void);
extern u32 WM_Finish(void);

extern void ov74_02230A34(void);
extern void ov74_02230CCC(void);
extern void ov74_02230CEC(void);
extern void ov74_02231584(void);
extern void ov74_02231724(void);

extern UnkOv74Parent *ov74_02231154(void);
extern UnkOv74ChildList *ov74_0223115C(void);
extern UnkOv74Transfer *ov74_02231184(void);
extern UnkOv74Settings *ov74_022311DC(void);
extern void ov74_02231164(void);
extern u32 ov74_02231118(void);
extern void ov74_0223113C(u32 value);

void ov74_02230D18(void);
void ov74_02230D28(void);
void ov74_02230D6C(void);
u32 ov74_02230D80(void);
BOOL ov74_02230DB8(u32 param0);
void ov74_02230DF4(u32 param0);
u32 ov74_02230E44(void);
u32 ov74_02230E7C(void);
u32 ov74_02230E94(void);
void ov74_02230EB4(void);
void ov74_02230EE8(void);
void ov74_02230F14(void *param0, u32 param1, u32 param2);
BOOL ov74_02230F40(void);
BOOL ov74_02230F6C(void);
BOOL ov74_02230F98(void);
BOOL ov74_02230FD4(void);
void ov74_02231008(void);
BOOL ov74_02231048(void);
UnkOv74WMParent *ov74_02231054(void);
UnkOv74Global *ov74_0223105C(void);
int ov74_02231064(void);
void ov74_02231070(int param0);
int ov74_0223107C(void);
void ov74_02231088(int param0);
int ov74_02231094(void);
void ov74_022310A0(int param0);
u32 ov74_022310AC(void);
void ov74_022310B8(u32 param0);
void *ov74_022310C4(void);
u32 ov74_022310D0(void);

void ov74_02230D18(void) {
    switch (ov74_02231064()) {
    case 10:
        ov74_02230CCC();
        break;
    default:
        break;
    }
}

void ov74_02230D28(void) {
    if (ov74_02231064() == 12) {
        return;
    }

    if (ov74_0223107C() == 12) {
        if (ov74_02231064() == 7) {
            ov74_02231724();
        }
        return;
    }

    switch (ov74_02231094()) {
    case 1:
        ov74_02230CEC();
        break;
    case 2:
        ov74_02230D18();
        break;
    default:
        ov74_0223105C();
        ov74_02231064();
        break;
    }
}

void ov74_02230D6C(void) {
    ov74_02231164();
    ov74_022310A0(1);
    ov74_02230A34();
}

u32 ov74_02230D80(void) {
    int mode = ov74_02231094();
    u32 count = 0;

    if (mode == 1) {
        UnkOv74Parent *parent = ov74_02231154();

        if (parent->unk_1C3_4 == 1) {
            u32 i;

            for (i = 0; i < 8; i++) {
                if (parent->unk_00[i].unk_00 != 0) {
                    count++;
                }
            }
        }
    }

    return count;
}

BOOL ov74_02230DB8(u32 param0) {
    if (ov74_02231094() == 1 && ov74_02231064() == 7) {
        UnkOv74Parent *parent = ov74_02231154();

        if (parent->unk_1C3_4 == 1 && parent->unk_00[param0].unk_00 != 0) {
            return TRUE;
        }
    }

    return FALSE;
}

void ov74_02230DF4(u32 param0) {
    if (ov74_02231094() == 1 && ov74_02231064() == 7) {
        UnkOv74Parent *parent = ov74_02231154();

        if (parent->unk_1C3_4 == 1 && parent->unk_00[param0].unk_00 != 0) {
            parent->unk_1C3_0 = param0;
            parent->unk_1C0 = 120;
            ov74_02231584();
        }
    }
}

u32 ov74_02230E44(void) {
    int mode = ov74_02231094();
    u32 count = 0;

    if (mode == 2) {
        UnkOv74ChildList *list = ov74_0223115C();

        if (list->unk_60 == 2) {
            u32 i;

            for (i = 0; i < 8; i++) {
                if (list->unk_00[i].unk_00 != 0 && list->unk_00[i].unk_0A != 0) {
                    count++;
                }
            }
        }
    }

    return count;
}

u32 ov74_02230E7C(void) {
    UnkOv74Global *global = ov74_0223105C();

    if (global->unk_20 == 0) {
        return WM_GetLinkLevel();
    }
    return 0;
}

u32 ov74_02230E94(void) {
    int mode = ov74_02231094();
    u32 result;

    switch (mode) {
    case 1:
        result = ov74_02230D80();
        break;
    case 2:
        result = ov74_02230E44();
        break;
    default:
        result = 0;
        break;
    }

    return result;
}

void ov74_02230EB4(void) {
    UnkOv74Transfer *transfer = ov74_02231184();
    UnkOv74Settings *settings = ov74_022311DC();

    if (ov74_02231094() == 1) {
        transfer->unk_18 = 1;
        transfer->unk_19 = 0;
        transfer->unk_00 = (u8 *)settings + 8;
        transfer->unk_04 = (u8 *)settings + 8;
        transfer->unk_10 = 0;
        transfer->unk_14 = 0;
        transfer->unk_1A = 120;
        transfer->unk_1B = 0;
        transfer->unk_1C = 0xFD;
    }
}

void ov74_02230EE8(void) {
    UnkOv74Transfer *transfer = ov74_02231184();
    UnkOv74Settings *settings = ov74_022311DC();

    transfer->unk_18 = 1;
    transfer->unk_19 = 0;
    transfer->unk_00 = (u8 *)settings + 8;
    transfer->unk_04 = (u8 *)settings + 8;
    transfer->unk_10 = 0x30;
    transfer->unk_14 = 0x30;
    transfer->unk_1A = 120;
    transfer->unk_1B = 0;
    transfer->unk_1C = 0xFE;
}

void ov74_02230F14(void *param0, u32 param1, u32 param2) {
    UnkOv74Transfer *transfer = ov74_02231184();

    if ((int)param2 > 0xF0) {
        return;
    }

    transfer->unk_18 = 2;
    transfer->unk_19 = 3;
    transfer->unk_00 = param0;
    transfer->unk_04 = param0;
    transfer->unk_10 = param1;
    transfer->unk_14 = 0;
    transfer->unk_1A = 120;
    transfer->unk_1B = 0;
    transfer->unk_1C = param2;
}

BOOL ov74_02230F40(void) {
    switch (ov74_02231094()) {
    case 1:
    case 2:
        switch (ov74_02231064()) {
        case 11:
        case 10: {
            UnkOv74Transfer *header = ov74_02231184();

            if (header->unk_19 == 2) {
                return TRUE;
            }
        } break;
        }
        break;
    }

    return FALSE;
}

BOOL ov74_02230F6C(void) {
    switch (ov74_02231094()) {
    case 1:
    case 2:
        switch (ov74_02231064()) {
        case 11:
        case 10: {
            UnkOv74Transfer *header = ov74_02231184();

            if (header->unk_19 == 2) {
                return TRUE;
            }
        } break;
        }
        break;
    }

    return FALSE;
}

BOOL ov74_02230F98(void) {
    switch (ov74_02231094()) {
    case 1:
    case 2:
        switch (ov74_02231064()) {
        case 11:
        case 10: {
            UnkOv74Transfer *header = ov74_02231184();

            if (header->unk_19 == 0) {
                UnkOv74TransferSource *source = header->unk_0C;

                if (((source->unk_08 >> 8) & 0xFF) == 0 && header->unk_1B < 4) {
                    return TRUE;
                }
            }
        } break;
        }
        break;
    }

    return FALSE;
}

BOOL ov74_02230FD4(void) {
    switch (ov74_02231094()) {
    case 2: {
        UnkOv74ChildList *list = ov74_0223115C();
        int i;

        for (i = 0; i < 8; i++) {
            if (list->unk_00[i].unk_00 != 0) {
                if (list->unk_00[i].unk_0A != 0) {
                    return TRUE;
                }
            }
        }

        return FALSE;
    } break;

    default:
        return ov74_02231118();
        break;
    }
}

void ov74_02231008(void) {
    ov74_02231088(12);

    switch (ov74_02231064()) {
    case 0:
    case 1:
        WM_Finish();
        ov74_0223113C(1);
        break;
    case 9:
        if (!ov74_02231118()) {
            UnkOv74Global *global = ov74_0223105C();

            ov74_02231724();
            global->unk_1C = 1;
        }
        break;
    }
}

BOOL ov74_02231048(void) {
    UnkOv74Global *global = ov74_0223105C();
    return global->unk_20;
}

UnkOv74WMParent *ov74_02231054(void) {
    return (UnkOv74WMParent *)ov74_0223C920;
}

UnkOv74Global *ov74_0223105C(void) {
    return (UnkOv74Global *)ov74_0223D0C4;
}

int ov74_02231064(void) {
    return ov74_0223105C()->unk_00;
}

void ov74_02231070(int param0) {
    ov74_0223105C()->unk_00 = param0;
}

int ov74_0223107C(void) {
    return ov74_0223105C()->unk_01;
}

void ov74_02231088(int param0) {
    ov74_0223105C()->unk_01 = param0;
}

int ov74_02231094(void) {
    return ov74_0223105C()->unk_02;
}

void ov74_022310A0(int param0) {
    ov74_0223105C()->unk_02 = param0;
}

u32 ov74_022310AC(void) {
    return ov74_0223105C()->unk_03;
}

void ov74_022310B8(u32 param0) {
    ov74_02231054()->unk_32 = param0;
}

void *ov74_022310C4(void) {
    return ov74_0223105C()->unk_24;
}

u32 ov74_022310D0(void) {
    return ov74_0223105C()->unk_2C;
}
