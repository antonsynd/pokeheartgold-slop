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
undefined4 func_0x0202a044() __asm__("sub_0202A044");
undefined4 func_0x0202a634() __asm__("sub_0202A634");
undefined4 ov40_0222DD68();
undefined4 Heap_Alloc();
undefined4 NewMsgDataFromNarc();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 Heap_Free();
extern undefined ov40_02245CD4;

void ov40_02235E34(int param_1,int param_2)

{
  ushort *puVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  short *psVar5;
  int iVar6;
  int iVar7;
  undefined2 *puVar8;
  uint uVar9;
  uint uVar10;
  uint uStack_20;

  iVar7 = *(int *)(param_1 + 0x860);
  uVar9 = (uint)*(ushort *)(&ov40_02245CD4 + (param_2 + 1) * 2);
  uStack_20 = (uint)*(ushort *)(&ov40_02245CD4 + param_2 * 2);
  uVar2 = ov40_0222DD68(0x6d,0,iVar7 + 0x1d8);
  *(undefined4 *)(iVar7 + 0x1dc) = uVar2;
  iVar3 = ov40_0222DD68(0x6d,0,iVar7 + 0x1d8);
  uVar2 = func_0x0202a634(*(undefined4 *)(param_1 + 0x830));
  *(undefined4 *)(iVar7 + 0x1d4) = 0;
  if (uStack_20 < uVar9) {
    puVar8 = (undefined2 *)(iVar3 + uStack_20 * 2);
    uVar10 = uStack_20;
    do {
      iVar4 = func_0x0202a044(uVar2,*puVar8);
      if (iVar4 == 0) {
        *puVar8 = 0xffff;
      }
      else {
        *(int *)(iVar7 + 0x1d4) = *(int *)(iVar7 + 0x1d4) + 1;
      }
      uVar10 = uVar10 + 1;
      puVar8 = puVar8 + 1;
    } while ((int)uVar10 < (int)uVar9);
  }
  iVar4 = 0;
  if (uStack_20 < uVar9) {
    psVar5 = (short *)(iVar3 + uStack_20 * 2);
    iVar6 = 0;
    do {
      if (*psVar5 != -1) {
        iVar4 = iVar4 + 1;
        *(short *)(*(int *)(iVar7 + 0x1dc) + iVar6) = *psVar5;
        iVar6 = iVar6 + 2;
      }
      psVar5 = psVar5 + 1;
      uStack_20 = uStack_20 + 1;
    } while ((int)uStack_20 < (int)uVar9);
  }
  if (iVar4 < *(int *)(iVar7 + 0x1d8)) {
    iVar6 = iVar4 * 2;
    puVar8 = (undefined2 *)(iVar3 + iVar6);
    do {
      iVar4 = iVar4 + 1;
      *(undefined2 *)(*(int *)(iVar7 + 0x1dc) + iVar6) = *puVar8;
      puVar8 = puVar8 + 1;
      iVar6 = iVar6 + 2;
    } while (iVar4 < *(int *)(iVar7 + 0x1d8));
  }
  Heap_Free(iVar3);
  uVar2 = Heap_Alloc(0x6d,*(int *)(iVar7 + 0x1d4) << 4);
  *(undefined4 *)(iVar7 + 0x1e8) = uVar2;
  func_0x020d4994(*(undefined4 *)(iVar7 + 0x1e8),0,*(int *)(iVar7 + 0x1d4) << 4);
  iVar3 = 0;
  if (0 < *(int *)(iVar7 + 0x1d4)) {
    iVar4 = 0;
    iVar6 = 0;
    do {
      iVar3 = iVar3 + 1;
      *(uint *)(*(int *)(iVar7 + 0x1e8) + iVar6) =
           (uint)*(ushort *)(*(int *)(iVar7 + 0x1dc) + iVar4);
      puVar1 = (ushort *)(*(int *)(iVar7 + 0x1dc) + iVar4);
      iVar4 = iVar4 + 2;
      *(uint *)(*(int *)(iVar7 + 0x1e8) + iVar6 + 4) = (uint)*puVar1;
      iVar6 = iVar6 + 0x10;
    } while (iVar3 < *(int *)(iVar7 + 0x1d4));
  }
  uVar2 = NewMsgDataFromNarc(0,0x1b,0xed,0x6d);
  *(undefined4 *)(iVar7 + 0x1e0) = uVar2;
  *(undefined4 *)(iVar7 + 0x1e4) = 1;
  return;
}

