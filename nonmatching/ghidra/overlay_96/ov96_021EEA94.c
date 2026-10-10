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
undefined4 thunk_Sprite_SetDrawFlag();
undefined4 ov96_021EED64();
undefined4 Sprite_GetVramType();
undefined4 NARC_New();
undefined4 func_0x0200771c() __asm__("sub_0200771C");
undefined4 Sprite_GetPaletteProxy();
undefined4 Heap_AllocAtEnd();
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 func_0x020b8078() __asm__("sub_020B8078");
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");
undefined4 Heap_Free();
undefined4 func_0x020cfd18() __asm__("sub_020CFD18");
undefined4 NARC_Delete();
undefined4 sub_020145B4();
undefined4 func_0x020cfd70() __asm__("sub_020CFD70");

void ov96_021EEA94(undefined4 param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint *puVar5;
  uint uVar6;
  undefined4 uVar7;
  int iVar8;
  
  thunk_Sprite_SetDrawFlag(param_1,0);
  uVar1 = NARC_New(0x51,param_4);
  uVar2 = func_0x0200771c(uVar1,param_2,param_4);
  iVar3 = func_0x020c3b50();
  if (iVar3 == 0) {
    puVar5 = (uint *)0x0;
  }
  else {
    iVar4 = iVar3 + 0x3c;
    if ((iVar4 == 0) || (*(byte *)(iVar3 + 0x3d) <= param_3)) {
      puVar5 = (uint *)0x0;
    }
    else {
      puVar5 = (uint *)(iVar4 + (uint)*(ushort *)(iVar3 + 0x42) + 4 +
                       param_3 * *(ushort *)(iVar4 + (uint)*(ushort *)(iVar3 + 0x42)));
    }
  }
  uVar6 = *puVar5;
  iVar4 = *(int *)(iVar3 + 0x14);
  uVar7 = Heap_AllocAtEnd(param_4,0x200);
  sub_020145B4(iVar3 + iVar4 + (uVar6 & 0xffff) * 8,4,0,0,4,4,uVar7);
  ov96_021EED64(param_1,uVar7,0x200);
  Heap_Free(uVar7);
  iVar4 = Sprite_GetVramType(param_1);
  iVar8 = *(int *)(iVar3 + 0x38);
  func_0x020d2894(iVar3 + iVar8,0x20);
  uVar7 = Sprite_GetPaletteProxy(param_1);
  uVar7 = func_0x020b8078(uVar7,iVar4);
  if (iVar4 == 1) {
    func_0x020cfd18(iVar3 + iVar8,uVar7,0x20);
  }
  else {
    func_0x020cfd70(iVar3 + iVar8,uVar7,0x20);
  }
  Heap_Free(uVar2);
  NARC_Delete(uVar1);
  thunk_Sprite_SetDrawFlag(param_1,1);
  return;
}

