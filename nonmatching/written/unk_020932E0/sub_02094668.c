typedef unsigned char u8;
typedef unsigned int u32;

void *NARC_New(u32 narcId, u32 heapId);
void *Heap_AllocAtEnd(u32 heapId, u32 size);
void Heap_Free(void *ptr);
void NARC_Delete(void *narc);
void sub_02094C08(void *arg0, void *arg1, u32 arg2, u32 arg3, void *arg4, void *arg5, u32 arg6);

void sub_02094668(u8 *param1, u32 param2, u32 param3, u32 param4)
{
    void *narc;
    void *buf;
    u32 offset2;
    u32 offset3;
    u32 i;
    u8 *src;
    u32 *dst;
    u32 n;

    narc = NARC_New(0x14, *(u32 *)(param1 + 4));
    buf = Heap_AllocAtEnd(*(u32 *)(param1 + 4), 0x1000);

    for (i = 0; i < 30; i++) {
        *(u32 *)(param1 + 0x8DC + i * 0x20C) = 0;
    }

    offset3 = param3 * 0x34;
    offset2 = param2 * 0x34;

    if (param4 != 0) {
        src = param1 + 0x7EC + offset3;
        dst = (u32 *)(param1 + 0x7EC + offset2);
    } else {
        src = param1 + 0x19C + offset3;
        dst = (u32 *)(param1 + 0x7EC + offset2);
    }

    for (n = 6; n != 0; n--) {
        dst[0] = ((u32 *)src)[0];
        dst[1] = ((u32 *)src)[1];
        src += 8;
        dst += 2;
    }

    if (param4 != 0) {
        sub_02094C08(param1 + 0x7EC + offset3, param1 + 0x8D4, param2, *(u32 *)(param1 + offset2 + 0x7E8), buf, narc, 0x222);
    } else {
        sub_02094C08(param1 + 0x19C + offset3, param1 + 0x8D4, param2, *(u32 *)(param1 + offset2 + 0x7E8), buf, narc, 0x222);
    }

    Heap_Free(buf);
    NARC_Delete(narc);

    *(u32 *)(param1 + 0x4644) = 0x2094759;
}
