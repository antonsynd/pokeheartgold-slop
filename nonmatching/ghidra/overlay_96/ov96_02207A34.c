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
undefined4 func_0x020ccf80() __asm__("sub_020CCF80");
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 ov96_021E8228();
undefined4 ov96_022079B8();
undefined4 func_0x020cd224() __asm__("sub_020CD224");
undefined4 func_0x020f22dc() __asm__("sub_020F22DC");

undefined4 ov96_02207A34(undefined4 param_1,int param_2,int param_3,undefined4 param_4)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char cVar6;
  int iVar7;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  iVar2 = func_0x020ccf80(param_2 + 100);
  iVar3 = func_0x020ccf80(param_3 + 100);
  iVar7 = param_3;
  if ((iVar2 <= iVar3) && (iVar7 = param_2, param_2 = param_3, iVar3 <= iVar2)) {
    return 0;
  }
  if (*(char *)(param_2 + 0xb0) != *(char *)(iVar7 + 0xb0)) {
    return 0;
  }
  uVar4 = ov96_022079B8(param_2 + 100);
  if (*(byte *)(param_2 + 0xb0) == uVar4) {
    if (*(char *)(param_2 + 0xa6) != '\x01') {
      if (*(byte *)(iVar7 + 0xaa) < 2) {
        *(byte *)(param_2 + 0xaa) = *(char *)(param_2 + 0xaa) + *(byte *)(iVar7 + 0xaa);
        cVar6 = '\0';
        iVar2 = iVar7;
      }
      else {
        *(char *)(iVar7 + 0xaa) = *(char *)(iVar7 + 0xaa) + -2;
        cVar6 = *(char *)(param_2 + 0xaa) + '\x02';
        iVar2 = param_2;
      }
      *(char *)(iVar2 + 0xaa) = cVar6;
      if (9 < *(byte *)(param_2 + 0xaa)) {
        *(undefined1 *)(param_2 + 0xaa) = 9;
      }
      *(undefined1 *)(iVar7 + 0xa6) = 1;
      ov96_021E8228(param_1,*(uint *)(iVar7 + 0x98) & 0xff,*(undefined1 *)(iVar7 + 0xb1),1,1);
      bVar1 = *(byte *)(iVar7 + 0xb1);
      iVar2 = func_0x020ccf80(param_2 + 100);
      *(char *)(iVar7 + 0xa2) =
           (char)*(undefined4 *)(iVar7 + (uint)bVar1 * 0x14 + 0x18) +
           (char)((int)(iVar2 + ((uint)(iVar2 >> 0xb) >> 0x14)) >> 0xc);
      uStack_24 = 0;
      uStack_20 = 0;
      uStack_1c = 0;
      func_0x020f22dc(0x45800000,
                      *(undefined4 *)(param_2 + (uint)*(byte *)(param_2 + 0xb1) * 0x14 + 0x14));
      uVar5 = func_0x020f2104();
      func_0x020cd224(uVar5,param_2 + 100,&uStack_24,iVar7 + 100);
      *(undefined4 *)(param_2 + 100) = uStack_24;
      *(undefined4 *)(param_2 + 0x68) = uStack_20;
      *(undefined4 *)(param_2 + 0x6c) = uStack_1c;
      *(undefined1 *)(param_2 + 0xa4) = 0x12;
      *(undefined1 *)(iVar7 + 0xa4) = 6;
      return 1;
    }
    return 0;
  }
  return 0;
}

