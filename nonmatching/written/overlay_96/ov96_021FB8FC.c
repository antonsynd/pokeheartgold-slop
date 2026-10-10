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
undefined4 func_0x020f2080() __asm__("sub_020F2080");
undefined4 func_0x020f2da0() __asm__("sub_020F2DA0");
undefined4 func_0x020f0c18() __asm__("sub_020F0C18");
undefined4 func_0x020f0bd8() __asm__("sub_020F0BD8");
undefined4 func_0x020f09a4() __asm__("sub_020F09A4");
undefined4 func_0x020f0c54() __asm__("sub_020F0C54");
undefined4 func_0x020f116c() __asm__("sub_020F116C");
undefined4 ov96_021EB10C();


unsigned long long _dflt(int);
unsigned long long _dfltu(uint);
unsigned long long _dmul(unsigned long long, unsigned long long);
unsigned long long _dsub(unsigned long long, unsigned long long);
unsigned int _d2f(unsigned long long);
unsigned long long _f2d(uint);
unsigned long long _ddiv(unsigned long long, unsigned long long);

void ov96_021FB8FC(undefined4 *param_1, int param_2)
{
    unsigned char *p;
    unsigned long long d;
    uint f;
    uint fsel;
    register uint a0 __asm__("r0");
    register uint a1 __asm__("r1");

    p = (unsigned char *)param_1;
    if (param_2 != 0) {
        d = _dflt((int)(*(ushort *)(p + 0x38) - (byte)(p[0xc] - 1)));
        d = _dmul(0x4024000000000000ULL, d);
        d = _dsub(0x4059000000000000ULL, d);
        f = _d2f(d);
    } else {
        d = _dfltu((byte)(p[0xc] - 1));
        d = _dmul(0x4024000000000000ULL, d);
        d = _dsub(0x4059000000000000ULL, d);
        f = _d2f(d);
        /* _fls(f, 0.0f) sets the carry flag; "bhs" skips the 10.0f assignment when it is clear. */
        a0 = f;
        a1 = 0;
        __asm__ volatile("bl _fls\n\t"
                         "movs %0, #0\n\t"
                         "bhs 1f\n\t"
                         "movs %0, #1\n"
                         "1:"
                         : "=&l"(fsel), "+r"(a0), "+r"(a1)
                         :
                         : "r2", "r3", "r12", "lr", "cc", "memory");
        if (fsel != 0) {
            f = 0x41200000;
        }
    }
    d = _f2d(f);
    d = _ddiv(d, 0x4059000000000000ULL);
    f = _d2f(d);
    ov96_021EB10C(*(undefined4 *)p, f, f);
}
