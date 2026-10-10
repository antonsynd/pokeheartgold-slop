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
undefined4 sub_0208A520();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 sub_0208B780();
undefined4 Party_GetMonAprijuiceModifiers();
undefined4 CalcBoxmonPokeathlonStars();
undefined4 sub_0208B714();
undefined4 CalcBoxMonPokeathlonPerformance();

void sub_0208B89C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  ushort uStack_34;
  undefined1 uStack_32;
  undefined1 uStack_31;
  undefined1 uStack_30;
  undefined1 uStack_2f;
  undefined1 uStack_2e;
  char cStack_2c;
  char cStack_2b;
  char cStack_2a;
  char cStack_29;
  char cStack_28;
  ushort auStack_26 [2];
  ushort uStack_22;
  ushort uStack_1e;
  ushort uStack_1a;
  ushort uStack_16;
  undefined4 uStack_10;
  
  uStack_10 = param_4;
  if ((*(char *)(param_1 + 0x7bc) == '\x02') && (*(int *)(*(int *)(param_1 + 0x22c) + 0x34) != 0)) {
    uVar1 = sub_0208A520();
    func_0x020d4994(&cStack_2c,0,5);
    CalcBoxMonPokeathlonPerformance(uVar1,auStack_26);
    puVar2 = *(undefined4 **)(param_1 + 0x22c);
    if (*(char *)((int)puVar2 + 0x11) == '\x01') {
      Party_GetMonAprijuiceModifiers(*puVar2,&cStack_2c,*(undefined1 *)(puVar2 + 5));
    }
    CalcBoxmonPokeathlonStars(&uStack_34,uVar1,&cStack_2c,0x13);
    sub_0208B780(param_1 + 0x404,0x4f,(uStack_16 & 0x3f) >> 3,(uStack_34 & 0x7fff) >> 0xc,uStack_2e,
                 (int)cStack_28,0x68);
    sub_0208B780(param_1 + 0x404,0x54,(auStack_26[0] & 0x3f) >> 3,uStack_34 & 7,uStack_32,
                 (int)cStack_2c,0x69);
    sub_0208B780(param_1 + 0x404,0x59,(uStack_1e & 0x3f) >> 3,(uStack_34 & 0x1ff) >> 6,uStack_30,
                 (int)cStack_2a,0x6a);
    sub_0208B780(param_1 + 0x404,0x5e,(uStack_22 & 0x3f) >> 3,(uStack_34 & 0x3f) >> 3,uStack_31,
                 (int)cStack_2b,0x6b);
    sub_0208B780(param_1 + 0x404,99,(uStack_1a & 0x3f) >> 3,(uStack_34 & 0xfff) >> 9,uStack_2f,
                 (int)cStack_29,0x6c);
    return;
  }
  sub_0208B714(param_1);
  return;
}

