#include "global.h"

extern u8 *Save_TrainerHouse_Get(void *saveData);
extern BOOL TrainerHouseSet_CheckHasData(void *set);
extern u16 GF_CalcCRC16(void *data, u32 size);
extern int ov112_021F35A4(void *trainerHouse);
extern void ov112_021F3608(void *saveData, u8 *buf);
extern int ov112_021F35C8(void *trainerHouse, void *set, int *found);
extern void ov112_021F3630(void *saveData);
extern void MI_CpuCopy8(const void *src, void *dst, u32 size);

/* The asm indexes a 12-byte stack buffer with a value returned by ov112_021F35C8 without bounds checking,
   so the buffer sits at the very top of the function's frame (directly below the saved registers), the
   parameters are copied into locals below it, and nothing below the buffer is read through the index. */
void ov112_021F328C(void *saveData, u8 *set) {
    volatile u32 pad = 0;
    u8 buf[12];
    void *saveCopy = saveData;
    u8 *setCopy = set;
    int count;
    int idx;
    int found;
    int usedFlag;
    u8 savedByte;
    u8 *trainerHouse;
    u32 *dst;
    u32 *src;
    u8 *bufPtr;
    int k;

    savedByte = 0;
    found = 0;
    usedFlag = 0;
    trainerHouse = Save_TrainerHouse_Get(saveCopy);
    if (!TrainerHouseSet_CheckHasData(setCopy)) {
        ov112_021F35A4(trainerHouse);
        return;
    }
    if (*(u16 *)(setCopy + 0x1f2) != GF_CalcCRC16(setCopy, 0x1f2)) {
        return;
    }
    count = ov112_021F35A4(trainerHouse);
    ov112_021F3608(saveCopy, buf);
    idx = ov112_021F35C8(trainerHouse, setCopy, &found);
    if (count >= 10 || found != 0) {
        usedFlag = 1;
        count--;
        savedByte = buf[idx];
    }
    if (usedFlag != 0 && idx < count) {
        dst = (u32 *)(trainerHouse + idx * 0x180);
        bufPtr = buf + idx;
        do {
            src = dst + 0x60;
            for (k = 0; k < 0x30; k++) {
                u32 a = src[0];
                u32 b = src[1];
                src += 2;
                dst[0] = a;
                dst[1] = b;
                dst += 2;
            }
            idx++;
            bufPtr[0] = bufPtr[1];
            bufPtr++;
        } while (idx < count);
    }
    MI_CpuCopy8(setCopy, trainerHouse + count * 0x180, 0x180);
    buf[count] = savedByte;
    ov112_021F3630(saveCopy);
}
