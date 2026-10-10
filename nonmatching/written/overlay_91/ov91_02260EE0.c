typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;
typedef signed long long s64;

s32 GF_CosDegNoWrap(u16 deg);
s32 GF_SinDegNoWrap(u16 deg);

void ov91_02260EE0(s32 param0, s32 param1, s32 param2, s32 param3, s32 param4, s32 *param5, s32 *param6)
{
    s32 v1 = param4 - param3;
    s16 v0 = (s16)(param3 + ((param0 * v1) / param1));
    s32 amp = param2 << 12;

    *param5 = (s32)(((s64)GF_CosDegNoWrap((u16)v0) * amp + 0x800LL) >> 12) >> 12;
    *param6 = (s32)(((s64)GF_SinDegNoWrap((u16)v0) * amp + 0x800LL) >> 12) >> 12;
}
