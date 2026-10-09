#include "global.h"

typedef union UnkOv74Word {
    u32 raw;
    struct {
        u32 lo : 8;
        u32 mid : 4;
        u32 hi : 4;
        u32 top : 16;
    };
} UnkOv74Word;

typedef struct UnkOv74Settings {
    UnkOv74Word w0;
    UnkOv74Word w1;
} UnkOv74Settings;

typedef struct UnkOv74Sub90 {
    u8 unk_000[0x1C0];
    u16 unk_1C0;
    u8 unk_1C2[2];
} UnkOv74Sub90;

typedef struct UnkOv74Sub254 {
    u8 unk_00[0x18];
    u8 unk_18;
} UnkOv74Sub254;

typedef struct UnkOv74Global {
    u8 unk_00[4];
    u32 unk_04;
    u8 unk_08[4];
    u16 unk_0C;
    u8 unk_0E[6];
    u32 unk_14;
    u32 unk_18;
    u8 unk_1C[4];
    u32 unk_20;
    u8 unk_24[4];
    u32 unk_28;
    u8 unk_2C[4];
    u32 unk_30;
    u8 unk_34[4];
    u32 unk_38;
    u32 unk_3C;
    UnkOv74Settings unk_40;
    u8 unk_48[0x78 - 0x48];
    u8 unk_78[0x90 - 0x78];
    UnkOv74Sub90 unk_90;
    UnkOv74Sub254 unk_254;
} UnkOv74Global;

typedef struct UnkOv74Packet {
    UnkOv74Word word0;
    UnkOv74Word word1;
    struct {
        u32 lo : 8;
        u32 mid : 8;
        u32 crc : 16;
    } word2;
    struct {
        u32 offset : 8;
        u32 length : 24;
    } word3;
    u8 payload[];
} UnkOv74Packet;

extern UnkOv74Global *ov74_0223105C(void);
extern void ov74_0223145C(UnkOv74Packet *packet);
extern u16 SVC_GetCRC16(u16 start, const void *data, u32 size);

u32 ov74_022310DC(void);
u32 ov74_022310E8(void);
u32 ov74_022310F4(void);
u32 ov74_02231100(void);
void ov74_0223110C(u16 value);
u32 ov74_02231118(void);
void ov74_02231124(u32 value);
void ov74_02231130(u32 value);
void ov74_0223113C(u32 value);
UnkOv74Sub90 *ov74_02231148(void);
UnkOv74Sub90 *ov74_02231154(void);
UnkOv74Sub90 *ov74_0223115C(void);
void ov74_02231164(void);
UnkOv74Sub254 *ov74_02231184(void);
void ov74_02231194(void);
u32 ov74_022311A0(void);
u8 ov74_022311AC(void);
u32 ov74_022311BC(void);
u32 ov74_022311CC(void);
u32 ov74_022311D8(void);
UnkOv74Settings *ov74_022311DC(void);
u8 *ov74_022311E8(void);
u32 ov74_022311F4(const u8 *src);
s16 ov74_02231214(const u8 *src);
void ov74_02231238(u32 value, u32 *outLow, u32 *outHigh);
u32 ov74_02231260(void);
u32 ov74_02231264(void);
u32 ov74_0223127C(u32 seed, u32 size, u32 *data);
void ov74_022312C0(UnkOv74Packet *packet, const u8 *payload, u32 length, u32 a3, u32 a4);
void ov74_022313F0(UnkOv74Packet *packet);

u32 ov74_022310DC(void) {
    return ov74_0223105C()->unk_30;
}

u32 ov74_022310E8(void) {
    return ov74_0223105C()->unk_38;
}

u32 ov74_022310F4(void) {
    return ov74_0223105C()->unk_3C;
}

u32 ov74_02231100(void) {
    return ov74_0223105C()->unk_28;
}

void ov74_0223110C(u16 value) {
    ov74_0223105C()->unk_0C = value;
}

u32 ov74_02231118(void) {
    return ov74_0223105C()->unk_14;
}

void ov74_02231124(u32 value) {
    ov74_0223105C()->unk_14 = value;
}

void ov74_02231130(u32 value) {
    ov74_0223105C()->unk_18 = value;
}

void ov74_0223113C(u32 value) {
    ov74_0223105C()->unk_20 = value;
}

UnkOv74Sub90 *ov74_02231148(void) {
    return &ov74_0223105C()->unk_90;
}

UnkOv74Sub90 *ov74_02231154(void) {
    return ov74_02231148();
}

UnkOv74Sub90 *ov74_0223115C(void) {
    return ov74_02231148();
}

void ov74_02231164(void) {
    UnkOv74Sub90 *sub = ov74_02231154();
    MI_CpuFill8(sub, 0, sizeof(UnkOv74Sub90));
    sub->unk_1C0 = 0x118;
}

UnkOv74Sub254 *ov74_02231184(void) {
    return &ov74_0223105C()->unk_254;
}

void ov74_02231194(void) {
    ov74_02231184()->unk_18 = 0;
}

u32 ov74_022311A0(void) {
    return ov74_0223105C()->unk_04;
}

u8 ov74_022311AC(void) {
    return ov74_0223105C()->unk_40.w0.lo;
}

u32 ov74_022311BC(void) {
    return ov74_0223105C()->unk_40.w0.mid;
}

u32 ov74_022311CC(void) {
    u32 word = ov74_0223105C()->unk_40.w1.raw;
    return word >> 16;
}

u32 ov74_022311D8(void) {
    return 0x38;
}

UnkOv74Settings *ov74_022311DC(void) {
    return &ov74_0223105C()->unk_40;
}

u8 *ov74_022311E8(void) {
    return ov74_0223105C()->unk_78;
}

u32 ov74_022311F4(const u8 *src) {
    u32 value = 0;
    u8 *dst = (u8 *)&value;
    u32 i;
    for (i = 0; i < 4; i++) {
        *dst = src[2 + i];
        dst++;
    }
    return value;
}

s16 ov74_02231214(const u8 *src) {
    s16 value = 0;
    u8 *dst = (u8 *)&value;
    u32 i;
    for (i = 0; i < 2; i++) {
        *dst = src[i];
        dst++;
    }
    return value;
}

void ov74_02231238(u32 value, u32 *outLow, u32 *outHigh) {
    *outLow = value % 10000;
    *outHigh = (value / 10000) % 10000;
}

u32 ov74_02231260(void) {
    return 0x10;
}

u32 ov74_02231264(void) {
    u16 vcount = reg_GX_VCOUNT;
    u32 tick = (u32)OS_GetTick();
    return ((tick + vcount) & ~1) + 1;
}

u32 ov74_0223127C(u32 seed, u32 size, u32 *data) {
    u32 i;
    u32 count = size >> 2;
    for (i = 0; i < count; i++) {
        u32 hi;
        u32 lo;
        seed = seed * 0x5D588B65 + 0x269EC3;
        hi = seed >> 16;
        seed = seed * 0x5D588B65 + 0x269EC3;
        lo = seed >> 16;
        *data++ ^= (hi << 16) | lo;
    }
    return seed;
}

void ov74_022312C0(UnkOv74Packet *packet, const u8 *payload, u32 length, u32 a3, u32 a4) {
    UnkOv74Settings *settings = ov74_022311DC();
    packet->word0.lo = settings->w0.lo;
    packet->word0.mid = settings->w0.mid;
    packet->word0.hi = settings->w0.hi;
    packet->word0.top = ov74_02231264();
    packet->word1.lo = settings->w1.lo;
    packet->word1.mid = settings->w1.mid;
    packet->word1.hi = settings->w1.hi;
    packet->word1.top = 0;
    packet->word2.lo = a4;
    packet->word2.mid = a3;
    packet->word2.crc = SVC_GetCRC16(0, payload, length);
    packet->word3.offset = ov74_02231260();
    packet->word3.length = length;
    if (length != 0) {
        MI_CpuCopy8(payload, (u8 *)packet + packet->word3.offset, length);
    }
    ov74_0223145C(packet);
    if (settings->w0.hi == 1) {
        ov74_0223127C(packet->word0.top, length + packet->word3.offset - 4, (u32 *)((u8 *)packet + 4));
    }
}

void ov74_022313F0(UnkOv74Packet *packet) {
    u32 seed;
    ov74_022311DC();
    if (packet->word0.hi == 1) {
        seed = ov74_0223127C(packet->word0.top, 12, (u32 *)((u8 *)packet + 4));
        ov74_0223127C(seed, packet->word3.offset + packet->word3.length - 0x10, (u32 *)((u8 *)packet + 0x10));
    }
}
