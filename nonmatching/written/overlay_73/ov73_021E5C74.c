typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

extern u8 ov73_021EA52A[];
extern u8 ov73_021EA52B[];

void GX_LoadOBJPltt(void *src, u32 offset, u32 size);
void ov73_021E72F4(void *p);

void ov73_021E5C74(void *task, u8 *work)
{
    if (*(s32 *)(work + 0xc) != 0) {
        if (*(s32 *)(work + 0x14) > ov73_021EA52A[*(s32 *)(work + 0x10) * 2]) {
            *(s32 *)(work + 0x14) = 0;
            *(s32 *)(work + 0x10) = *(s32 *)(work + 0x10) + 1;
            if (ov73_021EA52B[*(s32 *)(work + 0x10) * 2] == 0xff) {
                *(s32 *)(work + 0x10) = 0;
            }
            GX_LoadOBJPltt(*(u8 **)(*(u8 **)(work + 0x1c) + 0xc) + ov73_021EA52B[*(s32 *)(work + 0x10) * 2] * 0x20, 0, 0x20);
        } else {
            *(s32 *)(work + 0x14) = *(s32 *)(work + 0x14) + 1;
        }
        ov73_021E72F4(work + 0x378);
    }
}
