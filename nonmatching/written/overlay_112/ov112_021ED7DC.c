typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct UnkStruct_ov112_021ED7DC_Sub {
    u16 value;
    u8 a : 5;
    u8 b : 2;
    u8 c : 1;
} UnkStruct_ov112_021ED7DC_Sub;

typedef struct UnkStruct_ov112_021ED7DC {
    void *data;
    u32 remaining;
    UnkStruct_ov112_021ED7DC_Sub sub;
} UnkStruct_ov112_021ED7DC;

void ov112_021F30BC(void *a0, UnkStruct_ov112_021ED7DC *a1);
int ov112_021F31BC(void *a0);
void ov112_021F3140(void *a0, UnkStruct_ov112_021ED7DC_Sub *a1);

void ov112_021ED7DC(u8 *work) {
    UnkStruct_ov112_021ED7DC_Sub sub;
    UnkStruct_ov112_021ED7DC args;
    u32 total, used;

    args.data = 0;
    args.remaining = 0;
    *(u32 *)&args.sub = 0;
    args.data = work + 0x9D54;
    args.sub.value = *(u16 *)(work + 0x9D44);
    args.sub.a = work[0x9D51] & 0x1F;
    args.sub.b = (work[0x9D51] >> 5) & 3;
    args.sub.c = (work[0x9D52] >> 1) & 1;
    total = *(u32 *)(work + 0x10F0);
    used = *(u32 *)(work + 0x1D758);
    if (total < used) {
        args.remaining = 0;
    } else {
        args.remaining = total - used;
    }
    ov112_021F30BC(work + 0xAA34, &args);
    if (ov112_021F31BC(work + 0x9DFC) != 0) {
        sub.value = *(u16 *)(work + 0xAD00);
        sub.a = work[0xAD0D] & 0x1F;
        sub.b = (work[0xAD0D] >> 5) & 3;
        sub.c = (work[0xAD0E] >> 1) & 1;
        ov112_021F3140(work + 0x9DFC, &sub);
    }
}
