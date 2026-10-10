typedef unsigned char u8;
typedef unsigned int u32;

extern u8 gSystem[];
extern u8 ov15_02200584[];
extern u8 ov15_02200585[];
extern u8 ov15_02200586[];
extern u8 ov15_02200587[];

int ov15_021FAD28(int idx)
{
    u32 keys = *(u32 *)(gSystem + 0x48);

    if (keys & 0x40) {
        return ov15_02200584[idx * 4] - 8;
    }
    if (keys & 0x80) {
        return ov15_02200585[idx * 4] - 8;
    }
    if (keys & 0x20) {
        return ov15_02200586[idx * 4] - 8;
    }
    if (keys & 0x10) {
        return ov15_02200587[idx * 4] - 8;
    }
    return idx;
}
