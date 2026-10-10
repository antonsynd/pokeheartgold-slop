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
undefined4 sub_020878B0();
undefined4 ov40_02237008();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 TouchHitboxController_Destroy();
undefined4 sub_020879E0();
undefined4 ov40_0222D88C();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 ov40_0222DAA8();
undefined4 ov40_0222DD08();
undefined4 sub_020314BC();
undefined4 ov40_0222BF64();
undefined4 ov40_02230964();
undefined4 ov40_0222FBB4();
undefined4 ov40_0222DA84();
undefined4 ov40_02236534();
undefined4 ov40_0222BF80();
undefined4 ov40_0222FB90();
undefined4 Heap_Free();

undefined4 ov40_02238D5C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;

  iVar3 = *(int *)(param_1 + 0x860);
  if (*(int *)(param_1 + 8) == 0) {
    ov40_02230964(param_1,1,param_3,param_4,param_4);
    ov40_02237008(param_1);
    ov40_02236534(param_1);
    sub_020878B0(*(undefined4 *)(param_1 + 0x6f4),0);
    sub_020879E0(*(undefined4 *)(param_1 + 0x6f4),0);
    sub_020878B0(*(undefined4 *)(param_1 + 0x6f0),1);
    sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
    ov40_02230964(param_1,0);
    ov40_0222FB90(param_1,1);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else if (*(int *)(param_1 + 8) == 1) {
    iVar1 = ov40_0222FBB4();
    if (iVar1 != 0) {
      iVar2 = 0;
      iVar1 = iVar3;
      do {
        TouchHitboxController_Destroy(*(undefined4 *)(iVar1 + 0x330));
        iVar2 = iVar2 + 1;
        iVar1 = iVar1 + 4;
      } while (iVar2 < 5);
      ov40_0222DAA8(iVar3 + 0x1ac);
      ov40_0222D88C(param_1);
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),2);
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),6);
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),3);
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),7);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
  }
  else {
    iVar1 = ov40_0222DA84(iVar3 + 0x1ac,0);
    if (iVar1 == 0) {
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),1,2,*(uint *)(iVar3 + 0x1ac) & 0xff,
                      *(uint *)(param_1 + 0x58) & 0xffff);
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar3 + 0x1ac) & 0xff,
                      *(uint *)(param_1 + 0x58) & 0xffff);
    }
    else {
      ov40_0222DD08(param_1);
      ov40_0222DAA8(iVar3 + 0x1ac);
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),2,0xc,0x10,*(uint *)(param_1 + 0x58) & 0xffff)
      ;
      ov40_0222BF64(param_1,1,1,*(undefined4 *)(param_1 + 0x10));
      ov40_0222BF80(param_1,5);
      sub_020314BC(*(undefined4 *)(iVar3 + 900));
      Heap_Free(iVar3);
    }
  }
  return 0;
}

