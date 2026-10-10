typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

/* terrain collision manager's getTileAttributes: called with the four argument registers */
typedef u32 (*GetTileAttributesFn)(void *fieldSystem, s32 tileX, s32 tileZ, u16 *attributes);

s32 sub_020548C0(void *fieldSystem, s32 tileX, s32 tileZ)
{
    u16 attributes;
    void *man = *(void **)((u8 *)fieldSystem + 0x60);
    GetTileAttributesFn getTileAttributes = *(GetTileAttributesFn *)((u8 *)man + 4);
    u32 valid;
    u8 hasCollision;

    valid = getTileAttributes(fieldSystem, tileX, tileZ, &attributes);
    if (valid == 0) {
        return 0;
    }

    hasCollision = (u8)((attributes >> 15) & 1);
    if (hasCollision == 1) {
        return 1;
    }
    return 0;
}
