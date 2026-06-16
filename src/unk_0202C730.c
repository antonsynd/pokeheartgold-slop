#include "global.h"

#include "friend_group.h"
#include "math_util.h"
#include "string_util.h"

// Split-header discipline: the public unk_0202C730.h (frozen for its 5 matched
// callers) declares Save_FriendGroup_GetGroupId returning u8, but the asm returns
// the full u32 with no truncation. Declare the unk_0202C730.h functions locally
// with the types they were actually built with (GetGroupId as u32) instead of
// including that header.
u32 Save_FriendGroup_GetGroupId(SAV_FRIEND_GRP *group, int a1);
void sub_0202C7C0(SAV_FRIEND_GRP *saveGrp, u32 grpIdx, u32 a2);
void sub_0202C78C(SAV_FRIEND_GRP *saveGrp, int a1);
BOOL sub_0202C860(SAV_FRIEND_GRP *group, u16 a1);
BOOL sub_0202C878(SAV_FRIEND_GRP *group, u16 a1);
void sub_0202C738(SAV_FRIEND_GRP *group, u16 a1, int a2);
void sub_0202C7F8(SAV_FRIEND_GRP *group, int a1, int a2, String *str);
void sub_0202C824(SAV_FRIEND_GRP *group, int a1, u32 gender);
void sub_0202C848(SAV_FRIEND_GRP *group, int a1, int a2);
BOOL sub_0202C88C(SAV_FRIEND_GRP *group, u16 *a1);

static SAV_FRIEND_GRP *_021D2AF0;

BOOL sub_0202C8C4(FRIEND_GROUP *grp);
BOOL sub_0202C8E4(FRIEND_GROUP *a, FRIEND_GROUP *b);

u32 Save_FriendGroup_sizeof(void) {
    return sizeof(SAV_FRIEND_GRP);
}

void sub_0202C738(SAV_FRIEND_GRP *group, u16 a1, int a2) {
    group->groups[a2] = group->groups[a1];
}

void Save_FriendGroup_Init(SAV_FRIEND_GRP *savFriendGrp) {
    int i;
    MIi_CpuClearFast(0, (u32 *)savFriendGrp, sizeof(SAV_FRIEND_GRP));
    for (i = 0; i < FGRP_MAX; i++) {
        savFriendGrp->groups[i].unk_0[0] = 0xFFFF;
        savFriendGrp->groups[i].unk_10[0] = 0xFFFF;
    }
    _021D2AF0 = savFriendGrp;
}

void sub_0202C78C(SAV_FRIEND_GRP *saveGrp, int a1) {
    u32 i;
    for (i = 0; i < FGRP_MAX; i++) {
        u32 j;
        for (j = 0; j < (u32)a1; j++) {
            saveGrp->groups[i].unk_28 = PRandom(saveGrp->groups[i].unk_28);
        }
    }
}

u32 Save_FriendGroup_GetGroupId(SAV_FRIEND_GRP *group, int a1) {
    return group->groups[a1].unk_24;
}

void sub_0202C7C0(SAV_FRIEND_GRP *saveGrp, u32 grpIdx, u32 a2) {
    saveGrp->groups[grpIdx].unk_24 = a2;
    saveGrp->groups[grpIdx].unk_28 = PRandom(a2);
}

u32 sub_0202C7DC(SAV_FRIEND_GRP *savFriendGrp) {
    return savFriendGrp->groups[1].unk_28;
}

u16 *sub_0202C7E0(SAV_FRIEND_GRP *savFriendGrp, int grpno, int nameType) {
    if (nameType == 0) {
        return savFriendGrp->groups[grpno].unk_0;
    }
    return savFriendGrp->groups[grpno].unk_10;
}

void sub_0202C7F8(SAV_FRIEND_GRP *group, int a1, int a2, String *str) {
    if (a2 == 0) {
        CopyStringToU16Array(str, group->groups[a1].unk_0, 8);
    } else {
        CopyStringToU16Array(str, group->groups[a1].unk_10, 8);
    }
}

void sub_0202C824(SAV_FRIEND_GRP *group, int a1, u32 gender) {
    group->groups[a1].unk_20 = gender;
}

u8 sub_0202C830(SAV_FRIEND_GRP *savFriendGrp, int grpno) {
    return savFriendGrp->groups[grpno].unk_20;
}

u8 sub_0202C83C(SAV_FRIEND_GRP *savFriendGrp, int grpno) {
    return savFriendGrp->groups[grpno].unk_21;
}

void sub_0202C848(SAV_FRIEND_GRP *group, int a1, int a2) {
    group->groups[a1].unk_21 = a2;
}

SAV_FRIEND_GRP *Save_FriendGroup_Get(SaveData *saveData) {
    return SaveArray_Get(saveData, 0xe);
}

BOOL sub_0202C860(SAV_FRIEND_GRP *group, u16 a1) {
    return sub_0202C8C4(&group->groups[a1]) == 0;
}

BOOL sub_0202C878(SAV_FRIEND_GRP *group, u16 a1) {
    return sub_0202C8E4(&group->groups[1], &group->groups[a1]);
}

BOOL sub_0202C88C(SAV_FRIEND_GRP *group, u16 *a1) {
    int i;
    if (a1[0] == 0xFFFF) {
        return 0;
    }
    for (i = 0; i < FGRP_MAX; i++) {
        if (StringNotEqualN(a1, group->groups[i].unk_0, 8) == 0) {
            return 1;
        }
    }
    return 0;
}

BOOL sub_0202C8C4(FRIEND_GROUP *grp) {
    if (grp->unk_0[0] == 0xFFFF) {
        return 1;
    }
    if (grp->unk_10[0] == 0xFFFF) {
        return 1;
    }
    return 0;
}

BOOL sub_0202C8E4(FRIEND_GROUP *a, FRIEND_GROUP *b) {
    if (StringNotEqualN(a->unk_10, b->unk_10, 8) != 0) {
        return 0;
    }
    if (StringNotEqualN(a->unk_0, b->unk_0, 8) != 0) {
        return 0;
    }
    if (a->unk_20 != b->unk_20) {
        return 0;
    }
    if (a->unk_21 != b->unk_21) {
        return 0;
    }
    if (a->unk_24 == b->unk_24) {
        return 1;
    }
    return 0;
}
