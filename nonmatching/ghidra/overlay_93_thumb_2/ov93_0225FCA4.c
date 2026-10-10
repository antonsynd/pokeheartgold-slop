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
undefined4 func_0x020ccbb0() __asm__("sub_020CCBB0");
undefined4 ScheduleSetBgAffineScale();
undefined4 ov93_0225FD8C();
undefined4 ScheduleSetBgPosText();
undefined4 LCRandom();

void ov93_0225FCA4(undefined4 param_1,int *param_2,undefined4 param_3)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iStack_1c;
  int iStack_18;
  
  if (*param_2 != 0) {
    ov93_0225FD8C(param_3,param_2[1],param_2[2],&iStack_18,&iStack_1c);
    if (iStack_18 == 0x1000) {
      iVar6 = 0;
    }
    else if (iStack_18 < 0x1000) {
      iVar6 = 0x80 - ((int)(iStack_18 * 0x80 + ((uint)(iStack_18 * 0x80 >> 0xb) >> 0x14)) >> 0xc);
    }
    else {
      iVar6 = (iStack_18 + -0x1000) * 0x80;
      iVar6 = -((int)(iVar6 + ((uint)(iVar6 >> 0xb) >> 0x14)) >> 0xc);
    }
    if (iStack_1c == 0x1000) {
      iVar5 = 0;
    }
    else if (iStack_1c < 0x1000) {
      iVar5 = 0x80 - ((int)(iStack_1c * 0x80 + ((uint)(iStack_1c * 0x80 >> 0xb) >> 0x14)) >> 0xc);
    }
    else {
      iVar5 = (iStack_1c + -0x1000) * 0x80;
      iVar5 = -((int)(iVar5 + ((uint)(iVar5 >> 0xb) >> 0x14)) >> 0xc);
    }
    if (param_2[4] == 0) {
      iVar4 = 0;
    }
    else {
      uVar1 = LCRandom();
      iVar4 = (uVar1 & 7) + 1;
      if ((param_2[10] & 1U) != 0) {
        iVar4 = -iVar4;
      }
      param_2[10] = param_2[10] ^ 1;
    }
    uVar2 = func_0x020ccbb0(iStack_18);
    uVar3 = func_0x020ccbb0(iStack_1c);
    ScheduleSetBgAffineScale(param_1,7,3,uVar2);
    ScheduleSetBgAffineScale(param_1,7,6,uVar3);
    ScheduleSetBgPosText(param_1,7,0,iVar4 - iVar6);
    ScheduleSetBgPosText(param_1,7,3,0x27 - iVar5);
  }
  return;
}

