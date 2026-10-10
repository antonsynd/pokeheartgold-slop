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
undefined4 CopyWindowToVram();
undefined4 ov52_021E9124();
undefined4 ov52_021E8FAC();
extern undefined ov52_021E95A0;

void ov52_021E9158(undefined4 param_1,int param_2,byte *param_3,int param_4)

{
  byte bVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  byte *pbVar5;
  int iStack_30;
  int iStack_20;
  int iStack_1c;
  int iStack_18;

  bVar2 = false;
  iStack_20 = 0;
  iVar4 = param_2;
  pbVar5 = param_3;
  do {
    if (*(byte *)(iVar4 + 0x10) >> 4 != 0) {
      if (*(short *)(pbVar5 + 2) != 0) {
        iStack_18 = *pbVar5 - 0x20;
        iStack_1c = pbVar5[1] - 0x48;
      }
      iVar3 = 0;
      bVar1 = *(byte *)(iVar4 + 0x10) >> 4;
      if ((bVar1 != 0) && (bVar2 = true, bVar1 != 0)) {
        do {
          ov52_021E8FAC(param_1,&ov52_021E95A0 + (*(byte *)(iVar4 + 0x10) & 0xf) * 0x10,
                        *(byte *)(iVar4 + iVar3) - 0x20,*(byte *)(iVar4 + iVar3 + 8) - 0x48,
                        &iStack_18,&iStack_1c,iVar3,*(undefined2 *)(pbVar5 + 2));
          iVar3 = iVar3 + 1;
        } while (iVar3 < (int)(uint)(*(byte *)(iVar4 + 0x10) >> 4));
      }
    }
    iVar4 = iVar4 + 0x11;
    iStack_20 = iStack_20 + 1;
    pbVar5 = pbVar5 + 4;
  } while (iStack_20 < 5);
  if ((bVar2) && (param_4 != 0)) {
    CopyWindowToVram(param_1);
  }
  ov52_021E9124(param_2,param_3);
  iVar4 = 0;
  iStack_30 = param_2;
  do {
    iVar4 = iVar4 + 1;
    *(byte *)(iStack_30 + 0x10) = *(byte *)(iStack_30 + 0x10) & 0xf;
    iStack_30 = iStack_30 + 0x11;
  } while (iVar4 < 5);
  return;
}

