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
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 ov89_02259A3C();
undefined4 func_0x02003de8() __asm__("sub_02003DE8");
undefined4 FillBgTilemapRect();
undefined4 func_0x0200335c() __asm__("sub_0200335C");
undefined4 func_0x02003364() __asm__("sub_02003364");
undefined4 ov89_0225A1D8();
extern undefined UNK_0225c9b0 __asm__("sub_0225C9B0");

void ov89_022598D0(int param_1)

{
  ushort uVar1;
  bool bVar2;
  char cVar3;
  int iVar4;
  int iVar5;
  undefined2 *puVar6;
  int iStack_38;
  int iStack_34;
  int iStack_2c;
  int iStack_28;
  int iStack_1c;

  bVar2 = false;
  iVar4 = func_0x0200335c(*(undefined4 *)(param_1 + 0xc),2);
  iStack_38 = func_0x02003364(*(undefined4 *)(param_1 + 0xc),2);
  iStack_1c = 0;
  cVar3 = '\0';
  iStack_34 = iVar4;
  iStack_2c = param_1;
  iStack_28 = param_1;
  do {
    uVar1 = *(ushort *)(iStack_28 + 0x8da);
    if ((uVar1 == 0) || (0x1ed < uVar1)) {
      ManagedSprite_SetDrawFlag(*(undefined4 *)(iStack_2c + 0x924),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(iStack_2c + 0x93c),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(iStack_2c + 0x954),0);
      puVar6 = (undefined2 *)&UNK_0225c9b0;
      iVar5 = 0;
      do {
        FillBgTilemapRect(*(undefined4 *)(param_1 + 8),2,*puVar6,cVar3,iVar5 + 0x14U & 0xff,4,1,0x11
                         );
        iVar5 = iVar5 + 1;
        puVar6 = puVar6 + 1;
      } while (iVar5 < 4);
    }
    else {
      ov89_02259A3C(uVar1,*(undefined1 *)(iStack_28 + 0x8e0),*(undefined4 *)(iStack_2c + 0x954),
                    *(undefined4 *)(param_1 + 0x160),*(undefined4 *)(param_1 + 0x164),1,
                    *(undefined4 *)(param_1 + 0x19e0));
      *(undefined2 *)(iStack_34 + 0x22) = *(undefined2 *)(iStack_28 + 0x8d8);
      *(undefined2 *)(iStack_38 + 0x22) = *(undefined2 *)(iStack_28 + 0x8d8);
      func_0x02003de8(iVar4 + (iStack_1c + 0x11) * 2,iVar4 + (iStack_1c + 0x21) * 2,1,0xc,0);
      *(undefined2 *)(iStack_38 + 0x42) = *(undefined2 *)(iStack_34 + 0x42);
      if (!bVar2) {
        bVar2 = true;
        *(char *)(param_1 + 0x920) = (char)iStack_1c;
      }
    }
    iStack_28 = iStack_28 + 0xc;
    iStack_2c = iStack_2c + 4;
    cVar3 = cVar3 + '\x04';
    iStack_34 = iStack_34 + 2;
    iStack_38 = iStack_38 + 2;
    iStack_1c = iStack_1c + 1;
  } while (iStack_1c < 6);
  ov89_0225A1D8(param_1,0);
  ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 8),2);
  return;
}

