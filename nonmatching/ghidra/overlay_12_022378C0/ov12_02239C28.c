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
undefined4 sub_02037B38(undefined4);
undefined4 sub_020750E0(undefined4);
undefined4 sub_02075178(undefined4);
undefined4 PaletteData_BeginPaletteFade(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 sub_02039AD8(undefined4);
undefined4 sub_02075108(undefined4);
undefined4 sub_02075074(undefined4, undefined4);
undefined4 sub_02037930(undefined4);
undefined4 sub_02037454(void);
undefined4 sub_020399FC(undefined4, undefined4);
undefined4 sub_020751B8(undefined4);
undefined4 sub_0207514C(undefined4);
undefined4 PaletteData_GetSelectedBuffersBitmask(undefined4);
undefined4 sub_02037AC0(undefined4);
undefined4 Heap_Free(undefined4);
undefined4 sub_020751DC(undefined4);
undefined4 SetMasterBrightnessNeutral(undefined4);
undefined4 OverlayManager_GetData(void);
undefined4 sub_02075220(undefined4);
undefined4 sub_0207527C(undefined4);
undefined4 sub_0207531C(undefined4, undefined4);
undefined4 sub_020753D4(undefined4, undefined4, undefined4);
undefined4 sub_0200F450(undefined4);
undefined4 sub_0203769C(void);
undefined4 sub_020752D8(undefined4);
undefined4 sub_02075350(undefined4, undefined4, undefined4);
undefined4 sub_02075248(undefined4);
undefined4 sub_020753A8(undefined4, undefined4);

undefined4 ov12_02239C28(void)

{
  undefined4 *puVar1;
  uint uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  
  puVar1 = (undefined4 *)OverlayManager_GetData();
  sub_020399FC(5,puVar1[1]);
  uVar5 = 0;
  switch(*(undefined1 *)((int)puVar1 + 0x1021)) {
  case 0:
    SetMasterBrightnessNeutral(0);
    sub_02037930(1);
    *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    break;
  case 1:
    iVar3 = PaletteData_GetSelectedBuffersBitmask(puVar1[3]);
    if (iVar3 == 0) {
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 2:
    sub_02037AC0(0x32);
    *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    break;
  case 3:
    iVar3 = sub_02037B38(0x32);
    if (iVar3 == 0) {
      *(short *)((int)puVar1 + 0x1022) = *(short *)((int)puVar1 + 0x1022) + 1;
      if (0x708 < *(ushort *)((int)puVar1 + 0x1022)) {
        sub_02039AD8(1);
      }
    }
    else {
      sub_02037AC0(0x33);
      *(undefined2 *)((int)puVar1 + 0x1022) = 0;
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 4:
    iVar3 = sub_02075074(puVar1,0x140);
    if (iVar3 == 1) {
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 5:
  case 8:
  case 0xb:
  case 0xe:
  case 0x11:
  case 0x14:
  case 0x17:
  case 0x1a:
  case 0x1d:
  case 0x20:
    uVar2 = sub_02037454();
    if (*(byte *)(puVar1 + 0x408) == uVar2) {
      if (*(char *)((int)puVar1 + 0x1021) == '\x14') {
        iVar3 = 0;
        puVar4 = puVar1;
        do {
          Heap_Free(puVar4[4]);
          iVar3 = iVar3 + 1;
          puVar4 = puVar4 + 1;
        } while (iVar3 < 4);
      }
      *(undefined1 *)(puVar1 + 0x408) = 0;
      *(undefined2 *)((int)puVar1 + 0x1022) = 0;
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      if (*(char *)((int)puVar1 + 0x1021) == '!') {
        PaletteData_BeginPaletteFade(puVar1[3],5,0xffff,0,0,0x10,0);
      }
    }
    else {
      *(short *)((int)puVar1 + 0x1022) = *(short *)((int)puVar1 + 0x1022) + 1;
      if (0x708 < *(ushort *)((int)puVar1 + 0x1022)) {
        sub_02039AD8(1);
      }
    }
    break;
  case 6:
    iVar3 = sub_020750E0(puVar1);
    if (iVar3 == 1) {
      sub_02037AC0(0x34);
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 7:
    iVar3 = sub_02075108(puVar1);
    if (iVar3 == 1) {
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 9:
    iVar3 = sub_0207514C(puVar1);
    if (iVar3 == 1) {
      sub_02037AC0(0x35);
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 10:
    iVar3 = sub_02075178(puVar1);
    if (iVar3 == 1) {
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 0xc:
    iVar3 = sub_020751B8(puVar1);
    if (iVar3 == 1) {
      sub_02037AC0(0x36);
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 0xd:
    iVar3 = sub_020751DC(puVar1);
    if (iVar3 == 1) {
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 0xf:
    iVar3 = sub_02075220(puVar1);
    if (iVar3 == 1) {
      sub_02037AC0(0x37);
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 0x10:
    iVar3 = sub_02075248(puVar1);
    if (iVar3 == 1) {
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 0x12:
    iVar3 = sub_0207527C(puVar1);
    if (iVar3 == 1) {
      sub_02037AC0(0x38);
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 0x13:
    iVar3 = sub_020752D8(puVar1);
    if (iVar3 == 1) {
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 0x15:
    if ((*(uint *)*puVar1 & 0x80) == 0) {
      *(undefined1 *)((int)puVar1 + 0x1021) = 0x21;
    }
    else {
      iVar3 = sub_0203769C();
      if (iVar3 == 0) {
        iVar3 = sub_0207531C(puVar1,1);
        if (iVar3 == 1) {
          sub_02037AC0(0x39);
          *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
        }
      }
      else {
        sub_02037AC0(0x39);
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    break;
  case 0x16:
    *(undefined1 *)(puVar1 + 0x408) = 1;
    iVar3 = sub_0203769C();
    if (iVar3 == 0) {
      iVar3 = sub_02075350(puVar1,1,0x39);
      if (iVar3 == 1) {
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    else {
      iVar3 = sub_02037B38(0x39);
      if (iVar3 == 1) {
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    break;
  case 0x18:
    iVar3 = sub_0203769C();
    if (iVar3 == 0) {
      iVar3 = sub_0207531C(puVar1,3);
      if (iVar3 == 1) {
        sub_02037AC0(0x3a);
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    else {
      sub_02037AC0(0x3a);
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 0x19:
    *(undefined1 *)(puVar1 + 0x408) = 1;
    iVar3 = sub_0203769C();
    if (iVar3 == 0) {
      iVar3 = sub_02075350(puVar1,3,0x3a);
      if (iVar3 == 1) {
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    else {
      iVar3 = sub_02037B38(0x3a);
      if (iVar3 == 1) {
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    break;
  case 0x1b:
    iVar3 = sub_0203769C();
    if (iVar3 == 0) {
      iVar3 = sub_020753A8(puVar1,1);
      if (iVar3 == 1) {
        sub_02037AC0(0x3b);
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    else {
      sub_02037AC0(0x3b);
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 0x1c:
    *(undefined1 *)(puVar1 + 0x408) = 1;
    iVar3 = sub_0203769C();
    if (iVar3 == 0) {
      iVar3 = sub_020753D4(puVar1,1,0x3b);
      if (iVar3 == 1) {
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    else {
      iVar3 = sub_02037B38(0x3b);
      if (iVar3 == 1) {
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    break;
  case 0x1e:
    iVar3 = sub_0203769C();
    if (iVar3 == 0) {
      iVar3 = sub_020753A8(puVar1,3);
      if (iVar3 == 1) {
        sub_02037AC0(0x3c);
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    else {
      sub_02037AC0(0x3c);
      *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
    }
    break;
  case 0x1f:
    *(undefined1 *)(puVar1 + 0x408) = 1;
    iVar3 = sub_0203769C();
    if (iVar3 == 0) {
      iVar3 = sub_020753D4(puVar1,3,0x3c);
      if (iVar3 == 1) {
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    else {
      iVar3 = sub_02037B38(0x3c);
      if (iVar3 == 1) {
        *(char *)((int)puVar1 + 0x1021) = *(char *)((int)puVar1 + 0x1021) + '\x01';
      }
    }
    break;
  case 0x21:
    iVar3 = PaletteData_GetSelectedBuffersBitmask(puVar1[3]);
    if (iVar3 == 0) {
      uVar5 = 1;
      sub_0200F450(puVar1[0x409]);
      sub_02037930(0);
    }
  }
  return uVar5;
}

