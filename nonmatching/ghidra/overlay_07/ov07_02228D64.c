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
undefined4 ov07_02231FA0(undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_02222004(undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0222202C(undefined4, undefined4);
undefined4 ov07_02222268(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_0221FAF8(undefined4, undefined4);
undefined4 ov07_0221C514(undefined4);
undefined4 ov07_02231E44(undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x0200e0fc(undefined4, undefined4) __asm__("sub_0200E0FC");
undefined4 ov07_0221C4A0(undefined4);
undefined4 ov07_02222AC4(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221C4A8(undefined4, undefined4);
undefined4 ov07_0221C470(void);
undefined4 ov07_0221C4E8(undefined4, undefined4);

void ov07_02228D64(undefined4 param_1)

{
  short sVar1;
  undefined1 *puVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;

  puVar2 = (undefined1 *)ov07_022324D8(param_1,0x8c);
  *puVar2 = 0;
  puVar2[1] = 0;
  *(undefined4 *)(puVar2 + 0xc) = param_1;
  uVar3 = ov07_0221C514(param_1);
  *(undefined4 *)(puVar2 + 0x10) = uVar3;
  uVar3 = ov07_0221C4A0(*(undefined4 *)(puVar2 + 0xc));
  *(undefined4 *)(puVar2 + 8) = uVar3;
  uVar3 = ov07_0221C4E8(*(undefined4 *)(puVar2 + 0xc),0);
  *(undefined4 *)(puVar2 + 0x18) = uVar3;
  iVar4 = ov07_0221C4A8(param_1,0);
  if (iVar4 == 0) {
    uVar3 = ov07_0221C470();
  }
  else {
    uVar3 = ov07_0221C468(*(undefined4 *)(puVar2 + 0xc));
  }
  uVar5 = ov07_0221FA48(*(undefined4 *)(puVar2 + 0xc),uVar3);
  *(undefined4 *)(puVar2 + 0x14) = uVar5;
  ov07_02231FA0(uVar5,puVar2 + 4);
  sVar1 = Pokepic_GetAttr(*(undefined4 *)(puVar2 + 0x14),0x29);
  *(short *)(puVar2 + 6) = *(short *)(puVar2 + 6) - sVar1;
  iVar4 = ov07_02222004(*(undefined4 *)(puVar2 + 0xc),uVar3);
  iVar6 = ov07_0222202C(*(undefined4 *)(puVar2 + 0xc),uVar3);
  ov07_02222268(puVar2 + 0x40,(int)*(short *)(puVar2 + 4),
                ((int)*(short *)(puVar2 + 4) + iVar4 * -0x14) * 0x10000 >> 0x10,
                (int)*(short *)(puVar2 + 6),
                ((int)*(short *)(puVar2 + 6) + iVar6 * 0x14) * 0x10000 >> 0x10,0x14);
  uVar7 = ov07_0221FAF8(param_1,2);
  uVar8 = ov07_0221FAF8(param_1,1);
  ov07_02231E44(*(undefined4 *)(puVar2 + 0xc),1 << (uVar7 & 0xff) | 0x20U | 1 << (uVar8 & 0xff) | 1,
                0xffffffff,0xffffffff);
  ov07_02222AC4(puVar2 + 100,0x1f,0,0,0x1f,0xf);
  func_0x0200e0fc(*(undefined4 *)(puVar2 + 0x18),1);
  ov07_0221C410(*(undefined4 *)(puVar2 + 0xc),0x2228d09,puVar2);
  return;
}

