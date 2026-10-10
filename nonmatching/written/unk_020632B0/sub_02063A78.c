typedef unsigned char u8;
typedef unsigned int u32;

u32 MapObject_GetType(void *mapObj);

/* the handler table in ROM at 0x020FE164, indexed by map object type */
extern u8 sHandlerTableROM[] __asm__("sub_020FE164");

/* a function pointer call passes all four argument registers */
typedef void (*MapObjHandlerFn)(void *a0, void *a1, u32 a2, u32 a3);

void sub_02063A78(void *mapObj)
{
    u32 type;
    u32 callerR3;
    u32 typeOffset;
    void *handler;

    type = MapObject_GetType(mapObj);
    /* r3 as the call left it: the asm passes it through to the handler untouched */
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    typeOffset = type << 2;
    handler = *(void **)(sHandlerTableROM + typeOffset);

    ((MapObjHandlerFn)handler)(mapObj, handler, typeOffset, callerR3);
}
