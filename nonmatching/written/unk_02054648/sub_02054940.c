typedef unsigned char u8;
typedef int s32;

/* the manager's first slot, called with the four argument registers and the caller's fifth argument on the stack */
typedef s32 (*ManagerFn5)(void *fieldSystem, s32 a1, s32 a2, s32 a3, void *a4);

s32 sub_02054940(void *fieldSystem, s32 a1, s32 a2, s32 a3, void *a4)
{
    void *man = *(void **)((u8 *)fieldSystem + 0x60);
    ManagerFn5 fn = *(ManagerFn5 *)man;

    return fn(fieldSystem, a1, a2, a3, a4);
}
