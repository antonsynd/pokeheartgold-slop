#include "global.h"
#include "pokeathlon/pokeathlon.h"

BOOL ov96_021F2A84(u8 *alloc, u32 index);
int ov96_021F20C4(u8 *alloc, u32 index, u32 a, u32 b);
void ov96_021F208C(u32 a, u32 b, VecFx32 *c, u32 d, VecFx32 *e);
BOOL ov96_021F2F7C(u32 a, u32 b, u32 c);
u32 ov96_021F342C(u32 a, u32 b);
u32 ov96_021F32C4(u32 a);
void ov96_021F2A00(u8 *alloc);
void ov96_021F1CC0(PokeathlonCourseData *data);
void ov96_021F21EC(u8 *alloc);
void ov96_021F2834(u8 *alloc);
void ov96_021F0F04(u8 *alloc, u8 *entry);
void ov96_021E8228(PokeathlonCourseData *data, u32 index, u32 sub, u32 kind, u32 value);

#define A8(off) (*(u8 *)(alloc + (off)))
#define A32(off) (*(s32 *)(alloc + (off)))
#define CELL(base, i) ((base) + ((i) / 3) * 0x1b0 + ((i) % 3) * 0x90)

void ov96_021F1170(PokeathlonCourseData *param0) {
    u8 *copyArea = PokeathlonCourse_GetDataCopyArea(param0);
    u8 *alloc = PokeathlonCourse_GetHeapAllocPtr4(param0);
    u8 *entry28;
    u8 *src;
    u8 *dst;
    u8 *entry;
    u8 *e;
    u8 *c;
    u8 *cell;
    u8 *base;
    u8 *p;
    u32 *srcWords;
    u32 *dstWords;
    u32 word0;
    u32 word1;
    u8 count;
    int n;
    int i;
    int limit;
    int result;
    int quot;
    u8 q;
    u8 rem;
    int remS;
    u8 sel;
    u8 idx;
    u32 r;

    if (ov96_021E5F24(param0) != 0) {
        return;
    }
    entry28 = ov96_021E8A20(copyArea + 0x28);
    if (A32(0x7ec) == 1) {
        count = 0;
        n = PokeathlonCourse_GetParticipantCount(param0);
        i = 0;
        if (n > 0) {
            p = copyArea + 0x50;
            for (i = 0; i < n; i++) {
                if (ov96_021E8A20(p)[8] != 0) {
                    count = count + 1;
                }
                p += 0x28;
            }
        }
        if (count == n) {
            A8(0x726) = 0;
            A8(0x74a) = 0;
            A32(0x7ec) = 0;
        }
    } else if (A8(0x728) != 0) {
        A8(0x728) = A8(0x728) - 1;
        if (A8(0x728) == 0) {
            A32(0x7ec) = 1;
        } else if (A8(0x728) == 0x3c) {
            A8(0x72a) = 1;
            A8(0x727) = A8(0x727) + 1;
        }
    } else if (A8(0x74a) != 0) {
        A8(0x726) = 0x2c;
        if (A8(0x749) != 0) {
            A8(0x749) = A8(0x749) - 1;
        } else if (A8(0x74d) != 0) {
            A8(0x74d) = A8(0x74d) - 1;
        } else if (A8(0x74f) >= A8(0x74e)) {
            ov96_021F2A00(alloc);
            A8(0x728) = 0x5a;
        } else {
            A8(0x74b) = A8(0x750 + A8(0x74f));
            A8(0x74c) = ov96_021F32C4(A8(0x75c + A8(0x74f)));
            quot = A8(0x74b) / 3;
            q = (u8)quot;
            *(s32 *)(alloc + 0x6e0 + q * 4) = *(s32 *)(alloc + 0x6e0 + q * 4) + A8(0x75c + A8(0x74f));
            A8(0x74f) = A8(0x74f) + 1;
            A8(0x74d) = 6;
            rem = (u8)(A8(0x74b) % 3);
            ov96_021E8228(param0, q, rem, 3, 1);
        }
    } else {
        if (A8(0x727) < 1) {
            limit = 8;
        } else if (A8(0x727) < 3) {
            limit = 6;
        } else {
            limit = 4;
        }
        A8(0x725) = A8(0x725) + 1;
        if (A8(0x725) >= limit) {
            A8(0x725) = 0;
            A8(0x726) = A8(0x726) + 1;
            if (A8(0x726) >= 0x2b) {
                A8(0x72b) = 1;
                A8(0x748) = 1;
                A8(0x74a) = 1;
                A8(0x749) = 0x14;
                for (i = 0; i < 4; i++) {
                    A8(0x720 + i) = 0xc;
                }
                base = alloc + 0x20;
                for (i = 0; i < 12;) {
                    c = CELL(base, i);
                    i = i + 1;
                    *(VecFx32 *)(c + 0x1c) = *(VecFx32 *)(c + 0x28);
                    *(s32 *)(c + 0x34) = 0;
                    *(s32 *)(c + 0x38) = 0;
                    *(u16 *)(c + 0x8e) = *(u16 *)(c + 0x8c);
                    c[0x44] = 0;
                    c[0x45] = 0;
                    c[0x46] = 0;
                    c[0x47] = 0;
                }
            }
        }
    }
    A8(0x729) = A8(0x727) >= 6 ? 1 : 0;
    dst = ov96_021E8A20(copyArea + 0x50);
    src = ov96_021E8A20(copyArea);
    srcWords = (u32 *)src;
    dstWords = (u32 *)dst;
    for (i = 0; i < 4; i++) {
        word0 = srcWords[0];
        word1 = srcWords[1];
        dstWords[0] = word0;
        dstWords[1] = word1;
        dstWords += 2;
        srcWords += 2;
    }
    dstWords[0] = srcWords[0];
    if (A8(0x74a) == 0) {
        p = copyArea + 0x50;
        base = alloc + 0x20;
        cell = base;
        for (i = 0; i < 4; i++) {
            entry = ov96_021E8A20(p);
            if (*(u32 *)entry != 0) {
                if (A32(i * 0xc + 0x6f0) != 0 && A32(i * 0xc + 0x6f4) != 0) {
                    A32(i * 0xc + 0x6f0) = 0;
                } else if (A32(i * 0xc + 0x6f0) == 0 && A32(i * 0xc + 0x6f4) == 0) {
                    A32(i * 0xc + 0x6f0) = 1;
                    A32(i * 0xc + 0x6f4) = 1;
                }
            } else {
                A32(i * 0xc + 0x6f0) = 0;
                A32(i * 0xc + 0x6f4) = 0;
            }
            if (A32(i * 0xc + 0x6f0) != 0) {
                if (ov96_021F2A84(alloc, i) == 0) {
                    result = ov96_021F20C4(alloc, (u8)i, entry[4], entry[5]);
                    if (result != 0xc) {
                        A8(0x720 + i) = result;
                        remS = result % 3;
                        cell[remS * 0x90 + 0x46] = 2;
                        cell[remS * 0x90 + 0x47] = 3;
                    }
                }
            } else if (A32(i * 0xc + 0x6f4) != 0) {
                if (A8(0x720 + i) != 0xc) {
                    rem = (u8)(A8(0x720 + i) % 3);
                    e = cell + rem * 0x90;
                    ov96_021F208C(entry[4], entry[5], (VecFx32 *)(e + 0x28), 0, (VecFx32 *)(e + 0x1c));
                    if (ov96_021F2F7C(*(u32 *)e, *(u32 *)(e + 0x1c), *(u32 *)(e + 0x20)) != 0) {
                        A8(0x7e0 + A8(0x720 + i)) = 1;
                    } else {
                        A8(0x7e0 + A8(0x720 + i)) = 0;
                    }
                }
            } else {
                if (A8(0x720 + i) != 0xc) {
                    A8(0x720 + i) = 0xc;
                }
            }
            p += 0x28;
            cell += 0x1b0;
        }
        r = ov96_021F342C(*(u32 *)(alloc + 0x770), (u8) * (u16 *)(alloc + 0x732));
        if (r != 0xc) {
            sel = (u8)((s32)r / 3);
            if (sel < PokeathlonCourse_GetParticipantCount(param0)) {
                GF_AssertFail();
            } else {
                remS = (s32)r % 3;
                c = alloc + 0x20 + sel * 0x1b0 + remS * 0x90;
                c[0x46] = 2;
                c[0x47] = 3;
            }
        }
    }
    ov96_021F1CC0(param0);
    ov96_021F21EC(alloc);
    ov96_021F2834(alloc);
    ov96_021F0F04(alloc, entry28);
}
