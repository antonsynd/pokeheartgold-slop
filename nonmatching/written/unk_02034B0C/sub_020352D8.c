typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

u32 PlayerProfile_GetTrainerID(void *profile);
u32 LinkBattleRuleset_sizeof(void);
u32 PlayerProfile_sizeof(void);
void MI_CpuCopy8(const void *src, void *dst, u32 size);
void DC_FlushRange(void *base, u32 size);
void sub_02033240(void *base, u32 size);
u32 sub_0203993C(void);
u32 sub_02039954(void);
u32 sub_02033AB8(void);
void *sub_02035784(void);
void GF_AssertFail(void);

/* the pointer stored at 0x021D413C (sCommServerClient) */
extern u8 *sCommServerClient __asm__("sub_021D413C");

void sub_020352D8(void)
{
    u32 v4 = sub_0203993C();
    void *v1 = sub_02035784();
    u32 size;

    if (v4 != 0xf) {
        u8 *v5 = *(u8 **)(sCommServerClient + 0xD88);

        size = LinkBattleRuleset_sizeof();
        if ((s32)size > 0x20) {
            GF_AssertFail();
        }
        if (PlayerProfile_sizeof() != 0x20) {
            GF_AssertFail();
        }
        MI_CpuCopy8(v1, v5 + 0x10, PlayerProfile_sizeof());
        size = LinkBattleRuleset_sizeof();
        MI_CpuCopy8(*(void **)(sCommServerClient + 0xD7C), v5 + 0x30, size);

        *(u32 *)v5 = PlayerProfile_GetTrainerID(v1);
        v5[4] = (u8)sub_0203993C();
        v5[5] = (u8)sub_02039954();
        MI_CpuCopy8(sCommServerClient + 0xD68, v5 + 8, 8);
        v5[0x54] = (u8)sub_02033AB8();
    } else {
        u8 *v3 = *(u8 **)(sCommServerClient + 0xD88);

        *(u32 *)v3 = PlayerProfile_GetTrainerID(v1);
        v3[4] = (u8)sub_0203993C();
        v3[5] = (u8)sub_02039954();
        MI_CpuCopy8(sCommServerClient, v3 + 8, 0x54);
    }

    DC_FlushRange(*(void **)(sCommServerClient + 0xD88), 0x5c);
    sub_02033240(*(void **)(sCommServerClient + 0xD88), 0x5c);
}
