typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

u32 sub_0203993C(void);
s32 sub_0203774C(u32 playerCount);
u32 sub_02057A34(s32 netId);
u32 sub_02057A88(s32 netId);
s32 sub_0203769C(void);
void sub_02037894(s32 netId, s32 slot);

/* the two battle grids the function copies from the ROM: 1v1 entries {4,7} {11,7}, 2v2 entries {4,6} {11,6} {4,8} {11,8} */
const u16 _020FC7A0[4] = { 4, 7, 11, 7 };
const u16 _020FC7A8[8] = { 4, 6, 11, 6, 4, 8, 11, 8 };

/*
 * The original keeps v6[4] (sp+0x10), the 2v2 grid (sp+0x20) and the registers its prologue pushed (sp+0x30...)
 * in one stack frame, and nothing bounds netId/netJd by 4.  FRAME below models that frame word for word
 * (v6 at word 0, grid2v2 at word 4, saved r3,r4,r5,r6,r7,lr at words 8..13); a word index past it is the
 * caller's frame, which is read and written through the entry stack pointer.
 */
#define FRAME_WORDS 14

static u32 FrameRead(const u32 *frame, const u32 *entrySp, u32 word)
{
    return word < FRAME_WORDS ? frame[word] : entrySp[word - FRAME_WORDS];
}

static void FrameWrite(u32 *frame, u32 *entrySp, u32 word, u32 value)
{
    if (word < FRAME_WORDS) {
        frame[word] = value;
    } else {
        entrySp[word - FRAME_WORDS] = value;
    }
}

s32 sub_02057C94(void)
{
    u32 callerR3, callerR4, callerR5, callerR6;
    u32 frame[FRAME_WORDS];
    u16 grid1v1[4];
    u32 *entrySp;
    s32 connectedPlayers;
    s32 playerCnt;
    s32 v8;
    s32 netId;
    s32 netJd;
    s32 i;
    u32 gridWord;

    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");

    /* clang -O0 Thumb: the frame record (caller's r7, lr) sits just below the entry stack pointer */
    entrySp = (u32 *)((u8 *)__builtin_frame_address(0) + 8);

    for (i = 0; i < 4; i++) {
        grid1v1[i] = _020FC7A0[i];
    }
    for (i = 0; i < 4; i++) {
        frame[4 + i] = _020FC7A8[i * 2] | ((u32)_020FC7A8[i * 2 + 1] << 16);
    }
    frame[8] = callerR3;
    frame[9] = callerR4;
    frame[10] = callerR5;
    frame[11] = callerR6;
    frame[12] = *(u32 *)__builtin_frame_address(0); /* caller's r7 */
    frame[13] = (u32)__builtin_return_address(0);

    connectedPlayers = sub_0203774C(sub_0203993C());
    playerCnt = 0;
    v8 = 0;

    for (netId = 0; netId < connectedPlayers; netId++) {
        for (netJd = 0; netJd < connectedPlayers; netJd++) {
            if (connectedPlayers == 2) {
                gridWord = grid1v1[netId * 2] | ((u32)grid1v1[netId * 2 + 1] << 16);
            } else {
                gridWord = FrameRead(frame, entrySp, 4 + (u32)netId);
            }
            if ((gridWord & 0xffff) == sub_02057A34(netJd) && (gridWord >> 16) == sub_02057A88(netJd)) {
                playerCnt++;
                FrameWrite(frame, entrySp, (u32)netJd, (u32)netId);

                if (netJd == sub_0203769C()) {
                    v8 = 1;
                }
                break;
            }
        }
    }

    if (playerCnt == connectedPlayers) {
        for (netId = 0; netId < connectedPlayers; netId++) {
            sub_02037894(FrameRead(frame, entrySp, (u32)netId), netId);
        }
    }

    return v8;
}
