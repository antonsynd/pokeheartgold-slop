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
undefined4 Sprite_SetAnimCtrlSeq(void *, int);
undefined4 ov96_021EAC0C();
undefined4 sub_020061D0(int, int);
undefined4 sub_0200606C(unsigned short, int);
undefined4 ov96_021EB5B8();
extern undefined ov96_0221DC2C;
extern undefined ov96_0221DC28;
undefined4 ov96_021E5F24(void *);
undefined4 GF_AssertFail(void);
undefined4 ov96_021E8228();


unsigned long long _f2d(uint);
uint _fadd(uint, uint);
extern uint ov96_0221C444;

void ov96_021FBCB8(int param_1, int param_2)
{
    unsigned char *p;
    unsigned char *spr;
    uint cv;
    uint less;
    uint f;
    uint E;
    unsigned long long d;
    register uint a0 __asm__("r0");
    register uint a1 __asm__("r1");
    register uint a2 __asm__("r2");
    register uint a3 __asm__("r3");

    p = (unsigned char *)param_2;
    if (p[9] < 4) {
        spr = (unsigned char *)ov96_021EB5B8(*(uint *)(p + 0x4c));
        p[9] = (byte)(p[9] + 1);
        cv = p[9];
        if (cv == 1) {
            sub_0200606C(0x8a6, (byte)(&ov96_0221DC2C)[p[0x18]]);
            sub_020061D0((byte)(&ov96_0221DC2C)[p[0x18]], (char)(&ov96_0221DC28)[p[0x18]]);
            ov96_021EAC0C(*(uint *)(p + 0x24), 5);
            Sprite_SetAnimCtrlSeq(spr, 1);
        } else if (cv == 4) {
            sub_0200606C(0x8a9, (byte)(&ov96_0221DC2C)[p[0x18]]);
            sub_020061D0((byte)(&ov96_0221DC2C)[p[0x18]], (char)(&ov96_0221DC28)[p[0x18]]);
            ov96_021EAC0C(*(uint *)(p + 0x24), 6);
            Sprite_SetAnimCtrlSeq(spr, 2);
        } else if ((byte)(cv - 2) <= 1) {
            sub_0200606C(0x8a7, (byte)(&ov96_0221DC2C)[p[0x18]]);
            sub_020061D0((byte)(&ov96_0221DC2C)[p[0x18]], (char)(&ov96_0221DC28)[p[0x18]]);
        }
        d = _f2d(*(uint *)(p + 0xc));
        a0 = (uint)d;
        a1 = (uint)(d >> 32);
        a2 = 0;
        a3 = 0x40240000;
        /* _dls(d, 10.0): "bhs" skips the fadd when the carry flag is set (not less). */
        __asm__ volatile("bl _dls\n\t"
                         "movs %0, #0\n\t"
                         "bhs 1f\n\t"
                         "movs %0, #1\n"
                         "1:"
                         : "=&l"(less), "+r"(a0), "+r"(a1), "+r"(a2), "+r"(a3)
                         :
                         : "r12", "lr", "cc", "memory");
        if (less != 0) {
            f = _fadd(*(uint *)(p + 0x50), ((uint *)&ov96_0221C444)[p[9] - 1]);
            *(uint *)(p + 0xc) = f;
        } else {
            GF_AssertFail();
        }
    }
    E = ov96_021E5F24(param_1);
    ov96_021E8228(param_1, (byte)E, p[0x18], 6, 1);
}
