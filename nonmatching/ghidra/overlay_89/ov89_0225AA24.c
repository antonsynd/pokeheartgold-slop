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
undefined4 GfGfxLoader_LoadFromOpenNarc();
undefined4 func_0x020b70a8() __asm__("sub_020B70A8");
undefined4 Heap_Free();
undefined4 func_0x020d4790() __asm__("sub_020D4790");
undefined4 ov89_0225C88C();

void ov89_0225AA24(int param_1,undefined4 param_2,undefined4 param_3,undefined2 *param_4,
                  undefined4 param_5)

{
  int iVar1;
  ushort *puVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  ushort *puVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iStack_28;
  undefined4 uStack_20;
  int iStack_18;

  iVar1 = ov89_0225C88C(param_4[1],*(undefined1 *)(param_4 + 4),param_5);
  puVar2 = (ushort *)(param_1 + *(int *)(param_1 + 0x14));
  if (iVar1 == 1) {
    uStack_20 = GfGfxLoader_LoadFromOpenNarc(param_3,(ushort)param_4[1] + 3,1,0x7d,1);
    func_0x020b70a8(uStack_20,&iStack_18);
  }
  else {
    uStack_20 = GfGfxLoader_LoadFromOpenNarc(param_2,0x10,0,0x7d,1);
    func_0x020b70a8(uStack_20,&iStack_18);
  }
  func_0x020d4790(0,puVar2,0x40);
  iVar4 = *(int *)(iStack_18 + 0x14);
  iStack_28 = 0;
  iVar5 = iVar4;
  puVar6 = puVar2;
  do {
    switch(iStack_28) {
    case 0:
      iVar5 = iVar4;
      puVar6 = puVar2;
      if (iVar1 == 1) {
        iVar5 = iVar4 + 0x80;
      }
      break;
    case 1:
      if (iVar1 == 1) {
        iVar5 = iVar4 + 0xa0;
      }
      else {
        iVar5 = iVar4 + 0x20;
      }
      puVar6 = puVar2 + 1;
      break;
    case 2:
      iVar5 = iVar4;
      if (iVar1 != 1) {
        iVar5 = iVar4 + 0x40;
      }
      puVar6 = puVar2 + 0x10;
      break;
    case 3:
      if (iVar1 == 1) {
        iVar5 = iVar4 + 0x20;
      }
      else {
        iVar5 = iVar4 + 0x60;
      }
      puVar6 = puVar2 + 0x11;
    }
    iVar7 = 0;
    iVar9 = 0;
    do {
      uVar3 = 0;
      iVar8 = 0;
      do {
        if ((*(byte *)(iVar5 + iVar7) & 0xf) != 0) {
          *puVar6 = (ushort)(1 << (uVar3 & 0xff)) | *puVar6;
        }
        if ((*(byte *)(iVar5 + iVar7) & 0xf0) != 0) {
          *puVar6 = (ushort)(1 << (uVar3 + 2 & 0xff)) | *puVar6;
        }
        iVar8 = iVar8 + 1;
        uVar3 = uVar3 + 4;
        iVar7 = iVar7 + 1;
      } while (iVar8 < 4);
      iVar9 = iVar9 + 1;
      puVar6 = puVar6 + 2;
    } while (iVar9 < 8);
    iStack_28 = iStack_28 + 1;
  } while (iStack_28 < 4);
  *(undefined2 *)(param_1 + *(int *)(param_1 + 0x38) + 2) = *param_4;
  Heap_Free(uStack_20);
  return;
}

