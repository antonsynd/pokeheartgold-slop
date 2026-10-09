#include "global.h"

#include "constants/battle.h"

#include "encounter.h"
#include "heap.h"
#include "unk_02034B0C.h"
#include "unk_02035900.h"
#include "unk_02037C94.h"
#include "unk_020379A0.h"

typedef struct UnkStruct_021D41C8 {
    void *trainerCase[4];
    u8 trainerCaseCopied[4];
    FieldSystem *fieldSystem;
    u8 unk_18[0x18];
    void (*task)(void);
    void *unk_34;
    u16 timer;
    u8 unk_3A[4];
    u8 isReturningFromBattle;
    u8 battleRoomMovement;
    Party *party;
} UnkStruct_021D41C8;

extern UnkStruct_021D41C8 *_021D41C8;

u8 sub_02057F18(int netId);
void sub_02057F58(void);
void sub_02056EA0(BOOL flag);
void sub_02059538(FieldSystem *fieldSystem, void (*callback)(int, Party *));
void sub_020582F4(void (*task)(void), u32 timer);
void sub_02058098(void);
void sub_0205857C(void);
void sub_02058608(void);
void sub_02058640(int, Party *);
void sub_02058690(void);
void sub_0205836C(void);
void sub_0205838C(void);
void sub_020584BC(void);
BOOL sub_02036010(void);
void sub_02036FD8(int, void *, int);

void sub_020586A0(void);
void sub_020586EC(void);
void sub_02058720(int unused0, int unused1, void *message, void *unused3);
BOOL sub_02058740(void);
void sub_0205876C(void);
void sub_020587E8(void);
void sub_0205882C(void);
void sub_02058854(void);
void sub_02058870(void);
void sub_020588A0(void);
void sub_020588B4(void);
void sub_020588CC(int netId, int unused1, void *unused2, void *unused3);
void *sub_020588DC(int netId, void *unused1, int unused2);
void sub_020588F8(void);
void sub_02058930(void);
void sub_0205896C(void);
void sub_020589B0(void);
void sub_020589D8(void);
void sub_020589F4(void);
void sub_02058A38(void);
void sub_02058A60(void);
void sub_02058A78(void);
BOOL sub_02058AA0(void);

void sub_020586A0(void) {
    if (sub_02037958() || sub_02057F18(sub_0203769C()) != 0) {
        return;
    }

    if (_021D41C8->timer != 0) {
        _021D41C8->timer--;
        return;
    }

    sub_02057F58();
    sub_02059538(_021D41C8->fieldSystem, sub_02058640);
    sub_020582F4(sub_02058690, 0);
}

void sub_020586EC(void) {
    if (_021D41C8->battleRoomMovement) {
        sub_020582F4(sub_020586A0, 5);

        u8 data = 0;
        sub_020376E0(94, &data);
    }

    sub_0205857C();
}

void sub_02058720(int unused0, int unused1, void *message, void *unused3) {
    u8 *data = message;

    if (data[0] == sub_0203769C()) {
        _021D41C8->battleRoomMovement = TRUE;
    }
}

BOOL sub_02058740(void) {
    if (_021D41C8 != NULL) {
        if (_021D41C8->task == sub_020586EC || _021D41C8->task == sub_02058608) {
            return TRUE;
        }
    }

    return FALSE;
}

void sub_0205876C(void) {
    int battleType;
    u8 partyOrder[8];

    if (_021D41C8->timer != 0) {
        _021D41C8->timer--;
        return;
    }

    battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_LINK;

    switch (sub_0203993C()) {
    case 4:
    case 5:
        battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_LINK | BATTLE_TYPE_MULTI;
        break;
    case 2:
    case 0x26:
        battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_LINK;
        break;
    }

    sub_02039980(partyOrder);

    if (_021D41C8->party == NULL) {
        sub_02051598(_021D41C8->fieldSystem, partyOrder, battleType);
    } else {
        sub_020515FC(_021D41C8->fieldSystem, _021D41C8->party, battleType);
        Heap_Free(_021D41C8->party);
        _021D41C8->party = NULL;
    }

    sub_02058098();
}

void sub_020587E8(void) {
    if (sub_02036010()) {
        if (_021D41C8->timer != 0) {
            _021D41C8->timer--;
        }

        if (_021D41C8->timer == 90) {
            sub_02037AC0(4);
        }

        if (sub_02037B38(4)) {
            sub_020582F4(sub_0205876C, 0);
        }
    }
}

void sub_0205882C(void) {
    if (_021D41C8->timer != 0) {
        _021D41C8->timer--;
        return;
    }

    sub_02035FD8();
    sub_020582F4(sub_020587E8, 120);
}

void sub_02058854(void) {
    if (sub_02037B38(3)) {
        sub_020582F4(sub_0205882C, 2);
    }
}

void sub_02058870(void) {
    if (_021D41C8->timer != 0) {
        _021D41C8->timer--;
        return;
    }

    sub_02056EA0(FALSE);
    sub_02037AC0(3);
    sub_020582F4(sub_02058854, 0);
}

void sub_020588A0(void) {
    sub_02037E38();
    sub_020582F4(sub_020588B4, 2);
}

void sub_020588B4(void) {
    if (!sub_02035664()) {
        return;
    }

    sub_020582F4(sub_0205836C, 10);
}

void sub_020588CC(int netId, int unused1, void *unused2, void *unused3) {
    _021D41C8->trainerCaseCopied[netId] = 1;
}

void *sub_020588DC(int netId, void *unused1, int unused2) {
    GF_ASSERT(netId < 4);
    return _021D41C8->trainerCase[netId];
}

void sub_020588F8(void) {
    int netId = sub_0203769C();

    if (sub_02037B38(0x5f)) {
        sub_02036FD8(88, _021D41C8->trainerCase[netId], 0x66C);
        sub_020582F4(sub_02058930, 0);
    }
}

void sub_02058930(void) {
    int netId;

    for (netId = 0; netId < sub_02037454(); netId++) {
        if (!_021D41C8->trainerCaseCopied[netId]) {
            return;
        }
    }

    sub_02037AC0(0x61);
    sub_020582F4(sub_020589D8, 0);
}

void sub_0205896C(void) {
    if (!sub_02036010()) {
        if (_021D41C8->timer != 0) {
            _021D41C8->timer--;
        }

        if (_021D41C8->timer == 90) {
            sub_02037AC0(5);
        }

        if (sub_02037B38(5)) {
            sub_020582F4(sub_020589F4, 0);
        }
    }
}

void sub_020589B0(void) {
    if (_021D41C8->timer != 0) {
        _021D41C8->timer--;
        return;
    }

    sub_02035FE4();
    sub_020582F4(sub_0205896C, 120);
}

void sub_020589D8(void) {
    if (sub_02037B38(0x61)) {
        sub_020582F4(sub_020589B0, 2);
    }
}

void sub_020589F4(void) {
    if (_021D41C8->timer != 0) {
        _021D41C8->timer--;
        return;
    }

    sub_02037AC0(0x62);

    if (_021D41C8->isReturningFromBattle) {
        sub_020582F4(sub_0205838C, 30);
    } else {
        sub_020582F4(sub_020584BC, 30);
    }
}

void sub_02058A38(void) {
    if (sub_02037B38(0x5b)) {
        sub_020398D4(0, 0);
        sub_02056EA0(TRUE);
        sub_020582F4(sub_02058A78, 5);
    }
}

void sub_02058A60(void) {
    sub_02056EA0(TRUE);
    sub_020582F4(sub_02058A78, 5);
}

void sub_02058A78(void) {
    if (_021D41C8->timer != 0) {
        _021D41C8->timer--;
        return;
    }

    sub_02037E9C();
    sub_020582F4(sub_02058098, 0);
}

BOOL sub_02058AA0(void) {
    if (_021D41C8 == NULL) {
        return FALSE;
    }

    if (_021D41C8->task == sub_02058870 || _021D41C8->task == sub_02058854 || _021D41C8->task == sub_0205882C || _021D41C8->task == sub_020587E8 || _021D41C8->task == sub_0205876C) {
        return TRUE;
    }

    return FALSE;
}
