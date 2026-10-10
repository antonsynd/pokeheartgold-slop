typedef unsigned char u8;
typedef unsigned int u32;

void GF_AssertFail(void);
void *Sprite_GetMatrixPtr(void *sprite);
void Sprite_SetAnimCtrlSeq(void *sprite, u32 seq);
void Sprite_SetDrawPriority(void *sprite, u32 priority);
void Sprite_SetMatrix(void *sprite, void *matrix);
void Sprite_SetDrawFlag(void *sprite, u32 flag);
void *NARC_New(u32 narcId, u32 heapId);
void *Heap_AllocAtEnd(u32 heapId, u32 size);
void Heap_Free(void *ptr);
void NARC_Delete(void *narc);
void sub_02094C08(void *arg0, void *arg1, u32 arg2, u32 arg3, void *arg4, void *arg5, u32 arg6);

void sub_020948C4(u8 *param1, u32 param2, u32 param3)
{
    u32 base;
    u32 *matrix;
    u32 *matrix2;
    void *narc;
    void *buf;
    u32 i;

    /* r7 as the function received it: it is only the table base when param2 is 1 or 2 */
    __asm__ volatile("movs %0, r7" : "=l"(base) : : "cc");

    *(u32 *)(param1 + 0x4680) = 1;
    *(u32 *)(param1 + 0x4684) = param3;
    *(u32 *)(param1 + 0x469C) = param2;
    if (param2 == 1) {
        base = (u32)(param1 + 0x198);
        *(u32 *)(param1 + 0x46A0) = base;
    } else if (param2 == 2) {
        base = (u32)(param1 + 0x7E8);
        *(u32 *)(param1 + 0x46A0) = base;
    } else {
        GF_AssertFail();
    }

    matrix = (u32 *)Sprite_GetMatrixPtr(*(void **)(base + param3 * 0x34));
    *(u32 *)(param1 + 0x4688) = matrix[0];
    *(u32 *)(param1 + 0x468C) = matrix[1];
    *(u32 *)(param1 + 0x4690) = matrix[2];

    Sprite_SetAnimCtrlSeq(*(void **)(param1 + 0x8C0), 0x2E);

    Sprite_SetDrawPriority(*(void **)(*(u32 *)(param1 + 0x46A0) + *(u32 *)(param1 + 0x4684) * 0x34), 3);

    if (param2 == 1) {
        matrix2 = (u32 *)Sprite_GetMatrixPtr(*(void **)(*(u32 *)(param1 + 0x46A0) + *(u32 *)(param1 + 0x4684) * 0x34));

        for (i = 0; i < 30; i++) {
            *(u32 *)(param1 + 0x8DC + i * 0x20C) = 0;
        }

        narc = NARC_New(0x14, *(u32 *)(param1 + 4));
        buf = Heap_AllocAtEnd(*(u32 *)(param1 + 4), 0x1000);

        sub_02094C08(*(u32 *)(param1 + 0x46A0) + *(u32 *)(param1 + 0x4684) * 0x34 + 4, param1 + 0x8D4, 0,
                     *(void **)(param1 + 0x7B0), buf, narc, 0x2B1);

        Sprite_SetMatrix(*(void **)(param1 + 0x7B0), matrix2);
        Sprite_SetDrawFlag(*(void **)(param1 + 0x7B0), 1);
        Heap_Free(buf);
        NARC_Delete(narc);

        *(u32 *)(param1 + 0x4644) = 0x2094759;
    }
}
