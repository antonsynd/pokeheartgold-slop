#include "global.h"

#include "assert.h"
#include "save_link_ruleset.h"
#include "unk_02034B0C.h"

typedef struct UnkStruct_BssDesc {
    u8 unk_00[0x50];
    u8 userGameInfo[0x70];
} UnkStruct_BssDesc;

typedef struct UnkStruct_020353B8 {
    u8 unk_00[6];
    u8 unk_06;
} UnkStruct_020353B8;

typedef struct CommServerClient {
    u8 unk_000[0x114];
    UnkStruct_BssDesc unk_114[8];
    u8 unk_714[0x600];
    u8 unk_D14[8][6];
    u16 unk_D44[8];
    u8 unk_D54[0x14];
    u8 unk_D68[8];
    u8 unk_D70[8];
    void *unk_D78;
    void *unk_D7C;
    void *unk_D80;
    u32 unk_D84;
    UnkStruct_020353B8 *unk_D88;
    u16 unk_D8C;
    u16 unk_D8E;
    u8 unk_D90;
    u8 unk_D91;
    u8 unk_D92;
    u8 unk_D93;
    u8 unk_D94;
    u8 unk_D95_0 : 1;
    u8 unk_D95_1 : 1;
    u8 unk_D95_2 : 1;
    u8 unk_D95_3 : 1;
    u8 unk_D95_4 : 1;
    u8 unk_D95_5 : 1;
    u8 unk_D95_6 : 2;
} CommServerClient;

typedef struct CommServerClientGlobals {
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    CommServerClient *unk_08;
} CommServerClientGlobals;

extern CommServerClientGlobals _021D4134;

void DC_FlushRange(const void *data, u32 size);
void MI_CpuCopy8(const void *src, void *dst, u32 size);
u16 WM_GetNextTgid(void);
u16 WM_GetDispersionBeaconPeriod(void);

int sub_02033298(void);
u16 sub_02033250(void);
void sub_02033240(void *data, u32 size);
int sub_020332AC(void);
u16 sub_02033468(void);
void sub_02033668(int a0, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5);
int sub_020338D0(void);
int sub_020338F4(void);
int sub_02033920(void);
void sub_020339B4(void *data, u32 size, void *a2, u32 a3);
int sub_02033A44(void);
u32 sub_02033FC4(u16 a0);
int sub_020347CC(void);
void sub_020350D4(void);
void sub_020352D8(void);
int sub_0203993C(void);
void sub_020399DC(int a0);

void sub_020353B8(void);
void sub_0203540C(u16 a0);
void sub_020355C8(u16 a0);
BOOL sub_020355DC(u16 a0);
int sub_02035610(void);
u32 sub_0203567C(void);
BOOL sub_0203569C(void);
u16 sub_02035724(u16 a0);
UnkStruct_BssDesc *sub_02035754(int index);
void *sub_02035784(void);
void *sub_02035798(int index);
void sub_020357C4(const u8 *bssid, int index);
BOOL sub_020357FC(void);
void sub_0203581C(void);
void sub_02035838(const void *sentence);
void sub_02035854(const void *ruleset);
void *sub_02035878(void);
void sub_0203588C(void);
void sub_020358B8(const void *data);
void *sub_020358D0(int index);

void sub_020353B8(void) {
    UnkStruct_020353B8 *info = _021D4134.unk_08->unk_D88;

    if (info->unk_06 != sub_02035610()) {
        info->unk_06 = sub_02035610();
        DC_FlushRange(_021D4134.unk_08->unk_D88, 0x5C);
        sub_02033240(_021D4134.unk_08->unk_D88, 0x5C);
        sub_020339B4(_021D4134.unk_08->unk_D88, 0x5C, _021D4134.unk_08->unk_D80, _021D4134.unk_00);
    }
}

void sub_0203540C(u16 a0) {
    int state = sub_02033298();
    int v1 = sub_020347CC();

    sub_020353B8();

    if (sub_020338F4() == 0 && !sub_0203567C()) {
        if (_021D4134.unk_08->unk_D95_2) {
            _021D4134.unk_08->unk_D95_0 = 1;
        }
    }

    if (_021D4134.unk_08->unk_D8E == 0xFFFF) {
        _021D4134.unk_08->unk_D8E = a0;
    }

    if (_021D4134.unk_08->unk_D95_1) {
        if (_021D4134.unk_08->unk_D8E > a0) {
            _021D4134.unk_08->unk_D95_0 = 1;
        }

        if (v1) {
            _021D4134.unk_08->unk_D95_0 = 1;
        }
    }

    if (sub_020332AC() == 25) {
        sub_020399DC(0);
    }

    switch (state) {
    case 0:
        if (_021D4134.unk_08->unk_D92 == 1) {
            sub_020350D4();
            return;
        }

        if (_021D4134.unk_08->unk_D92 == 2) {
            _021D4134.unk_08->unk_D92 = 3;
            return;
        }
        break;
    case 1:
        if (_021D4134.unk_08->unk_D92 == 1) {
            if (sub_020338D0()) {
                return;
            }
        }

        if (_021D4134.unk_08->unk_D92 == 2) {
            if (sub_020338D0()) {
                return;
            }
        }
        break;
    case 8:
    case 9:
        if (_021D4134.unk_08) {
            _021D4134.unk_08->unk_D95_0 = 1;
        }
        break;
    case 7: {
        u16 channel;

        channel = sub_02033468();

        if (_021D4134.unk_08->unk_D91 == 0) {
            _021D4134.unk_08->unk_D8C = channel;
            _021D4134.unk_08->unk_D91 = 5;
        } else {
            _021D4134.unk_08->unk_D91--;
        }

        channel = _021D4134.unk_08->unk_D8C;

        if (_021D4134.unk_08->unk_D95_3) {
            _021D4134.unk_00 = WM_GetNextTgid();
        }

        sub_020352D8();
        sub_02033668(0, _021D4134.unk_00, channel, sub_02033FC4(sub_0203993C()), sub_02035724(sub_0203993C()), _021D4134.unk_08->unk_D95_5);
        _021D4134.unk_08->unk_D90 = channel;
    } break;
    default:
        break;
    }
}

void sub_020355C8(u16 a0) {
    if (_021D4134.unk_08) {
        sub_0203540C(a0);
    }
}

BOOL sub_020355DC(u16 a0) {
    if (!_021D4134.unk_08) {
        return FALSE;
    }

    if (sub_02033298() != 4) {
        return FALSE;
    }

    if (sub_02033250() & (1 << a0)) {
        return TRUE;
    }

    return FALSE;
}

int sub_02035610(void) {
    int count = 0;
    int i;

    for (i = 0; i < 8; i++) {
        if (sub_020355DC(i)) {
            count++;
        }
    }

    return count;
}

BOOL sub_02035630(void) {
    if (_021D4134.unk_08 && _021D4134.unk_08->unk_D92 == 3) {
        return TRUE;
    }

    return FALSE;
}

BOOL sub_02035650(void) {
    return _021D4134.unk_08 != NULL;
}

int sub_02035664(void) {
    if (_021D4134.unk_08) {
        return sub_02033920();
    }

    return 1;
}

u32 sub_0203567C(void) {
    if (_021D4134.unk_08) {
        return sub_02033250() & 0xFFFE;
    }

    return 0;
}

BOOL sub_0203569C(void) {
    if (_021D4134.unk_08 && _021D4134.unk_08->unk_D95_0) {
        return TRUE;
    }

    return FALSE;
}

void sub_020356C0(u32 a0) {
    if (_021D4134.unk_08) {
        _021D4134.unk_08->unk_D95_2 = a0;
    }
}

void sub_020356EC(int a0) {
    if (_021D4134.unk_08) {
        _021D4134.unk_08->unk_D95_1 = a0;
        _021D4134.unk_08->unk_D8E = 0xFFFF;
    }
}

u16 sub_02035724(u16 a0) {
    u16 period = WM_GetDispersionBeaconPeriod();

    GF_ASSERT(a0 < 41);

    if (a0 == 10) {
        return period / 4;
    }

    if (a0 == 9 || a0 == 13) {
        return period / 4;
    }

    return period;
}

UnkStruct_BssDesc *sub_02035754(int index) {
    if (_021D4134.unk_08 && _021D4134.unk_08->unk_D44[index] != 0) {
        return &_021D4134.unk_08->unk_114[index];
    }

    return NULL;
}

void *sub_02035784(void) {
    return _021D4134.unk_08->unk_D78;
}

void *sub_02035798(int index) {
    if (_021D4134.unk_08->unk_D44[index] == 0) {
        return NULL;
    }

    return &_021D4134.unk_08->unk_114[index].userGameInfo[0x10];
}

void sub_020357C4(const u8 *bssid, int index) {
    if (_021D4134.unk_08) {
        GF_ASSERT(index < 8);
        MI_CpuCopy8(bssid, _021D4134.unk_08->unk_D14[index], 6);
    }
}

BOOL sub_020357FC(void) {
    if (_021D4134.unk_08) {
        return _021D4134.unk_08->unk_D95_4;
    }

    return FALSE;
}

void sub_0203581C(void) {
    if (_021D4134.unk_08) {
        _021D4134.unk_08->unk_D95_4 = 1;
    }
}

void sub_02035838(const void *sentence) {
    MI_CpuCopy8(sentence, _021D4134.unk_08->unk_D68, 8);
}

void sub_02035854(const void *ruleset) {
    MI_CpuCopy8(ruleset, _021D4134.unk_08->unk_D7C, LinkBattleRuleset_sizeof());
}

void *sub_02035878(void) {
    return _021D4134.unk_08->unk_D7C;
}

void sub_0203588C(void) {
    sub_020352D8();
    sub_020339B4(_021D4134.unk_08->unk_D88, 0x5C, _021D4134.unk_08->unk_D80, _021D4134.unk_00);
}

int sub_020358B0(void) {
    return sub_02033A44();
}

void sub_020358B8(const void *data) {
    MI_CpuCopy8(data, _021D4134.unk_08, 0x54);
    sub_0203588C();
}

void *sub_020358D0(int index) {
    if (_021D4134.unk_08 && _021D4134.unk_08->unk_D44[index] != 0) {
        return &_021D4134.unk_08->unk_114[index].userGameInfo[8];
    }

    return NULL;
}
