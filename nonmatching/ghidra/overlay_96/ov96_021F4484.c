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
void * sub_02014450(int, int, int);
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 GetMonSpriteCharAndPlttNarcIdsEx(void *, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned int);
undefined4 ov96_021E6168();
void * sub_0201457C(int, int, int, unsigned int, int, int, int);

void ov96_021F4484(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 extraout_r1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined2 uStack_38;
  ushort uStack_36;
  undefined1 uStack_32;
  undefined1 uStack_31;
  undefined4 uStack_2c;
  undefined2 uStack_28;
  undefined2 uStack_26;
  undefined2 uStack_24;
  undefined4 uStack_18;

  iVar3 = 0;
  puVar4 = param_1;
  uStack_18 = param_4;
  do {
    uVar1 = func_0x020f2998(iVar3,3);
    func_0x020f2998(iVar3,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
    ov96_021E6168(param_1[1],uVar1,extraout_r1,&uStack_38);
    GetMonSpriteCharAndPlttNarcIdsEx
              (&uStack_28,uStack_38,uStack_31,2,uStack_32,uStack_36 & 0xff,uStack_2c);
    uVar1 = sub_0201457C(uStack_28,uStack_26,*param_1,uStack_2c,0,2,uStack_38);
    puVar4[0x26] = uVar1;
    uVar1 = sub_02014450(uStack_28,uStack_24,*param_1);
    puVar2 = puVar4 + 0x27;
    iVar3 = iVar3 + 1;
    puVar4 = puVar4 + 2;
    *puVar2 = uVar1;
  } while (iVar3 < 0xc);
  return;
}

