typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef unsigned long long u64;

typedef struct UnkStruct_ov43_0222AAA4 {
    u8 filler_00[0x50];
    void *messageFormat; // 0x50
} UnkStruct_ov43_0222AAA4;

void BufferIntegerAsString(void *messageFormat, u32 fieldno, s32 num, u32 numDigits, s32 strConvMode, s32 whichCharset);

// The 64-bit value arrives in r1 (low) and r2 (high) in this build's calling convention.
void ov43_0222AAA4(UnkStruct_ov43_0222AAA4 *param0, u32 low, u32 high)
{
    u64 value = ((u64)high << 32) | low;
    u64 v;

    v = value / 100000000;
    BufferIntegerAsString(param0->messageFormat, 1, (s32)v, 4, 2, 1);

    v = (value / 10000) % 10000;
    BufferIntegerAsString(param0->messageFormat, 2, (s32)v, 4, 2, 1);

    v = value % 10000;
    BufferIntegerAsString(param0->messageFormat, 3, (s32)v, 4, 2, 1);
}
