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
undefined4 func_0x020cec1c() __asm__("sub_020CEC1C");
undefined4 func_0x020cebec() __asm__("sub_020CEBEC");
extern ushort uRam04000304 __asm__("sub_04000304");
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");

void sub_0203A700(int param_1)

{
  byte bVar1;
  short sVar2;
  uint uVar3;
  int iVar4;
  uint *puVar5;
  ushort uVar6;
  undefined4 uVar7;
  uint *puVar8;
  uint uVar9;
  char cVar10;

  uVar9 = uRam04001000;
  uVar3 = uRam04000000;
  if (*(char *)(param_1 + 0x11) == '\x01') {
    if ((int)(uRam04000304 & 0x8000) >> 0xf == 1) {
      cVar10 = '\x01';
    }
    else {
      cVar10 = '\x02';
    }
  }
  else if (*(char *)(param_1 + 0x11) == '\x02') {
    if ((int)(uRam04000304 & 0x8000) >> 0xf == 1) {
      cVar10 = '\x02';
    }
    else {
      cVar10 = '\x01';
    }
  }
  else {
    cVar10 = *(char *)(param_1 + 0x21);
  }
  uVar7 = *(undefined4 *)(param_1 + 4);
  if (cVar10 == '\x01') {
    iVar4 = func_0x020cebec();
    uVar9 = uVar3;
  }
  else {
    iVar4 = func_0x020cec1c();
  }
  uVar9 = uVar9 & 0x300010;
  sVar2 = (short)uVar7;
  if (uVar9 < 0x100011) {
    if (uVar9 < 0x100010) {
      if (uVar9 == 0x10) {
        if ((iVar4 == 0x40) || (iVar4 == 0x20)) {
          uVar6 = sVar2 * 4 + 0x1f0;
        }
        else {
          uVar6 = sVar2 * 4 + 0x3f0;
        }
        goto LAB_0203a7fc;
      }
    }
    else if (((iVar4 == 0x40) || (iVar4 == 0x20)) || (iVar4 == 0x100)) {
      uVar6 = sVar2 * 2 + 0x1f8;
      goto LAB_0203a7fc;
    }
  }
  else if (uVar9 < 0x200011) {
    if (uVar9 == 0x200010) {
      if ((iVar4 == 0x30) || (iVar4 == 0x50)) {
        uVar6 = sVar2 + 0x27c;
      }
      else if (iVar4 == 0x10) {
        uVar6 = sVar2 + 0x1fc;
      }
      else {
        uVar6 = sVar2 + 0x3fc;
      }
      goto LAB_0203a7fc;
    }
  }
  else if (uVar9 == 0x300010) {
    if (iVar4 == 3) {
      uVar6 = sVar2 + 0x3fc;
    }
    else {
      uVar6 = sVar2 + 0x1fc;
    }
    goto LAB_0203a7fc;
  }
  uVar6 = sVar2 * 2 + 0x3f8;
LAB_0203a7fc:
  if (cVar10 == '\x01') {
    puVar8 = (uint *)0x7000000;
  }
  else {
    puVar8 = (uint *)0x7000400;
  }
  bVar1 = *(byte *)(param_1 + 0x20);
  *puVar8 = (*(ushort *)(param_1 + 0xc) & 0x1ff) << 0x10 |
            *(ushort *)(param_1 + 0xe) & 0xff | (uint)*(byte *)(param_1 + 0x22) << 10 | 0x40000000;
  *(ushort *)(puVar8 + 1) = (ushort)bVar1 << 0xc | uVar6;
  puVar5 = *(uint **)(param_1 + 0x1c);
  if (puVar8 != puVar5) {
    *puVar5 = (uint)*(byte *)(param_1 + 0x22) << 10 | 0x40000200;
    *(undefined2 *)(puVar5 + 1) = 0;
    *(uint **)(param_1 + 0x1c) = puVar8;
  }
  return;
}

