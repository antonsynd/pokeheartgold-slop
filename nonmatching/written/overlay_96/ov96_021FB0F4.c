typedef unsigned char undefined;
typedef unsigned char undefined1;
typedef unsigned short undefined2;
typedef unsigned int undefined3;
typedef unsigned int undefined4;
typedef unsigned long long undefined8;
typedef unsigned char byte;
typedef signed char sbyte;
typedef unsigned short ushort;
typedef unsigned short word;
typedef unsigned int uint;
typedef unsigned int dword;
typedef unsigned int ulong;
typedef unsigned long long ulonglong;
typedef unsigned long long qword;
typedef long long longlong;
typedef unsigned char bool;
typedef int code();
typedef void *pointer;
typedef unsigned short wchar16;
#define true 1
#define false 0
#define CONCAT11(a, b) ((unsigned short)(((unsigned)(a) << 8) | (unsigned char)(b)))
#define CONCAT12(a, b) (((unsigned)(unsigned char)(a) << 16) | (unsigned short)(b))
#define CONCAT13(a, b) (((unsigned)(unsigned char)(a) << 24) | ((unsigned)(b) & 0xffffff))
#define CONCAT21(a, b) (((unsigned)(unsigned short)(a) << 8) | (unsigned char)(b))
#define CONCAT22(a, b) (((unsigned)(unsigned short)(a) << 16) | (unsigned short)(b))
#define CONCAT31(a, b) (((unsigned)(a) << 8) | (unsigned char)(b))
#define CONCAT44(a, b) (((unsigned long long)(unsigned)(a) << 32) | (unsigned)(b))
#define SUB41(x, n) ((unsigned char)((unsigned)(x) >> ((n) * 8)))
#define SUB42(x, n) ((unsigned short)((unsigned)(x) >> ((n) * 8)))
#define SUB81(x, n) ((unsigned char)((unsigned long long)(x) >> ((n) * 8)))
#define SUB84(x, n) ((unsigned)((unsigned long long)(x) >> ((n) * 8)))
#define ZEXT14(x) ((unsigned)(unsigned char)(x))
#define ZEXT24(x) ((unsigned)(unsigned short)(x))
#define ZEXT48(x) ((unsigned long long)(unsigned)(x))
#define SEXT14(x) ((int)(signed char)(x))
#define SEXT24(x) ((int)(short)(x))
#define SEXT48(x) ((long long)(int)(x))
#define CARRY4(a, b) ((unsigned)(a) + (unsigned)(b) < (unsigned)(a))
#define SCARRY4(a, b) ((((int)(a) + (int)(b)) < (int)(a)) != ((int)(b) < 0))
#define SBORROW4(a, b) ((((int)(a) - (int)(b)) > (int)(a)) != ((int)(b) < 0))
#define POPCOUNT(x) __builtin_popcount(x)
#define LZCOUNT(x) ((x) ? __builtin_clz(x) : 32)
undefined4 ov96_021EB52C();
undefined4 ov96_021EB5B8();
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 ov96_021FAFFC();
undefined4 GF_AssertFail(void);
void * ov96_021E8A20(void *);
undefined4 Sprite_SetAnimCtrlSeq(void *, int);
undefined4 Sprite_SetMatrix(void *, void *);
undefined4 Sprite_GetMatrixPtr();
undefined4 Sprite_SetAffineScale(void *, void *);
undefined4 ov96_021E5F24(void *);
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_021FB994();
undefined4 func_0x020f116c() __asm__("sub_020F116C");
undefined4 func_0x020f09a4() __asm__("sub_020F09A4");
void * Sprite_GetScalePtr(void *);
undefined4 func_0x020f2080() __asm__("sub_020F2080");


uint _fmul(uint, uint);
int _ffix(uint);
unsigned long long _f2d(uint);
unsigned long long _dsub(unsigned long long, unsigned long long);
uint _d2f(unsigned long long);

void ov96_021FB0F4(int param_1)
{
    unsigned char *p;
    unsigned char *tbl;
    unsigned char *base;
    unsigned char *spr;
    unsigned char *mp;
    int k;
    int E;
    int idx;
    uint sgn;
    uint x;
    uint off;
    uint t;
    uint rot;
    uint r0v;
    uint shift;
    uint nib;
    uint packed;
    int sv[3];
    uint mv[3];
    unsigned long long d;
    int *scale;

    p = (unsigned char *)PokeathlonCourse_GetHeapAllocPtr4(param_1);
    tbl = (unsigned char *)ov96_021E8A20((unsigned char *)PokeathlonCourse_GetDataCopyArea(param_1) + 0xf0);
    if (p[0x3c7] != 0) {
        *(ushort *)(p + 0x3c4) = *(ushort *)(p + 0x3c4) + 1;
    }
    if (p[0x3c6] == 0) {
        if (*(ushort *)(p + 0x3c4) >= 0x96) {
            *(ushort *)(p + 0x3c4) = 0;
            p[0x3c6] = 1;
            ov96_021FAFFC(p, tbl);
            for (k = 0; k < 3; k++) {
                base = p + k * 0x6c;
                spr = (unsigned char *)ov96_021EB5B8(*(uint *)(base + 0x128));
                ov96_021EB52C(*(uint *)(base + 0x128), 1, 1);
                E = ov96_021E5F24(param_1);
                idx = k + 3 * E;
                sgn = (uint)idx >> 31;
                x = (uint)idx + sgn;
                off = (x << 23) >> 24;
                E = ov96_021E5F24(param_1);
                idx = k + 3 * E;
                sgn = (uint)idx >> 31;
                t = ((uint)idx << 31) - sgn;
                rot = (t >> 31) | (t << 1);
                r0v = sgn + rot;
                shift = ((r0v << 24) >> 24) << 2;
                packed = tbl[0x1c + off];
                nib = (shift < 32) ? ((packed >> shift) & 0xf) : 0;
                if (nib == 0 || nib > 12) {
                    GF_AssertFail();
                }
                *(uint *)(base + 0x144) = 0x3fc00000;
                sv[0] = _ffix(_fmul(0x45800000, *(uint *)(base + 0x144)));
                sv[1] = _ffix(_fmul(0x45800000, *(uint *)(base + 0x144)));
                sv[2] = _ffix(_fmul(0x45800000, *(uint *)(base + 0x144)));
                *(ushort *)(base + 0x148) = (ushort)nib;
                Sprite_SetAffineScale(spr, sv);
                Sprite_SetAnimCtrlSeq(spr, nib - 1);
            }
        }
    } else if (*(ushort *)(p + 0x3c4) >= 0x1e) {
        *(ushort *)(p + 0x3c4) = 0;
        ov96_021FAFFC(p, tbl);
        for (k = 0; k < 3; k++) {
            base = p + k * 0x6c;
            spr = (unsigned char *)ov96_021EB5B8(*(uint *)(base + 0x128));
            E = ov96_021E5F24(param_1);
            idx = k + 3 * E;
            sgn = (uint)idx >> 31;
            x = (uint)idx + sgn;
            off = (x << 23) >> 24;
            E = ov96_021E5F24(param_1);
            idx = k + 3 * E;
            sgn = (uint)idx >> 31;
            t = ((uint)idx << 31) - sgn;
            rot = (t >> 31) | (t << 1);
            r0v = sgn + rot;
            shift = ((r0v << 24) >> 24) << 2;
            packed = tbl[0x1c + off];
            nib = (shift < 32) ? ((packed >> shift) & 0xf) : 0;
            if (nib == 0 || nib > 12) {
                GF_AssertFail();
            }
            if (base[0xe8] != 0) {
                mp = (unsigned char *)Sprite_GetMatrixPtr(spr);
                mv[0] = ((uint *)mp)[0];
                mv[1] = 0x138000;
                mv[2] = ((uint *)mp)[2];
                Sprite_SetMatrix(spr, mv);
                Sprite_SetAnimCtrlSeq(spr, nib + 0xb);
            }
            if ((int)nib != (int)*(short *)(base + 0x148)) {
                *(ushort *)(base + 0x148) = (ushort)nib;
                if (base[0xe8] == 0) {
                    *(uint *)(base + 0x144) = 0x3fc00000;
                    sv[0] = _ffix(_fmul(0x45800000, *(uint *)(base + 0x144)));
                    sv[1] = _ffix(_fmul(0x45800000, *(uint *)(base + 0x144)));
                    sv[2] = _ffix(_fmul(0x45800000, *(uint *)(base + 0x144)));
                    Sprite_SetAffineScale(spr, sv);
                    Sprite_SetAnimCtrlSeq(spr, nib - 1);
                }
            }
        }
    }
    for (k = 0; k < 3; k++) {
        base = p + k * 0x6c;
        spr = (unsigned char *)ov96_021EB5B8(*(uint *)(base + 0x128));
        scale = (int *)Sprite_GetScalePtr(spr);
        if (*scale > 0x1000) {
            d = _f2d(*(uint *)(base + 0x144));
            d = _dsub(d, 0x3FB999999999999AULL);
            *(uint *)(base + 0x144) = _d2f(d);
        } else {
            *(uint *)(base + 0x144) = 0x3f800000;
        }
        sv[0] = _ffix(_fmul(0x45800000, *(uint *)(base + 0x144)));
        sv[1] = _ffix(_fmul(0x45800000, *(uint *)(base + 0x144)));
        sv[2] = _ffix(_fmul(0x45800000, *(uint *)(base + 0x144)));
        Sprite_SetAffineScale(spr, sv);
    }
    ov96_021FB994(p);
}
