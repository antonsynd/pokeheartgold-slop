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
undefined4 ov96_021E5F24();
undefined4 ov96_02219EE0();
undefined4 ov96_02219F20();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov96_02219DA8();
undefined4 ManagedSprite_GetPositionXYWithSubscreenOffset();
undefined4 GF_AssertFail();

undefined4 ov96_02219794(undefined4 *param_1,undefined4 param_2,int param_3)

{
  char cVar1;
  undefined1 uVar2;
  uint extraout_r1;
  int iVar3;
  undefined4 uVar4;
  short sStack_1c;
  short sStack_1a;
  short sStack_18;
  short sStack_16;

  uVar2 = ov96_021E5F24(*param_1);
  func_0x020f2998(param_3 + 1,3);
  cVar1 = *(char *)(param_1 + 0x30);
  if (cVar1 == '\0') {
    ManagedSprite_GetPositionXYWithSubscreenOffset(param_1[0x27],&sStack_16,&sStack_18,0x1e0000);
    if (sStack_18 < 0xd8) {
      iVar3 = 0x110 - sStack_18;
      if (iVar3 < 0) {
        iVar3 = -iVar3;
      }
      sStack_18 = sStack_18 + (short)((uint)(iVar3 << 0xe) >> 0x10);
      if (0xd8 < sStack_18) {
        sStack_18 = 0xd8;
      }
      ov96_02219F20(param_1,0xf,(int)sStack_16,(int)sStack_18);
    }
    else {
      sStack_16 = 0x28;
      sStack_18 = -0x28;
      ov96_02219F20(param_1,0xf);
      ov96_02219DA8(*param_1,param_1[1],param_1[0x27],uVar2,param_3);
      ov96_02219EE0(param_1,extraout_r1 & 0xff);
      *(char *)(param_1 + 0x30) = *(char *)(param_1 + 0x30) + '\x01';
    }
  }
  else if (cVar1 == '\x01') {
    ManagedSprite_GetPositionXYWithSubscreenOffset(param_1[0x26],&sStack_1a,&sStack_1c,0x1e0000);
    iVar3 = 0x88 - sStack_1c;
    if (iVar3 < 0) {
      iVar3 = -iVar3;
    }
    iVar3 = (int)((iVar3 * 3 + ((uint)(iVar3 * 3 >> 1) >> 0x1e)) * 0x4000) >> 0x10;
    if (sStack_1c < 0x89) {
      if (iVar3 == 0) {
        iVar3 = 1;
      }
      sStack_1c = sStack_1c + (short)iVar3;
      ov96_02219F20(param_1,0xe,(int)sStack_1a,(int)sStack_1c);
      ManagedSprite_GetPositionXYWithSubscreenOffset(param_1[0x27],&sStack_1a,&sStack_1c,0x1e0000);
      sStack_1c = sStack_1c + (short)iVar3;
      ov96_02219F20(param_1,0xf,(int)sStack_1a,(int)sStack_1c);
    }
    else {
      uVar4 = param_1[0x26];
      param_1[0x26] = param_1[0x27];
      param_1[0x27] = uVar4;
      uVar4 = param_1[0x28];
      param_1[0x28] = param_1[0x29];
      param_1[0x29] = uVar4;
      ov96_02219F20(param_1,0xe,0x28,0x30);
      ov96_02219F20(param_1,0xf,0x28,0x88);
      *(char *)(param_1 + 0x30) = *(char *)(param_1 + 0x30) + '\x01';
    }
  }
  else {
    if (cVar1 == '\x02') {
      *(undefined1 *)(param_1 + 0x30) = 0;
      return 1;
    }
    GF_AssertFail();
  }
  return 0;
}

