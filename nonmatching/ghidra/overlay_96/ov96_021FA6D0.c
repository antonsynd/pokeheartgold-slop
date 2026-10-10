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
undefined4 System_GetTouchNew();
undefined4 ov96_021FB784();
undefined4 ov96_021E8228();
undefined4 ov96_021FA34C();
extern int iRam04001018 __asm__("sub_04001018");
extern ushort uRam021d116c __asm__("sub_021D116C");
extern ushort uRam021d116e __asm__("sub_021D116E");
extern uint uRam04001010 __asm__("sub_04001010");
extern int iRam04000018 __asm__("sub_04000018");
extern int iRam04001014 __asm__("sub_04001014");
extern int iRam04000010 __asm__("sub_04000010");
extern int iRam04000014 __asm__("sub_04000014");

bool ov96_021FA6D0(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  byte bVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  int iStack_28;
  int aiStack_20 [3];

  iStack_28 = -1;
  aiStack_20[0] = -1;
  aiStack_20[1] = 0;
  aiStack_20[2] = param_4;
  iVar3 = System_GetTouchNew();
  if (iVar3 != 0) {
    uVar1 = ov96_021E5F24(param_1);
    ov96_021E8228(param_1,uVar1,3,0,1);
    iStack_28 = ov96_021FB784(param_2,uRam021d116c,uRam021d116e);
    if (iStack_28 < 3) {
      aiStack_20[0] = iStack_28;
    }
  }
  bVar2 = 0;
  iVar3 = 0;
  iVar5 = param_2 + 0xe0;
  do {
    piVar4 = (int *)0x0;
    if (*(char *)(iVar5 + 8) == '\0') {
      if (iStack_28 == iVar3) {
        piVar4 = aiStack_20;
      }
    }
    else {
      bVar2 = bVar2 + 1;
    }
    ov96_021FA34C(param_1,param_2,iVar5,piVar4);
    iVar3 = iVar3 + 1;
    iVar5 = iVar5 + 0x6c;
  } while (iVar3 < 3);
  iRam04000010 = (*(ushort *)(param_2 + 0xe6) & 0x1ff) << 0x10;
  iRam04000014 = (*(ushort *)(param_2 + 0x152) & 0x1ff) << 0x10;
  iRam04000018 = (*(ushort *)(param_2 + 0x1be) & 0x1ff) << 0x10;
  uRam04001010 = (uint)*(ushort *)(param_2 + 0xe4) * 0x10000 & 0x1ff0000;
  iRam04001014 = (*(ushort *)(param_2 + 0x150) & 0x1ff) << 0x10;
  iRam04001018 = (*(ushort *)(param_2 + 0x1bc) & 0x1ff) << 0x10;
  return 2 < bVar2;
}

