typedef unsigned char u8;
typedef unsigned int u32;

void *BattleSystem_GetMessageLoader(void *bsys);
void *Heap_Alloc(u32 heapId, u32 size);
u8 BattleSystem_GetTextFrameDelay(void *bsys);
u32 BattleSystem_PrintBattleMessage(void *bsys, void *msgLoader, void *msg, u8 delay);
void *SysTask_CreateOnMainQueue(void (*func)(void *, void *), void *data, u32 priority);
u32 BattleSystem_GetBattleType(void *bsys);
void ov12_02263A00(void *bsys, u8 battler);
void ov12_0226430C(void *bsys, u8 battler, u8 command);
void ov12_02260614(void *task, void *data);

typedef struct {
    void *bsys;
    u8 command;
    u8 battler;
    u8 msgIdx;
    u8 state;
} UnkStruct_ov12_0225AED8;

void ov12_0225AED8(void *bsys, u8 *battlerData, u8 *message)
{
    u8 bootState = battlerData[0x196];
    if (bootState == 0) {
        void *msgLoader = BattleSystem_GetMessageLoader(bsys);
        UnkStruct_ov12_0225AED8 *d = Heap_Alloc(5, 0xc);
        d->bsys = bsys;
        d->command = message[0];
        d->battler = battlerData[0x194];
        d->state = 0;
        d->msgIdx = BattleSystem_PrintBattleMessage(bsys, msgLoader, message + 4, BattleSystem_GetTextFrameDelay(bsys));
        SysTask_CreateOnMainQueue(ov12_02260614, d, 0);
    } else if (bootState == 1) {
        ov12_02263A00(bsys, battlerData[0x194]);
        ov12_0226430C(bsys, battlerData[0x194], message[0]);
    } else {
        if ((BattleSystem_GetBattleType(bsys) & 4) == 0) {
            ov12_02263A00(bsys, battlerData[0x194]);
        }
        ov12_0226430C(bsys, battlerData[0x194], message[0]);
    }
}
