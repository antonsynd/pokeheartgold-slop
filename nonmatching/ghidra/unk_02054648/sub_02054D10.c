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
undefined4 GF_AssertFail();
undefined4 func_0x021f630c() __asm__("sub_021F630C");
undefined4 sub_02054A9C();
undefined4 func_0x021f3b34() __asm__("sub_021F3B34");
undefined4 MapMatrix_GetWidth();
undefined4 func_0x021f652c() __asm__("sub_021F652C");
undefined4 func_0x021f3b44() __asm__("sub_021F3B44");
undefined4 Heap_AllocAtEnd();
undefined4 sub_02054DC8();

undefined4 *
sub_02054D10(int param_1,undefined4 param_2,uint param_3,undefined4 param_4,undefined4 param_5)

{
  byte bVar1;
  byte bVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  uint uVar8;
  uint uVar9;
  int iStack_28;
  undefined1 auStack_24 [12];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  puVar3 = (undefined4 *)Heap_AllocAtEnd(param_2,param_3 << 2);
  iVar4 = 0;
  puVar7 = puVar3;
  if (0 < (int)param_3) {
    do {
      iVar4 = iVar4 + 1;
      *puVar7 = param_5;
      puVar7 = puVar7 + 1;
    } while (iVar4 < (int)param_3);
  }
  uVar8 = 0;
  bVar2 = 0;
  do {
    func_0x021f630c(bVar2,*(undefined4 *)(param_1 + 0x2c),&iStack_28);
    if (iStack_28 != 0) {
      uVar5 = func_0x021f652c(*(undefined4 *)(param_1 + 0x2c),bVar2);
      uVar6 = MapMatrix_GetWidth(*(undefined4 *)(param_1 + 0x30));
      sub_02054DC8(uVar5,uVar6,auStack_24);
      bVar1 = 0;
      uVar9 = uVar8;
      do {
        uVar5 = func_0x021f3b44(iStack_28,bVar1);
        iVar4 = sub_02054A9C(uVar5,param_4,auStack_24);
        uVar8 = uVar9;
        if ((iVar4 != 0) && (iVar4 = func_0x021f3b34(uVar5), iVar4 != 0)) {
          if (param_3 <= uVar9) {
            GF_AssertFail();
            return puVar3;
          }
          uVar8 = uVar9 + 1 & 0xff;
          puVar3[uVar9] = iVar4;
        }
        bVar1 = bVar1 + 1;
        uVar9 = uVar8;
      } while (bVar1 < 0x20);
    }
    bVar2 = bVar2 + 1;
  } while (bVar2 < 4);
  return puVar3;
}

