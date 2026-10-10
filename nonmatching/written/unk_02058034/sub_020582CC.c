typedef unsigned char u8;
typedef unsigned int u32;

void SysTask_Destroy(void *task);

/* the manager pointer stored at 0x021D41C8 */
extern u8 *sFieldCommMan __asm__("sub_021D41C8");

/* a function pointer call passes all four argument registers */
typedef void (*FieldCommTaskFn)(u32 a0, u32 a1, u8 *a2, u32 a3);

void sub_020582CC(void *task, void *unused)
{
    u32 callerR3;
    u8 *man;
    FieldCommTaskFn fn;
    u8 *pauseTask;
    u8 pause;

    /* r3 as the function received it; the asm passes it through to the task call */
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    man = sFieldCommMan;
    if (man == 0) {
        SysTask_Destroy(task);
        return;
    }

    fn = *(FieldCommTaskFn *)(man + 0x30);
    if (fn != 0) {
        pauseTask = man + 0x3C;
        pause = *pauseTask;
        if (pause == 0) {
            fn(pause, (u32)fn, pauseTask, callerR3);
        }
    }
}
