typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov43_0222AD98 {
    u8 filler_000[0x1FC];
    void *sprite;       // 0x1FC
} UnkStruct_ov43_0222AD98;

void Sprite_SetPriority(void *sprite, u32 priority);
void Sprite_SetDrawPriority(void *sprite, u32 priority);

void ov43_0222AD98(UnkStruct_ov43_0222AD98 *param0, u32 param1, u32 param2)
{
    Sprite_SetPriority(param0->sprite, param1);
    Sprite_SetDrawPriority(param0->sprite, param2);
}
