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
undefined4 ov74_02234468();
undefined4 ov74_022344A8();
undefined4 ov74_02233F8C();
undefined4 ov74_02234488();

uint AGB_GetBoxMonData(uint *param_1,int param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  uint *puVar3;
  byte *pbStack_24;
  int iStack_20;
  ushort *puStack_1c;
  
  uVar2 = 0;
  puVar3 = (uint *)0x0;
  puStack_1c = (ushort *)0x0;
  iStack_20 = 0;
  pbStack_24 = (byte *)0x0;
  if (10 < param_2) {
    puStack_1c = (ushort *)ov74_02233F8C(param_1,*param_1,0);
    iStack_20 = ov74_02233F8C(param_1,*param_1,1);
    pbStack_24 = (byte *)ov74_02233F8C(param_1,*param_1,2);
    puVar3 = (uint *)ov74_02233F8C(param_1,*param_1,3);
    ov74_02234468(param_1);
    uVar1 = ov74_022344A8(param_1);
    if (uVar1 != (ushort)param_1[7]) {
      *(byte *)((int)param_1 + 0x13) = *(byte *)((int)param_1 + 0x13) & 0xfe | 1;
      *(byte *)((int)param_1 + 0x13) = *(byte *)((int)param_1 + 0x13) | 4;
      puVar3[1] = puVar3[1] | 0x40000000;
    }
  }
  switch(param_2) {
  case 0:
    uVar2 = *param_1;
    break;
  case 1:
    uVar2 = param_1[1];
    break;
  case 2:
    if ((int)((uint)*(byte *)((int)param_1 + 0x13) << 0x1f) < 0) {
      uVar2 = 0;
    }
    else {
      uVar2 = 0;
      do {
        *(undefined1 *)(param_3 + uVar2) = *(undefined1 *)((int)param_1 + uVar2 + 8);
        uVar2 = uVar2 + 1;
      } while (uVar2 < 10);
    }
    *(undefined1 *)(param_3 + uVar2) = 0xff;
    break;
  case 3:
    uVar2 = (uint)*(byte *)((int)param_1 + 0x12);
    break;
  case 4:
    uVar2 = *(byte *)((int)param_1 + 0x13) & 1;
    break;
  case 5:
    uVar2 = (*(byte *)((int)param_1 + 0x13) & 3) >> 1;
    break;
  case 6:
    uVar2 = (*(byte *)((int)param_1 + 0x13) & 7) >> 2;
    break;
  case 7:
    uVar2 = 0;
    do {
      *(undefined1 *)(param_3 + uVar2) = *(undefined1 *)((int)param_1 + uVar2 + 0x14);
      uVar2 = uVar2 + 1;
    } while (uVar2 < 7);
    *(undefined1 *)(param_3 + uVar2) = 0xff;
    break;
  case 8:
    uVar2 = (uint)*(byte *)((int)param_1 + 0x1b);
    break;
  case 9:
    uVar2 = (uint)(ushort)param_1[7];
    break;
  case 10:
    uVar2 = (uint)*(ushort *)((int)param_1 + 0x1e);
    break;
  case 0xb:
    if ((int)((uint)*(byte *)((int)param_1 + 0x13) << 0x1f) < 0) {
      uVar2 = 0x19c;
    }
    else {
      uVar2 = (uint)*puStack_1c;
    }
    break;
  case 0xc:
    uVar2 = (uint)puStack_1c[1];
    break;
  case 0xd:
  case 0xe:
  case 0xf:
  case 0x10:
    uVar2 = (uint)*(ushort *)(iStack_20 + (param_2 + -0xd) * 2);
    break;
  case 0x11:
  case 0x12:
  case 0x13:
  case 0x14:
    uVar2 = (uint)*(byte *)(iStack_20 + param_2 + -9);
    break;
  case 0x15:
    uVar2 = (uint)(byte)puStack_1c[4];
    break;
  case 0x16:
    uVar2 = (uint)pbStack_24[6];
    break;
  case 0x17:
    uVar2 = (uint)pbStack_24[7];
    break;
  case 0x18:
    uVar2 = (uint)pbStack_24[8];
    break;
  case 0x19:
    uVar2 = *(uint *)(puStack_1c + 2);
    break;
  case 0x1a:
    uVar2 = (uint)*pbStack_24;
    break;
  case 0x1b:
    uVar2 = (uint)pbStack_24[1];
    break;
  case 0x1c:
    uVar2 = (uint)pbStack_24[2];
    break;
  case 0x1d:
    uVar2 = (uint)pbStack_24[3];
    break;
  case 0x1e:
    uVar2 = (uint)pbStack_24[4];
    break;
  case 0x1f:
    uVar2 = (uint)pbStack_24[5];
    break;
  case 0x20:
    uVar2 = (uint)*(byte *)((int)puStack_1c + 9);
    break;
  case 0x21:
    uVar2 = (uint)pbStack_24[9];
    break;
  case 0x22:
    uVar2 = *puVar3 & 0xff;
    break;
  case 0x23:
    uVar2 = (*puVar3 & 0xffff) >> 8;
    break;
  case 0x24:
    uVar2 = (*puVar3 & 0x7fffff) >> 0x10;
    break;
  case 0x25:
    uVar2 = (*puVar3 & 0x7ffffff) >> 0x17;
    break;
  case 0x26:
    uVar2 = (*puVar3 & 0x7fffffff) >> 0x1b;
    break;
  case 0x27:
    uVar2 = puVar3[1] & 0x1f;
    break;
  case 0x28:
    uVar2 = (puVar3[1] & 0x3ff) >> 5;
    break;
  case 0x29:
    uVar2 = (puVar3[1] & 0x7fff) >> 10;
    break;
  case 0x2a:
    uVar2 = (puVar3[1] & 0xfffff) >> 0xf;
    break;
  case 0x2b:
    uVar2 = (puVar3[1] & 0x1ffffff) >> 0x14;
    break;
  case 0x2c:
    uVar2 = (puVar3[1] & 0x3fffffff) >> 0x19;
    break;
  case 0x2d:
    uVar2 = (puVar3[1] & 0x7fffffff) >> 0x1e;
    break;
  case 0x2e:
    uVar2 = puVar3[1] >> 0x1f;
    break;
  case 0x2f:
    uVar2 = (uint)pbStack_24[10];
    break;
  case 0x30:
    uVar2 = (uint)pbStack_24[0xb];
    break;
  case 0x31:
    uVar2 = *puVar3 >> 0x1f;
    break;
  case 0x32:
    uVar2 = puVar3[2] & 7;
    break;
  case 0x33:
    uVar2 = (puVar3[2] & 0x3f) >> 3;
    break;
  case 0x34:
    uVar2 = (puVar3[2] & 0x1ff) >> 6;
    break;
  case 0x35:
    uVar2 = (puVar3[2] & 0xfff) >> 9;
    break;
  case 0x36:
    uVar2 = (puVar3[2] & 0x7fff) >> 0xc;
    break;
  case 0x41:
    uVar2 = (uint)*puStack_1c;
    if ((uVar2 != 0) &&
       (((int)(puVar3[1] << 1) < 0 || ((int)((uint)*(byte *)((int)param_1 + 0x13) << 0x1f) < 0)))) {
      uVar2 = 0x19c;
    }
    break;
  case 0x42:
    uVar2 = puVar3[1] & 0x3fffffff;
    break;
  case 0x43:
    uVar2 = (puVar3[2] & 0xffff) >> 0xf;
    break;
  case 0x44:
    uVar2 = (puVar3[2] & 0x1ffff) >> 0x10;
    break;
  case 0x45:
    uVar2 = (puVar3[2] & 0x3ffff) >> 0x11;
    break;
  case 0x46:
    uVar2 = (puVar3[2] & 0x7ffff) >> 0x12;
    break;
  case 0x47:
    uVar2 = (puVar3[2] & 0xfffff) >> 0x13;
    break;
  case 0x48:
    uVar2 = (puVar3[2] & 0x1fffff) >> 0x14;
    break;
  case 0x49:
    uVar2 = (puVar3[2] & 0x3fffff) >> 0x15;
    break;
  case 0x4a:
    uVar2 = (puVar3[2] & 0x7fffff) >> 0x16;
    break;
  case 0x4b:
    uVar2 = (puVar3[2] & 0xffffff) >> 0x17;
    break;
  case 0x4c:
    uVar2 = (puVar3[2] & 0x1ffffff) >> 0x18;
    break;
  case 0x4d:
    uVar2 = (puVar3[2] & 0x3ffffff) >> 0x19;
    break;
  case 0x4e:
    uVar2 = (puVar3[2] & 0x7ffffff) >> 0x1a;
    break;
  case 0x4f:
    uVar2 = (puVar3[2] & 0x7fffffff) >> 0x1b;
    break;
  case 0x50:
    uVar2 = puVar3[2] >> 0x1f;
  }
  if (10 < param_2) {
    ov74_02234488(param_1);
  }
  return uVar2;
}

