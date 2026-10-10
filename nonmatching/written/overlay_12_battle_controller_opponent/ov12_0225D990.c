typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

void ManagedSprite_GetPositionXY(void *spr, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
void ov12_0226430C(void *battleSys, u32 battler, u32 command);
void Heap_Free(void *ptr);
void SysTask_Destroy(void *task);

void ov12_0225D990(void *task, char *d)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    s16 *st = (s16 *)&slot;

    if (*(u8 *)(d + 0xa) == 0) {
        ManagedSprite_GetPositionXY(*(void **)(d + 4), &st[1], &st[0]);
        if (*(u8 *)(d + 0xb) == 0) {
            st[1] = st[1] + 5;
            if (st[1] >= *(s16 *)(d + 0xc)) {
                st[1] = *(s16 *)(d + 0xc);
                *(u8 *)(d + 0xa) = *(u8 *)(d + 0xa) + 1;
            }
        } else {
            st[1] = st[1] - 5;
            if (st[1] <= *(s16 *)(d + 0xc)) {
                st[1] = *(s16 *)(d + 0xc);
                *(u8 *)(d + 0xa) = *(u8 *)(d + 0xa) + 1;
            }
        }
        ManagedSprite_SetPositionXY(*(void **)(d + 4), st[1], st[0]);
    } else if (*(u8 *)(d + 0xa) == 1) {
        ov12_0226430C(*(void **)d, *(u8 *)(d + 9), *(u8 *)(d + 8));
        Heap_Free(d);
        SysTask_Destroy(task);
    }
}
