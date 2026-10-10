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
undefined4 ov113_021E6AE8();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov113_021E6238();
undefined4 ReadMsgDataIntoString();
undefined4 ov113_021E629C();

void ov113_021E6084(int param_1,int param_2)

{
  int iVar1;
  short sVar2;
  int iVar3;
  undefined4 uStack_28;

  ov113_021E6238(param_1,param_1 + 0x140,6);
  ov113_021E6238(param_1,param_1 + 0x110,2);
  iVar1 = 0;
  sVar2 = 0;
  uStack_28 = param_1;
  do {
    iVar3 = param_2 * 0xe + iVar1;
    if (iVar3 < (int)(uint)*(byte *)(param_1 + 0x1f)) {
      ManagedSprite_SetDrawFlag(*(undefined4 *)(uStack_28 + 0xc4),1);
      ov113_021E6AE8(param_1,iVar1,*(undefined1 *)(param_1 + iVar3 + 0x20));
      ReadMsgDataIntoString
                (*(undefined4 *)(param_1 + 0x44),*(byte *)(param_1 + iVar3 + 0x20) + 0x14,
                 *(undefined4 *)(param_1 + 0x50));
      if (iVar1 < 7) {
        ov113_021E629C(param_1 + 0x78,*(undefined4 *)(param_1 + 0x50),0x30,sVar2);
      }
      else {
        ov113_021E629C(param_1 + 0x88,*(undefined4 *)(param_1 + 0x50),0x30,sVar2 + -0xa8);
      }
    }
    else {
      ManagedSprite_SetDrawFlag(*(undefined4 *)(uStack_28 + 0xc4),0);
    }
    iVar1 = iVar1 + 1;
    uStack_28 = uStack_28 + 4;
    sVar2 = sVar2 + 0x18;
  } while (iVar1 < 0xe);
  return;
}

