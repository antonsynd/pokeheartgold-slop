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
undefined4 ov14_021F34C8();
undefined4 ov14_021F685C();
undefined4 GetMonData();
undefined4 func_0x02078068() __asm__("sub_02078068");
undefined4 ov14_021F3F6C();
undefined4 Party_GetMonByIndex();
undefined4 PCStorage_CountEmptySpotsInBox();
undefined4 ov14_021E84A4();
undefined4 ov14_021F08BC();
undefined4 ov14_021E6480();
undefined4 ov14_021F3190();
undefined4 ov14_021E8544();
undefined4 ov14_021F6928();
undefined4 ov14_021F3488();
undefined4 ov14_021F0234();
undefined4 ov14_021E8314();

void ov14_021F0660(int param_1,int param_2)

{
  undefined2 uVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  
  *(char *)(param_1 + 0x21) = (char)param_2;
  uVar4 = 0x1e;
  do {
    if (uVar4 == *(byte *)(param_1 + 0x21)) {
      ov14_021F3190(*(undefined4 *)(param_1 + 0x34),uVar4,0);
    }
    else {
      ov14_021F3190(*(undefined4 *)(param_1 + 0x34),uVar4,1);
    }
    uVar4 = uVar4 + 1;
  } while (uVar4 < 0x24);
  ov14_021F3F6C(param_1);
  ov14_021F3488(param_1,2,1);
  ov14_021F34C8(*(undefined4 *)(param_1 + 0x34),*(undefined1 *)(param_1 + 0x21),0);
  ov14_021F685C(param_1,*(undefined1 *)(param_1 + 0x21),1,0x27);
  uVar2 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 8),param_2 + -0x1e);
  iVar3 = ov14_021E6480(param_1);
  if (iVar3 == 0) {
    ov14_021F6928(param_1,0x28,8);
  }
  else {
    uVar1 = GetMonData(uVar2,6,0);
    iVar3 = func_0x02078068(uVar1);
    if (iVar3 == 1) {
      ov14_021F6928(param_1,0x28,6);
    }
    else {
      iVar3 = GetMonData(uVar2,0xa2,0);
      if (iVar3 == 0) {
        iVar3 = PCStorage_CountEmptySpotsInBox
                          (*(undefined4 *)(param_1 + 4),*(undefined1 *)(param_1 + 0x1f));
        if (iVar3 == 0) {
          ov14_021F6928(param_1,0x28,2);
        }
        else {
          ov14_021F6928(param_1,0x28,0);
        }
      }
      else {
        ov14_021F6928(param_1,0x28,7);
      }
    }
  }
  ov14_021F08BC(param_1);
  ov14_021E84A4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
  iVar3 = ov14_021E8544(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
  if (iVar3 == 0) {
    ov14_021E8314(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
  }
  *(undefined1 *)(param_1 + 0x22) = 1;
  ov14_021F0234(param_1,0x21e9a25,0x6e);
  return;
}

