typedef unsigned int u32;
typedef int s32;

extern s32 ov70_02245E84[];
typedef struct {
    s32 unk0;
    s32 count;
} UnkStruct_ov70_02245F58;
extern UnkStruct_ov70_02245F58 ov70_02245F58[];

s32 ov70_02243FD4(void *a, s32 b);

u32 ov70_02243FE0(void *a, s32 idx)
{
    s32 base = ov70_02245E84[idx];
    s32 count = ov70_02245F58[idx].count;
    s32 i;

    if (count > 0) {
        for (i = 0; i < count; i++) {
            if (ov70_02243FD4(a, base + i) > 0) {
                return 1;
            }
            count = ov70_02245F58[idx].count;
        }
    } else {
        if (ov70_02243FD4(a, base) > 0) {
            return 1;
        }
    }
    return 0;
}
