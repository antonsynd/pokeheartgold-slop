typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_02239954_860 {
    u8 filler_00[0x0C];
    s32 unk_0C;         // 0x0C
    s32 unk_10;         // 0x10
    s32 unk_14;         // 0x14
    s32 unk_18;         // 0x18
} UnkStruct_ov40_02239954_860;

typedef struct UnkStruct_ov40_02239954 {
    u8 filler_00[0x860];
    UnkStruct_ov40_02239954_860 *work; // 0x860
} UnkStruct_ov40_02239954;

void ov40_02230944(UnkStruct_ov40_02239954 *a);
void ov40_0222BF80(UnkStruct_ov40_02239954 *a, s32 b);

void ov40_02239954(u32 param0, u32 param1, UnkStruct_ov40_02239954 *p)
{
    UnkStruct_ov40_02239954_860 *w = p->work;

    if (param1 != 0) {
        return;
    }

    if (param0 == 0) {
        s32 v;
        ov40_02230944(p);
        v = w->unk_0C + 1;
        w->unk_0C = v;
        w->unk_0C = v % w->unk_10;
        ov40_0222BF80(p, 4);
    } else if (param0 == 1) {
        ov40_02230944(p);
        s32 v = w->unk_14 + 1;
        w->unk_14 = v;
        w->unk_14 = v % w->unk_18;
        ov40_0222BF80(p, 4);
    } else {
        ov40_02230944(p);
        ov40_0222BF80(p, 7);
    }
}
