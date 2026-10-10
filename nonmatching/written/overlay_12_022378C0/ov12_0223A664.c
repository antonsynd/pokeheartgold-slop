#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "unk_02035900.h"

void ov12_0223A664(BattleSystem *battleSys, void *dto)
{
    // The game keeps netIDs[] and versions[] in its stack frame, right below the registers its prologue pushed,
    // and indexes them with an unchecked count. emu[] mirrors that frame (versions, netIDs, then r3-r7 and lr as
    // pushed); indexes past it go to the memory above the frame, at the same address the game would use.
    u32 emu[14];
    u32 *volatile above;
    char *fp;
    u32 entrySp;
    int i, j;
    int netID;
    int connectedCount;
    u32 mask;
    u32 battleType;
    int temp;
    int versionI, versionJ, netIDI, netIDJ;
    u32 savedR3, savedR4, savedR5, savedR6;

#define SLOT(s) ((s) < 14 ? &emu[(s)] : (u32 *)(entrySp + 4 * ((s)-14)))
#define VERSION(k) (*(int *)SLOT(k))
#define NETID(k) (*(int *)SLOT(4 + (k)))

    __asm__ volatile("movs %0, r3" : "=l"(savedR3) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(savedR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(savedR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(savedR6) : : "cc");
    fp = __builtin_frame_address(0);
    entrySp = (u32)fp + 8;

    mask = *(u32 *)((u8 *)battleSys + 0x240c);
    if (mask & 0x10) {
        *((u8 *)battleSys + 0x23fc) = 1;
        return;
    }

    emu[8] = savedR3;
    emu[9] = savedR4;
    emu[10] = savedR5;
    emu[11] = savedR6;
    emu[12] = ((u32 *)fp)[0];
    emu[13] = ((u32 *)fp)[1];

    for (i = 0; i < 4; i++) {
        NETID(i) = i;
        VERSION(i) = ((int *)((u8 *)dto + 0x17c))[i];
    }

    netID = sub_0203769C();
    connectedCount = sub_02037454();

    for (i = 0; i < connectedCount - 1; i++) {
        for (j = i + 1; j < connectedCount; j++) {
            versionJ = VERSION(j);
            versionI = VERSION(i);
            if (versionI < versionJ) {
                netIDJ = NETID(j);
                netIDI = NETID(i);
                NETID(i) = netIDJ;
                NETID(j) = netIDI;
                VERSION(i) = versionJ;
                VERSION(j) = versionI;
            }
        }
    }

    if (NETID(0) == netID) {
        *((u8 *)battleSys + 0x23fc) = 1;
    } else {
        battleType = *(u32 *)((u8 *)battleSys + 0x2c);
        if ((battleType & 0x80) == 0) {
            if (battleType & 8) {
                temp = sub_020378AC(netID);

                switch (sub_020378AC(NETID(0))) {
                case 0:
                case 2:
                    if (temp & 1) {
                        *(u32 *)((u8 *)battleSys + 0x240c) |= 0x20;
                    }
                    break;
                case 1:
                case 3:
                    if ((temp & 1) == 0) {
                        *(u32 *)((u8 *)battleSys + 0x240c) |= 0x20;
                    }
                    break;
                }
            } else {
                *(u32 *)((u8 *)battleSys + 0x240c) |= 0x20;
            }
        }
    }
}
