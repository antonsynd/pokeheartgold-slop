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
undefined4 ov18_021F8950();
undefined4 PlaySE();
undefined4 func_0x02025380() __asm__("sub_02025380");
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
extern undefined ov18_021FB8A4;
extern undefined ov18_021FB84C;
extern uint uRam021d1154 __asm__("sub_021D1154");
extern uint uRam021d1158 __asm__("sub_021D1158");

int ov18_021F6BBC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  
  *(undefined4 *)(param_1 + 0x864) = 0;
  uStack_18 = param_4;
  iVar3 = func_0x02025380(&iStack_1c,&iStack_20);
  if (iVar3 == 1) {
    iVar3 = TouchscreenHitbox_FindRectAtTouchNew(&ov18_021FB8A4);
    if (iVar3 == -1) {
      return -1;
    }
    iVar3 = *(int *)(&ov18_021FB84C + iVar3 * 4);
    if (iVar3 == 0) {
      iStack_20 = iStack_20 + -4;
      iStack_1c = iStack_1c + -0x1b;
      cVar1 = func_0x020f2ba4(iStack_1c,0x28);
      cVar2 = func_0x020f2ba4(iStack_20,0x28);
      cVar1 = cVar1 + cVar2 * '\x05';
      if (cVar1 == *(char *)(param_1 + 0x185a)) {
        return 4;
      }
      *(char *)(param_1 + 0x185a) = cVar1;
      PlaySE(0x8e9);
    }
    else if (iVar3 == 0xe) {
      PlaySE(0x8f2);
    }
    else if (iVar3 == 2) {
      PlaySE(0x8e9);
    }
    else if (iVar3 == 5) {
      PlaySE(0x940);
    }
    return iVar3;
  }
  *(undefined4 *)(param_1 + 0x864) = 1;
  if ((uRam021d1158 & 0x40) != 0) {
    if (*(byte *)(param_1 + 0x185a) < 5) {
      return 10;
    }
    *(byte *)(param_1 + 0x185a) = *(byte *)(param_1 + 0x185a) - 5;
    PlaySE(0x8e8);
    return 0;
  }
  if ((uRam021d1158 & 0x80) != 0) {
    if ((9 < *(byte *)(param_1 + 0x185a)) && (*(byte *)(param_1 + 0x185a) < 0xf)) {
      return 0xc;
    }
    *(char *)(param_1 + 0x185a) = *(char *)(param_1 + 0x185a) + '\x05';
    PlaySE(0x8e8);
    return 0;
  }
  if ((uRam021d1158 & 0x20) != 0) {
    if (*(char *)(param_1 + 0x185a) != '\0') {
      *(char *)(param_1 + 0x185a) = *(char *)(param_1 + 0x185a) + -1;
      PlaySE(0x8e8);
      return 0;
    }
    if (*(char *)(param_1 + 0x1859) != '\0') {
      *(undefined1 *)(param_1 + 0x185a) = 0xe;
      return 9;
    }
    return -1;
  }
  if ((uRam021d1158 & 0x10) != 0) {
    iVar3 = *(byte *)(param_1 + 0x185a) + 1;
    if (iVar3 != 0xf) {
      *(char *)(param_1 + 0x185a) = (char)iVar3;
      PlaySE(0x8e8);
      return 0;
    }
    uVar4 = ov18_021F8950(param_1,param_2);
    if (*(byte *)(param_1 + 0x1859) + 1 <= uVar4) {
      *(undefined1 *)(param_1 + 0x185a) = 0;
      return 0xb;
    }
    return -1;
  }
  if ((uRam021d1154 & 1) != 0) {
    return 4;
  }
  if ((uRam021d1154 & 2) != 0) {
    PlaySE(0x940);
    return 6;
  }
  if ((uRam021d1154 & 0x400) != 0) {
    return 3;
  }
  if ((uRam021d1154 & 0x800) != 0) {
    PlaySE(0x8e9);
    return 2;
  }
  if ((uRam021d1158 & 0x200) != 0) {
    return 9;
  }
  if ((uRam021d1158 & 0x100) != 0) {
    return 0xb;
  }
  if ((uRam021d1154 & 4) != 0) {
    return 8;
  }
  if ((uRam021d1154 & 8) != 0) {
    PlaySE(0x8f2);
    return 1;
  }
  return -1;
}

