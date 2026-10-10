typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

void sub_02091574(void *arg0);
void *Heap_Alloc(u32 heapID, u32 size);
void MI_CpuFill8(void *dest, u8 value, u32 size);
void *SysTask_CreateOnMainQueue(void (*func)(void *, void *), void *data, u32 priority);
void sub_02058034(void *arg0);
void sub_0203778C(void *arg0);
void sub_020582CC(void *task, void *unused);

/* the manager pointer stored at 0x021D41C8 */
extern u8 *sFieldCommMan __asm__("sub_021D41C8");

void sub_02058038(void *param)
{
    if (sFieldCommMan == 0) {
        sub_02091574(param);

        sFieldCommMan = Heap_Alloc(0xf, 0x44);
        MI_CpuFill8(sFieldCommMan, 0, 0x44);
        *(u16 *)(sFieldCommMan + 0x38) = 0x32;
        *(void **)(sFieldCommMan + 0x34) = SysTask_CreateOnMainQueue(sub_020582CC, 0, 10);
        *(void **)(sFieldCommMan + 0x14) = param;
        *(u32 *)(sFieldCommMan + 0x40) = 0;

        sub_02058034(sFieldCommMan);
        sub_0203778C(sFieldCommMan + 0x18);
    }
}
