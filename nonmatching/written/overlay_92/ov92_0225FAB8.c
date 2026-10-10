typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;

s32 ov92_0225ED68(void *self, s32 a);
void ov92_0225ED80(void *self);
void ov92_0225EEBC(void *self);
void ov92_0225FEB4(void *self);
void ov92_0225FC9C(void *self);
void ov92_0225FF1C(void *self);
void ov92_0225F878(void *self);
void ov92_0225EBE0(void *self);
s32 sub_02037030(u32 id, void *data, u32 size);

void ov92_0225FAB8(char *self)
{
    s32 idx0 = *(s32 *)self;
    u32 state = *(u32 *)(self + 0x2B9C + idx0 * 4);

    switch (state) {
    case 0:
        if (ov92_0225ED68(self, 0)) {
            *(s16 *)(self + 0x2AFC) = 0;
            ov92_0225EEBC(self);
            ov92_0225FEB4(self);
            *(u32 *)(self + *(s32 *)self * 4 + 0x2B9C) = 1;
            sub_02037030(0x18, self + 0x2B9C + *(s32 *)self * 4, 4);
            *(s32 *)(self + 0x2B18) = 0;
            *(s16 *)(self + 0x2AFE) = 0;
            *(s32 *)(self + 0x21A4) = 0;
        } else {
            ov92_0225ED80(self);
            ov92_0225FC9C(self);
            ov92_0225FF1C(self);
            ov92_0225F878(self);
            *(s16 *)(self + 0x2B00 + *(s32 *)self * 2) = (s16)(*(s16 *)(self + 0x2B00 + *(s32 *)self * 2) + 1);
        }
        break;
    case 1:
        *(s16 *)(self + 0x2AFC) = (s16)(*(s16 *)(self + 0x2AFC) + 1);
        if (*(s16 *)(self + 0x2AFC) >= 0x5A) {
            *(u32 *)(self + *(s32 *)self * 4 + 0x2B9C) = 2;
        }
        *(s32 *)(self + 0x2B18) = 0;
        *(s16 *)(self + 0x2AFE) = 0;
        *(s16 *)(self + *(s32 *)self * 2 + 0x2B00) = 0;
        break;
    case 2:
        if (*(s16 *)(self + 0x2AFC) != 0) {
            s32 a;
            s32 b;

            *(s32 *)(self + 0x2B18) = 0;
            *(s16 *)(self + 0x2AFE) = 0;
            *(s16 *)(self + 0x2AFC) = 0;
            *(s16 *)(self + *(s32 *)self * 2 + 0x2B00) = 0;
            a = *(s32 *)(self + 0x2AF8);
            b = *(s32 *)(self + 0x2AF4);
            if (a != b) {
                *(s32 *)(self + 0x2AF4) = a;
            }
            ov92_0225EBE0(self);
            sub_02037030(0x18, self + 0x2B9C + *(s32 *)self * 4, 4);
        } else {
            *(u32 *)(self + 0x2B9C + idx0 * 4) = 0;
        }
        break;
    case 3:
        *(s16 *)(self + 0x2AFC) = (s16)(*(s16 *)(self + 0x2AFC) + 1);
        if ((u32)(s32)*(s16 *)(self + 0x2AFC) >= 0x1D) {
            *(s16 *)(self + 0x2AFC) = 0;
            ov92_0225EBE0(self);
            *(u32 *)(self + *(s32 *)self * 4 + 0x2B9C) = 0;
        }
        break;
    default:
        break;
    }
}
