typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

typedef struct ListNode_ov41_022479A8 {
    void *value;        // 0x00
    s32 flag;           // 0x04
    struct ListNode_ov41_022479A8 *next; // 0x08
} ListNode_ov41_022479A8;

typedef struct UnkStruct_ov41_022479A8 {
    u8 filler_00[4];
    u8 listB[8];        // 0x04 (sentinel; list head pointer at +0x0C)
    ListNode_ov41_022479A8 *headB; // 0x0C
    u8 filler_10[4];
    u8 listA[8];        // 0x14 (sentinel; list head pointer at +0x1C)
    ListNode_ov41_022479A8 *headA; // 0x1C
    u8 filler_20[0x54];
    u32 unk_74;         // 0x74
    u8 unk_78[0xC];     // 0x78
    void *unk_84;       // 0x84
} UnkStruct_ov41_022479A8;

void sub_0202BC60(void *photo);
void sub_0202BC88(void *photo, void *a, void *b);
void *PlayerProfile_GetPlayerName_NewString(const void *info, s32 heapId);
u32 PlayerProfile_GetTrainerGender(const void *info);
void sub_0202BDC8(void *photo, void *name, u32 gender);
void String_Delete(void *string);
void sub_0202BCAC(void *photo, void *value, s32 index);
void sub_0202BD60(void *photo, u8 value);
void sub_0202BC38(void *photo);

void ov41_022479A8(void *photo, UnkStruct_ov41_022479A8 *param1, const void *info)
{
    ListNode_ov41_022479A8 *node;
    s32 index;

    sub_0202BC60(photo);
    sub_0202BC88(photo, param1->unk_84, param1->unk_78);

    if (info != 0) {
        void *name = PlayerProfile_GetPlayerName_NewString(info, 13);
        u32 gender = PlayerProfile_GetTrainerGender(info);
        sub_0202BDC8(photo, name, gender);
        String_Delete(name);
    }

    index = 0;
    node = param1->headA;
    while (node != (ListNode_ov41_022479A8 *)param1->listA) {
        if (node->flag == 0) {
            sub_0202BCAC(photo, node->value, index);
            index++;
        }
        node = node->next;
    }

    node = param1->headB;
    while (node != (ListNode_ov41_022479A8 *)param1->listB) {
        if (node->flag == 0) {
            sub_0202BCAC(photo, node->value, index);
            index++;
        }
        node = node->next;
    }

    sub_0202BD60(photo, (u8)param1->unk_74);
    sub_0202BC38(photo);
}
