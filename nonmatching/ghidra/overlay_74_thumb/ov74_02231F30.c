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
undefined4 ov74_02231E38();
undefined4 GetMonIconPaletteEx();
undefined4 GetMonIconNaixEx();
undefined4 ov74_02231764();
undefined4 func_0x020d48b4() __asm__("sub_020D48B4");
undefined4 TranslateAgbSpecies();
extern int iRam0223d338 __asm__("sub_0223D338");

void ov74_02231F30(undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,int param_5,
                  undefined4 param_6,undefined4 param_7)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int *piVar4;
  int iStack_1c;
  int iStack_18;
  
  piVar4 = (int *)(iRam0223d338 + param_4 * 0x20c);
  if (param_5 != 0) {
    iStack_18 = param_4;
    iVar1 = ov74_02231764();
    if (iVar1 == 0) {
      uVar2 = TranslateAgbSpecies(param_1);
    }
    else {
      uVar2 = 0;
    }
    uVar3 = GetMonIconNaixEx(uVar2,param_2,param_3);
    ov74_02231E38(uVar3,&iStack_1c,param_6,param_7);
    func_0x020d48b4(*(undefined4 *)(iStack_1c + 0x14),piVar4 + 3,0x200);
    *piVar4 = (param_4 * 0x10 + 100) * 0x20;
    piVar4[2] = param_5;
    iVar1 = GetMonIconPaletteEx(uVar2,param_3,param_2);
    piVar4[1] = iVar1 + 8;
    return;
  }
  piVar4[2] = 0;
  return;
}

