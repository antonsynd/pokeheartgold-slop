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
undefined4 func_0x020f1c54() __asm__("sub_020F1C54");
undefined4 func_0x0200ded0() __asm__("sub_0200DED0");
undefined4 func_0x0200e024() __asm__("sub_0200E024");
extern undefined ov95_021E75DC;
extern undefined ov95_021E7770;
extern undefined4 ov95_021E762C;
extern undefined4 ov95_021E76D0;

undefined4 ov95_021E60A4(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  undefined4 uVar5;
  int iVar6;
  char cVar7;
  char cVar8;

  piVar4 = (int *)(param_1 + 0x80);
  if (*(int *)(param_1 + 0x80) == 0) {
    iVar1 = *(int *)(param_1 + 0x84);
    if (iVar1 < 10) {
      iVar2 = (int)*(short *)(&ov95_021E75DC + iVar1 * 2 + param_2 * 0x14);
      iVar3 = (int)*(short *)(&ov95_021E762C + iVar1 * 2 + param_2 * 0x14);
      iVar6 = *(int *)(&ov95_021E76D0 + iVar1 * 4 + param_2 * 0x28);
      uVar5 = *(undefined4 *)(&ov95_021E7770 + iVar1 * 4 + param_2 * 0x28);
      cVar7 = iVar2 == 0xff;
      if ((bool)cVar7) {
        iVar2 = 0;
      }
      if (iVar3 == 0xff) {
        iVar3 = 0;
        cVar7 = cVar7 + '\x01';
      }
      func_0x0200ded0(*(undefined4 *)(param_1 + 0x74),iVar2,iVar3);
      cVar8 = iVar6 == 0;
      func_0x020f1c54(0);
      if (cVar8 == '\0') {
        func_0x0200e024(*(undefined4 *)(param_1 + 0x74),iVar6,uVar5);
      }
      else {
        cVar7 = cVar7 + '\x01';
      }
      if (cVar7 != '\x03') {
        *(int *)(param_1 + 0x84) = *(int *)(param_1 + 0x84) + 1;
        return 1;
      }
      *piVar4 = *piVar4 + 1;
    }
    else {
      *piVar4 = 1;
      *(undefined4 *)(param_1 + 0x84) = 0;
    }
  }
  *piVar4 = 0;
  *(undefined4 *)(param_1 + 0x84) = 0;
  return 0;
}

