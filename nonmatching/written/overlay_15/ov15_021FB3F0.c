typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

extern u8 gSystem[];
extern u8 ov15_02200528[];
extern u8 ov15_02200529[];
extern u8 ov15_0220052A[];
extern u8 ov15_0220052B[];
extern u8 ov15_02201468[];

void PlaySE(u16 sndseq);
int ov15_021FAC2C(void *app, int a);
void ov15_021FD774(void *app, int a);
void ov15_021FFECC(void *app, int idx);

#define SEQ_SE_GS_GEARCANCEL 2368

int ov15_021FB3F0(void *app)
{
    s32 cur = *(s32 *)((u8 *)app + 0x66c);
    s32 next = cur;
    s32 hit;
    u32 keys = *(u32 *)(gSystem + 0x48);

    if (keys & 0x40) {
        next = ov15_02200528[cur * 4];
    } else if (keys & 0x80) {
        next = ov15_02200529[cur * 4];
    } else if (keys & 0x20) {
        next = ov15_0220052A[cur * 4];
    } else if (keys & 0x10) {
        next = ov15_0220052B[cur * 4];
    }
    if (next != cur) {
        *(s32 *)((u8 *)app + 0x66c) = next;
        ov15_021FFECC(app, ov15_02201468[next]);
        PlaySE(0x5dc);
        return -1;
    }
    hit = ov15_021FAC2C(app, 1);
    if (hit != -1) {
        ov15_021FD774(app, 1);
        *(s32 *)((u8 *)app + 0x66c) = hit;
        ov15_021FFECC(app, ov15_02201468[hit]);
        if (hit == 4) {
            PlaySE(SEQ_SE_GS_GEARCANCEL);
            return -2;
        }
        if (*(s32 *)((u8 *)app + hit * 4 + 0x7f0) != 0) {
            PlaySE(0x5dc);
            return hit;
        }
        return -1;
    }
    keys = *(u32 *)(gSystem + 0x48);
    if (keys & 1) {
        if (*(s32 *)((u8 *)app + next * 4 + 0x7f0) != 0) {
            PlaySE(0x5dc);
            ov15_021FD774(app, 0);
            return next;
        }
        if (next == 4) {
            PlaySE(0x5dc);
            return -2;
        }
        return -1;
    }
    if (keys & 2) {
        PlaySE(SEQ_SE_GS_GEARCANCEL);
        return -2;
    }
    return -1;
}
