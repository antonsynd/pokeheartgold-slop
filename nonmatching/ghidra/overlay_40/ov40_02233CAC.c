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
undefined4 Heap_Alloc();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 sub_020879E0();
undefined4 func_0x0202d918() __asm__("sub_0202D918");
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 func_0x0202d3f8() __asm__("sub_0202D3F8");
undefined4 ov40_02230738();
undefined4 ov40_02233238();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 ov40_0222D9E8();
undefined4 func_0x0201bb68() __asm__("sub_0201BB68");
undefined4 ov40_02230964();
undefined4 ov40_0222DA84();
undefined4 ov40_0222D874();
undefined4 ov40_0222FBB4();
undefined4 PlaySE();
undefined4 ov40_0222D980();
undefined4 ov40_0222BF80();
undefined4 ov40_0222FB90();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov40_0222DA00();
undefined4 ov40_022335F4();
undefined4 ov40_02233C3C();
undefined4 ov40_022339CC();
undefined4 ov40_0223316C();
undefined4 ov40_02233550();

undefined4 ov40_02233CAC(int param_1)

{
  uint *puVar1;
  int iVar2;
  undefined4 uVar3;
  uint *puVar4;
  uint uVar5;
  
  if (*(int *)(param_1 + 8) == 0) {
    puVar1 = (uint *)Heap_Alloc(0x6d,0xdc);
    func_0x020d4994(puVar1,0,0xdc);
    *(uint **)(param_1 + 0x860) = puVar1;
    iVar2 = 0;
    *puVar1 = 0;
    uVar5 = 0;
    puVar4 = puVar1;
    do {
      if (iVar2 - 2U < 2) {
        puVar4[6] = 0x34;
      }
      else {
        puVar4[6] = 0x40;
      }
      puVar4[0xb] = uVar5;
      puVar4[1] = 0x3e4ccccd;
      iVar2 = iVar2 + 1;
      puVar4 = puVar4 + 1;
      uVar5 = uVar5 + 0x48;
    } while (iVar2 < 5);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),3);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),2);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),7);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),6);
    ov40_0222D9E8(puVar1 + 0x35,puVar1 + 0x36,0);
    ov40_0222D980(puVar1 + 0x35,puVar1 + 0x36,0,0,4,2,0);
    PlaySE(0x579);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else {
    puVar1 = *(uint **)(param_1 + 0x860);
  }
  switch(*(undefined4 *)(param_1 + 8)) {
  default:
    ov40_0222BF80(param_1,1);
    break;
  case 1:
    iVar2 = ov40_0222DA84(puVar1,1);
    if (iVar2 != 0) {
      uVar3 = func_0x0202d918(*(undefined4 *)(param_1 + 0x830));
      uVar5 = func_0x0202d3f8(uVar3,0,0);
      puVar1[0x24] = uVar5;
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),2,0xc,*puVar1 & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*puVar1 & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),1,2,*puVar1 & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    break;
  case 2:
    ov40_02230964(param_1,1);
    ov40_0222D874(param_1);
    ov40_02230964(param_1,0);
    ov40_0222FB90(param_1,0);
    sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
    ov40_02230738();
    func_0x0201bb68(6,2);
    ov40_02233238(param_1);
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0x1c,*puVar1 & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 3:
    iVar2 = ov40_0222FBB4(param_1);
    if (iVar2 != 0) {
      ov40_02230964(param_1,1);
      ov40_0223316C(param_1);
      ov40_022335F4(param_1);
      ov40_02233550(param_1);
      ov40_02230964(param_1,0);
      GfGfx_EngineBTogglePlanes(8,1);
      GfGfx_EngineBTogglePlanes(4,1);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 4:
    iVar2 = ov40_022339CC(param_1);
    ov40_0222DA00(puVar1 + 0x35,puVar1 + 0x36,0,0);
    ov40_0222DA84(puVar1,0);
    if (iVar2 == 0) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      ov40_02233C3C(param_1);
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0x1c,*puVar1 & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
  }
  return 0;
}

