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
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 func_0x020d3f58() __asm__("sub_020D3F58");
undefined4 ov112_021E5A68();
extern undefined4 uRam021ffb4c __asm__("sub_021FFB4C");
extern undefined2 uRam021ffb54 __asm__("sub_021FFB54");
extern int iRam021ffaf4 __asm__("sub_021FFAF4");
extern ushort uRam021ffb5a __asm__("sub_021FFB5A");
extern int iRam021ffafc __asm__("sub_021FFAFC");
extern undefined4 iRam021ffb44 __asm__("sub_021FFB44");
extern undefined1 cRam021ffb41 __asm__("sub_021FFB41");
extern ushort sRam021ffb5e __asm__("sub_021FFB5E");

void ov112_021E5EEC(void)

{
  byte bVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  undefined1 uStack_90;
  undefined1 auStack_8f [127];
  
  uVar2 = uRam021ffb4c;
  uVar5 = (uint)uRam021ffb54;
  if (0x80 < uVar5) {
    uVar5 = 0x80;
  }
  piVar3 = (int *)0x0;
  if (cRam021ffb41 == ':') {
    if (iRam021ffaf4 != 0) {
      piVar3 = (int *)0x21ffaf0;
    }
  }
  else if ((cRam021ffb41 == '<') && (iRam021ffafc != 0)) {
    piVar3 = (int *)0x21ffaf8;
  }
  iVar4 = (int)(uRam021ffb4c & 0xffff) >> 8;
  if (piVar3 == (int *)0x0) {
    if ((uRam021ffb4c & 0x7f) == 0) {
      ov112_021E5A68(iRam021ffb44,uVar5 & 0xff,uRam021ffb4c & 0x80 | 2,iVar4);
    }
    else {
      uVar5 = 0x80 - (uRam021ffb4c & 0x7f) & 0xffff;
      uStack_90 = (undefined1)(uRam021ffb4c & 0xffff);
      func_0x020d4a50(iRam021ffb44,auStack_8f,uVar5);
      ov112_021E5A68(&uStack_90,uVar5 + 1 & 0xff,10,iVar4);
    }
  }
  else {
    bVar1 = *(byte *)(*piVar3 + (uint)uRam021ffb5a);
    if (0x80 < bVar1) {
      func_0x020d3f58();
    }
    if (bVar1 == 0x80) {
      ov112_021E5A68(iRam021ffb44,0x80,uVar2 & 0x80 | 2,iVar4);
    }
    else {
      ov112_021E5A68(iRam021ffb44,bVar1,uVar2 & 0x80,iVar4);
    }
  }
  iRam021ffb44 = iRam021ffb44 + uVar5;
  uRam021ffb4c = uRam021ffb4c + uVar5;
  uRam021ffb54 = uRam021ffb54 - (short)uVar5;
  uRam021ffb5a = uRam021ffb5a + 1;
  sRam021ffb5e = sRam021ffb5e + 1;
  return;
}

