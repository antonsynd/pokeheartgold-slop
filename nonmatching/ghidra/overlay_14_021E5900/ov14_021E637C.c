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
undefined4 ov14_021E627C();
undefined4 Party_GetCount(void *);
undefined4 ov14_021E6184();
undefined4 PCStorage_SwapMonsInBoxByIndexPair(void *, unsigned int, unsigned int, unsigned int);
undefined4 ov14_021E61BC();
undefined4 ov14_021E6210();
undefined4 ov14_021E611C();
undefined4 ov14_021F4958();
undefined4 ov14_021E6070();
undefined4 ov14_021E6318();
undefined4 ov14_021E62C8();
undefined4 ov14_021F4A20();
undefined4 ov14_021E6464();

void ov14_021E637C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  
  iVar5 = *(int *)(*(int *)(param_1 + 0x34) + 0xc);
  if (*(int *)(iVar5 + 0xe4) != 0xff) {
    uVar1 = Party_GetCount(*(undefined **)(param_1 + 8));
    uVar4 = *(uint *)(iVar5 + 0xe8);
    if ((uVar4 & 0x80) != 0) {
      ov14_021E6464(param_1,uVar4);
      if (*(uint *)(iVar5 + 0xe4) < 0x1e) {
        ov14_021E62C8(param_1,iVar5);
        return;
      }
      ov14_021E6318(param_1,iVar5 + (*(uint *)(iVar5 + 0xe4) - 0x1e) * 0x20);
      return;
    }
    uVar3 = *(uint *)(iVar5 + 0xe4);
    if (uVar3 < 0x1e) {
      if (uVar4 < 0x1e) {
        PCStorage_SwapMonsInBoxByIndexPair
                  (*(undefined **)(param_1 + 4),(uint)*(byte *)(param_1 + 0x1f),uVar3,uVar4);
        ov14_021F4958(param_1,*(undefined1 *)(param_1 + 0x1f));
        ov14_021F4A20(param_1,*(undefined1 *)(param_1 + 0x1f));
        return;
      }
      if (uVar4 - 0x1e < uVar1) {
        ov14_021E611C(param_1,iVar5,iVar5 + 0x20);
        return;
      }
      ov14_021E6184(param_1,iVar5);
      return;
    }
    if (uVar4 < 0x1e) {
      iVar2 = ov14_021E6070(param_1,uVar4,0xac,0);
      if (iVar2 != 0) {
        ov14_021E611C(param_1,iVar5 + 0x20,iVar5);
        return;
      }
      ov14_021E61BC(param_1,iVar5 + (*(int *)(iVar5 + 0xe4) + -0x1e) * 0x20);
      return;
    }
    if (uVar4 - 0x1e < uVar1) {
      ov14_021E6210(param_1,iVar5);
      return;
    }
    ov14_021E627C(param_1,iVar5 + (uVar3 - 0x1e) * 0x20,uVar3 - 0x1e,uVar4 - 0x1e,param_4);
  }
  return;
}

