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
undefined4 func_0x020cbe9c() __asm__("sub_020CBE9C");
undefined4 func_0x020ccf80() __asm__("sub_020CCF80");
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 func_0x020ccdac() __asm__("sub_020CCDAC");
undefined4 ov96_0220404C();
undefined4 MTX_RotY43_();
undefined4 func_0x020f22dc() __asm__("sub_020F22DC");
extern undefined ov96_0221C98C;
extern undefined FX_SinCosTable_;

uint ov96_022031A8(undefined4 param_1,int param_2,undefined4 param_3,int param_4,int *param_5)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined *puVar4;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined1 auStack_78 [12];
  int iStack_6c;
  int iStack_68;
  int iStack_64;
  int aiStack_60 [3];
  undefined1 auStack_54 [48];
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  
  iStack_18 = param_4;
  ov96_0220404C(param_3,param_4 + 0x120,&uStack_7c,&uStack_80);
  func_0x020f22dc(0x45800000,uStack_7c);
  iStack_24 = func_0x020f2104();
  func_0x020f22dc(0x45800000,uStack_80);
  iStack_1c = func_0x020f2104();
  iStack_20 = 0;
  if (param_2 != 0) {
    aiStack_60[1] = 0;
    aiStack_60[0] = iStack_24 + -0x21000;
    aiStack_60[2] = iStack_1c + -0x21000;
    iVar1 = (param_2 << 0xe) >> 4;
    MTX_RotY43_(auStack_54,(int)*(short *)(&FX_SinCosTable_ + iVar1 * 4),
                (int)*(short *)(&FX_SinCosTable_ + (iVar1 * 2 + 1) * 2));
    func_0x020cbe9c(aiStack_60,auStack_54,&iStack_6c);
    iStack_6c = iStack_6c + 0x21000;
    iStack_64 = iStack_64 + 0x21000;
    iStack_20 = iStack_68;
    iStack_24 = iStack_6c;
    iStack_1c = iStack_64;
  }
  *param_5 = iStack_24;
  param_5[1] = iStack_20;
  param_5[2] = iStack_1c;
  uVar3 = param_2 * 3;
  iVar1 = (param_2 + 1) * 3;
  if ((int)uVar3 < iVar1) {
    puVar4 = &ov96_0221C98C + param_2 * 0x24;
    do {
      func_0x020ccdac(puVar4,&iStack_24,auStack_78);
      iVar2 = func_0x020ccf80(auStack_78);
      if (iVar2 < 0x4001) {
        return uVar3 & 0xff;
      }
      uVar3 = uVar3 + 1;
      puVar4 = puVar4 + 0xc;
    } while ((int)uVar3 < iVar1);
  }
  return 0xc;
}

