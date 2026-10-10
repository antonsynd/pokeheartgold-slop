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
undefined4 ov07_02231E08();
undefined4 ov07_022324D8();
undefined4 ov07_0221C514();
undefined4 ov07_0221C468();
undefined4 func_0x0200e0fc() __asm__("sub_0200E0FC");
undefined4 ov07_0221FB78();
undefined4 func_0x0200e024() __asm__("sub_0200E024");
undefined4 ov07_0221FAA0();
undefined4 ov07_0221C410();
undefined4 ov07_0221C4E8();
undefined4 func_0x0200dd68() __asm__("sub_0200DD68");
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 func_0x0200df98() __asm__("sub_0200DF98");
undefined4 ov07_0221FA48();
undefined4 Pokepic_GetAttr();
extern undefined2 uRam04000052 __asm__("sub_04000052");

void ov07_02228A50(undefined4 param_1)

{
  undefined1 uVar1;
  undefined2 uVar2;
  short sVar3;
  undefined1 *puVar4;
  undefined4 uVar5;
  undefined1 *puVar6;
  int iVar7;

  puVar4 = (undefined1 *)ov07_022324D8(param_1,0x9c);
  *puVar4 = 0;
  puVar4[1] = 0;
  *(undefined4 *)(puVar4 + 0x10) = param_1;
  uVar5 = ov07_0221C514();
  *(undefined4 *)(puVar4 + 0x14) = uVar5;
  uVar5 = ov07_0221C468(*(undefined4 *)(puVar4 + 0x10));
  uVar5 = ov07_0221FA48(*(undefined4 *)(puVar4 + 0x10),uVar5);
  *(undefined4 *)(puVar4 + 0xc) = uVar5;
  uVar2 = Pokepic_GetAttr(uVar5,1);
  *(undefined2 *)(puVar4 + 2) = uVar2;
  sVar3 = Pokepic_GetAttr(*(undefined4 *)(puVar4 + 0xc),0x29);
  *(short *)(puVar4 + 2) = *(short *)(puVar4 + 2) - sVar3;
  uVar5 = ov07_0221C468(*(undefined4 *)(puVar4 + 0x10));
  uVar5 = ov07_0221FAA0(*(undefined4 *)(puVar4 + 0x10),uVar5);
  *(undefined4 *)(puVar4 + 4) = uVar5;
  ov07_02231E08(*(undefined4 *)(puVar4 + 0x10),0xffffffff,0xffffffff);
  iVar7 = 0;
  uRam04000052 = 0x60c;
  puVar6 = puVar4;
  do {
    puVar6[0x18] = 0;
    puVar6[0x19] = 0;
    uVar5 = ov07_0221C4E8(*(undefined4 *)(puVar4 + 0x10),iVar7);
    *(undefined4 *)(puVar6 + 0x1c) = uVar5;
    func_0x0200df98(uVar5,2);
    func_0x0200e0fc(*(undefined4 *)(puVar6 + 0x1c),1);
    func_0x0200dd68(*(undefined4 *)(puVar6 + 0x1c),iVar7 + 1);
    iVar7 = iVar7 + 1;
    puVar6 = puVar6 + 0x2c;
  } while (iVar7 < 3);
  iVar7 = ov07_0221FB78(param_1,0);
  if (iVar7 == 1) {
    uVar1 = 0xff;
  }
  else {
    uVar1 = 1;
  }
  puVar4[8] = uVar1;
  iVar7 = 0;
  puVar6 = puVar4;
  do {
    uVar5 = func_0x020f2178((int)(char)puVar4[8]);
    func_0x0200e024(*(undefined4 *)(puVar6 + 0x1c),uVar5,0x3f800000);
    iVar7 = iVar7 + 1;
    puVar6 = puVar6 + 0x2c;
  } while (iVar7 < 3);
  ov07_0221C410(*(undefined4 *)(puVar4 + 0x10),0x2228835,puVar4);
  return;
}

