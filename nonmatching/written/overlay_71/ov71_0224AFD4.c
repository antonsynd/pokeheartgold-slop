typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

void *Heap_Alloc(u32 heapId, u32 size);
void Heap_Free(void *ptr);
void ov71_022476B4(void *model, void *position);
void *SysTask_CreateOnMainQueue(void *func, void *data, u32 priority);
void ov71_0224B028(void *task, void *data);

void ov71_0224AFD4(u8 *phase, void **task)
{
    s32 *state = Heap_Alloc(0x39, 0x1c);

    if (state != 0) {
        s32 delta;
        state[0] = (s32)task;
        state[2] = *(s32 *)(phase + 0x24);
        ov71_022476B4((void *)state[2], &state[3]);
        delta = 0x32000 - state[4];
        state[6] = delta / 16;
        state[1] = 0x10;
        *task = SysTask_CreateOnMainQueue(ov71_0224B028, state, 0);
        if (*task == 0) {
            Heap_Free(state);
        }
    }
}
