typedef int s32;
typedef long long s64;

s64 _s32_div_f(s32 num, s32 den);
void Sprite_SetMatrix(void *sprite, s32 *pos);

void ov01_021EB5F4(void *sprite, s32 *pos)
{
    if (pos[0] > 0x13F000) {
        pos[0] = (s32)(_s32_div_f(pos[0], 0x13F000) >> 32);
    } else if (pos[0] < -0x40000) {
        pos[0] += 0x13F000;
    }
    if (pos[1] > 0x100000) {
        pos[1] = pos[1] % 0x100000;
    } else if (pos[1] < -0x40000) {
        pos[1] += 0x100000;
    }
    Sprite_SetMatrix(sprite, pos);
}
