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
undefined4 AddWindow();
undefined4 InitWindow();
undefined4 func_0x0201d9b0() __asm__("sub_0201D9B0");
undefined4 YesNoPrompt_Create();
undefined4 func_0x0201d494() __asm__("sub_0201D494");
undefined4 AddWindowParameterized();
undefined4 FillWindowPixelBuffer();
extern undefined ov108_021EA7A8;
extern undefined ov108_021EA724;

void ov108_021E7080(undefined4 *param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined *puVar5;
  uint uVar6;
  undefined4 *puVar7;
  int iVar8;
  int iVar9;
  uint uStack_28;
  int iStack_24;

  puVar5 = &ov108_021EA7A8;
  iVar9 = 0;
  puVar7 = param_1 + 0xed;
  do {
    AddWindow(param_1[0xd0],puVar7,puVar5);
    FillWindowPixelBuffer(puVar7,0);
    iVar9 = iVar9 + 1;
    puVar5 = puVar5 + 8;
    puVar7 = puVar7 + 4;
  } while (iVar9 < 5);
  iStack_24 = 5;
  iVar9 = 0x3a6;
  uStack_28 = 1;
  iVar8 = 0;
  do {
    uVar1 = ((int)(iVar8 + ((uint)(iVar8 >> 1) >> 0x1e)) >> 2 ^ 1U) & 0xff;
    uVar2 = uVar1 * 2 + 2 & 0xff;
    uVar6 = iVar9 + uVar2 * -0x16;
    AddWindowParameterized
              (param_1[0xd0],param_1 + iStack_24 * 4 + 0xed,7,1,uStack_28 & 0xff,0x16,uVar2,5,
               uVar6 & 0xffff);
    iVar9 = iVar8 >> 0x1f;
    uVar3 = *(uint *)(&ov108_021EA724 +
                     (((uint)(iVar8 * -0x80000000 + iVar9) >> 0x1f | iVar9 << 1) - iVar9) * 4);
    FillWindowPixelBuffer(param_1 + iStack_24 * 4 + 0xed,uVar3 & 0xff);
    uVar6 = uVar6 + uVar2 * -0x16;
    AddWindowParameterized
              (param_1[0xd0],param_1 + (iStack_24 + 1) * 4 + 0xed,7,0x1a,
               (uStack_28 & 0xff) + uVar1 & 0xff,5,2,5,uVar6 & 0xffff);
    FillWindowPixelBuffer(param_1 + (iStack_24 + 1) * 4 + 0xed,uVar3 & 0xff);
    iVar8 = iVar8 + 1;
    iStack_24 = iStack_24 + 2;
    iVar9 = uVar6 - 10;
    uStack_28 = uStack_28 + 4;
  } while (iVar8 < 5);
  InitWindow(param_1 + 0x129);
  func_0x0201d494(param_1[0xd0],param_1 + 0x129,6,2,0x2e1,0);
  func_0x0201d9b0(param_1 + 0x129,0);
  uVar4 = YesNoPrompt_Create(*param_1);
  param_1[0x130] = uVar4;
  return;
}

