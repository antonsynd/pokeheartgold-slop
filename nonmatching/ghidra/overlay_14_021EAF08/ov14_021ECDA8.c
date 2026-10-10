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
typedef void code(void);
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
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov14_021F685C();
undefined4 ov14_021F08F0();
undefined4 GetMonData();
undefined4 PlaySE();
undefined4 func_0x02078068() __asm__("sub_02078068");
undefined4 ov14_021E6070();
undefined4 Party_GetMonByIndex();
undefined4 ov14_021E765C();
undefined4 ov14_021F57B8();
undefined4 ov14_021F67B0();
undefined4 ov14_021E637C();
undefined4 ov14_021E6480();
undefined4 func_0x02019f7c() __asm__("sub_02019F7C");
undefined4 ov14_021E6548();
undefined4 ov14_021E7588();
undefined4 GridInputHandler_SetButtonInputMode();

undefined4 ov14_021ECDA8(int param_1)

{
  undefined2 uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;

  iVar6 = *(int *)(*(int *)(param_1 + 0x34) + 0xc);
  uVar5 = *(uint *)(iVar6 + 0xe8);
  uVar4 = *(uint *)(iVar6 + 0xec);
  PlaySE(0x5ea);
  ov14_021E637C(param_1);
  uVar2 = uVar5 & 0x80;
  if (uVar2 == 0) {
    ov14_021E6548(param_1,*(undefined4 *)(iVar6 + 0xe4),*(undefined4 *)(iVar6 + 0xe8));
  }
  ov14_021F08F0(param_1);
  func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),*(undefined1 *)(param_1 + 0x21));
  if (*(char *)(param_1 + 0x24) != '\0') {
    ov14_021F57B8(param_1);
  }
  iVar6 = ov14_021E6070(param_1,*(undefined1 *)(param_1 + 0x21),0xac,0);
  if (iVar6 == 0) {
    ov14_021E765C(param_1);
  }
  else if (uVar5 == 0xff) {
    uVar2 = (uint)*(byte *)(param_1 + 0x21);
    if ((0x1d < uVar2) && (uVar4 != uVar2)) {
      uVar3 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 8),uVar2 - 0x1e);
      uVar1 = GetMonData(uVar3,6,0);
      iVar6 = func_0x02078068(uVar1);
      if (iVar6 == 1) {
        PlaySE(0x5f3);
        ov14_021F685C(param_1,0,6,0x25);
        *(undefined4 *)(param_1 + 0x30) = 0x2c;
        return 6;
      }
      iVar6 = GetMonData(uVar3,0xa2,0);
      if (iVar6 != 0) {
        PlaySE(0x5f3);
        ov14_021F685C(param_1,0,5,0x25);
        *(undefined4 *)(param_1 + 0x30) = 0x2c;
        return 6;
      }
      iVar6 = ov14_021E6480(param_1,uVar2 - 0x1e);
      if (iVar6 == 0) {
        PlaySE(0x5f3);
        ov14_021F67B0(param_1,6,0x25);
        *(undefined4 *)(param_1 + 0x30) = 0x2c;
        return 6;
      }
    }
    if (((uVar4 != 0xff) && ((uVar4 & 0x80) != 0)) &&
       (iVar6 = func_0x020f2998(*(undefined1 *)(param_1 + 0x25),6),
       (uint)*(byte *)(param_1 + 0x1f) != (uVar4 ^ 0x80) + iVar6 * 6)) {
      if (*(byte *)(param_1 + 0x21) < 0x1e) {
        ov14_021F685C(param_1,0,4,0x25);
      }
      else {
        iVar6 = ov14_021E6480(param_1,*(byte *)(param_1 + 0x21) - 0x1e);
        if (iVar6 == 1) {
          ov14_021F685C(param_1,0,4,0x25);
        }
        else {
          ov14_021F67B0(param_1,6,0x25);
        }
      }
      PlaySE(0x5f3);
      *(undefined4 *)(param_1 + 0x30) = 0x2c;
      return 6;
    }
  }
  else if (uVar2 != 0) {
    ov14_021E7588(param_1,*(undefined1 *)(param_1 + 0x21));
  }
  GridInputHandler_SetButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),1);
  return 0x29;
}

