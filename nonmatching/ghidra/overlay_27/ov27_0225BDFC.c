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
undefined4 String_Delete();
undefined4 GearPhoneRingManager_IsRinging();
undefined4 func_0x02024950() __asm__("sub_02024950");
undefined4 ov27_0225B630();
undefined4 ov27_0225BEB0();
undefined4 func_0x02251e74() __asm__("sub_02251E74");
undefined4 ov27_0225BB38();
undefined4 FontID_String_GetWidth();
undefined4 AddWindowParameterized();

void ov27_0225BDFC(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;

  iVar1 = GearPhoneRingManager_IsRinging(param_1[1]);
  if (param_1[7] == 0) {
    if (iVar1 == 1) {
      uVar2 = func_0x02251e74(param_1[1],8);
      iVar1 = FontID_String_GetWidth(0,uVar2,0);
      uVar3 = ((int)(iVar1 + ((uint)(iVar1 >> 2) >> 0x1d)) >> 3) + 2;
      if (9 < (int)uVar3) {
        uVar3 = 9;
      }
      AddWindowParameterized(*param_1,param_1 + 3,5,0xb,0x13,uVar3 & 0xff,2,4,0xc0);
      ov27_0225B630(param_1 + 3,1);
      ov27_0225BB38(param_1 + 3,uVar2,1);
      String_Delete(uVar2);
      func_0x02024950(param_1[2],5);
      param_1[7] = 1;
      return;
    }
  }
  else {
    if (iVar1 != 0) {
      func_0x02024950(param_1[2],5);
      return;
    }
    func_0x02024950(param_1[2],0);
    ov27_0225BEB0(param_1);
    param_1[7] = 0;
  }
  return;
}

