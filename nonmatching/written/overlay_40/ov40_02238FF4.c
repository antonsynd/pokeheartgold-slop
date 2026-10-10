typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef unsigned long long u64;

typedef struct Entry_ov40_02238FF4 {
    u32 id;     // 0x00
    u32 value;  // 0x04
    u32 lo;     // 0x08
    u32 hi;     // 0x0C
} Entry_ov40_02238FF4;

typedef struct UnkStruct_ov40_02238FF4_860 {
    u8 filler_000[0x0C];
    s32 row;            // 0x0C
    u8 filler_10[4];
    s32 mode;           // 0x14
    u8 filler_18[4];
    s32 side;           // 0x1C
    u8 filler_20[0x6F4];
    u8 *src714;         // 0x714
    u8 *src718;         // 0x718
    u8 filler_71C[0x30];
    Entry_ov40_02238FF4 table[1][20]; // 0x74C (row stride 0x140)
} UnkStruct_ov40_02238FF4_860;

typedef struct UnkStruct_ov40_02238FF4 {
    u8 filler_00[0x860];
    UnkStruct_ov40_02238FF4_860 *work; // 0x860
} UnkStruct_ov40_02238FF4;

u32 ov40_0222E658(s32 a, s32 b);

#define ROW_ENTRY(w, i) ((Entry_ov40_02238FF4 *)((u8 *)(w) + (w)->row * 0x140 + (i) * 0x10 + 0x74C))

static void Clamp(Entry_ov40_02238FF4 *e)
{
    u32 lo = e->lo;
    u32 hi = e->hi;
    if (!((((u64)hi << 32) | lo) < 0x8AC7230489E7FFFFull)) {
        e->lo = 0x89E7FFFF;
        e->hi = 0x8AC72304;
    }
}

void ov40_02238FF4(UnkStruct_ov40_02238FF4 *p)
{
    UnkStruct_ov40_02238FF4_860 *w = p->work;
    s32 i;

    w->src714 = (u8 *)w + 0xE0;
    w->src718 = (u8 *)w + 0x638;

    switch (w->mode) {
    case 0:
        for (i = 0; i < 16; i++) {
            if (w->side == 0) {
                ROW_ENTRY(w, i)->id = 10000;
                ROW_ENTRY(w, i)->value = ov40_0222E658(*(u8 *)(w->src718 + w->row * 0x48 + i + 4), 4);
                ROW_ENTRY(w, i)->lo = i;
                ROW_ENTRY(w, i)->hi = i >> 31;
            } else {
                ROW_ENTRY(w, i)->id = 20000;
                ROW_ENTRY(w, i)->value = ov40_0222E658(*(u8 *)(w->src714 + w->row * 0x1C8 + i + 4), 4);
                {
                    const u32 *s = (const u32 *)((u32)(w->src714 + w->row * 0x1C8 + i * 8 + 0x14) & ~3u);
                    u32 lo = s[0];
                    u32 hi = s[1];
                    ROW_ENTRY(w, i)->lo = lo;
                    ROW_ENTRY(w, i)->hi = hi;
                }
                Clamp(ROW_ENTRY(w, i));
            }
        }
        break;
    case 1:
        for (i = 0; i < 12; i++) {
            if (w->side == 0) {
                ROW_ENTRY(w, i)->id = 30000;
                ROW_ENTRY(w, i)->value = *(u8 *)(w->src718 + w->row * 0x48 + i + 0x14);
                ROW_ENTRY(w, i)->lo = i;
                ROW_ENTRY(w, i)->hi = i >> 31;
            } else {
                ROW_ENTRY(w, i)->id = 40000;
                ROW_ENTRY(w, i)->value = *(u8 *)(w->src714 + w->row * 0x1C8 + i + 0x94);
                {
                    const u32 *s = (const u32 *)((u32)(w->src714 + w->row * 0x1C8 + i * 8 + 0xA0) & ~3u);
                    u32 lo = s[0];
                    u32 hi = s[1];
                    ROW_ENTRY(w, i)->lo = lo;
                    ROW_ENTRY(w, i)->hi = hi;
                }
                Clamp(ROW_ENTRY(w, i));
            }
        }
        break;
    case 2:
        for (i = 0; i < 20; i++) {
            if (w->side == 0) {
                ROW_ENTRY(w, i)->id = 50000;
                ROW_ENTRY(w, i)->value = *(u16 *)(w->src718 + w->row * 0x48 + i * 2 + 0x20);
                ROW_ENTRY(w, i)->lo = i;
                ROW_ENTRY(w, i)->hi = i >> 31;
            } else {
                ROW_ENTRY(w, i)->id = 60000;
                ROW_ENTRY(w, i)->value = *(u16 *)(w->src714 + w->row * 0x1C8 + i * 2 + 0x100);
                {
                    const u32 *s = (const u32 *)((u32)(w->src714 + w->row * 0x1C8 + i * 8 + 0x128) & ~3u);
                    u32 lo = s[0];
                    u32 hi = s[1];
                    ROW_ENTRY(w, i)->lo = lo;
                    ROW_ENTRY(w, i)->hi = hi;
                }
                Clamp(ROW_ENTRY(w, i));
            }
        }
        break;
    }
}
