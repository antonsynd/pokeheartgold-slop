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
undefined4 func_0x0201cc08() __asm__("sub_0201CC08");
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 ov89_0225C724();
undefined4 FillBgTilemapRect();
undefined4 func_0x020d47b8() __asm__("sub_020D47B8");
undefined4 func_0x0200ddf4() __asm__("sub_0200DDF4");
undefined4 func_0x0222ec3c() __asm__("sub_0222EC3C");
undefined4 ov89_0225C818();
extern undefined UNK_0225cbde __asm__("sub_0225CBDE");
extern undefined ov89_0225CBD8;
extern undefined UNK_0225cbdc __asm__("sub_0225CBDC");
extern undefined UNK_0225cbda __asm__("sub_0225CBDA");
undefined4 PlaySE();
extern undefined ov89_0225CA18;
extern undefined UNK_0225ca1a __asm__("sub_0225CA1A");

undefined4 ov89_02259F9C(undefined4 *param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iStack_2c;
  int iStack_28;
  undefined1 auStack_1c [4];
  int iStack_18;
  
  iStack_28 = 0;
  iStack_2c = 0;
  func_0x0222ec3c(auStack_1c);
  for (iVar6 = 0; iVar6 < 8; iVar6 = iVar6 + 1) {
    iVar3 = *(int *)(iStack_18 + iVar6 * 4);
    if (param_1[iVar6 + 0x5c] != iVar3) {
      if (iVar3 == -1) {
        ov89_0225C818(param_1 + 0xd,iVar6);
        *(undefined2 *)((int)param_1 + iVar6 * 2 + 0x99c) = 0;
        *(undefined2 *)((int)param_1 + iVar6 * 2 + 0x9ac) = 0;
        ManagedSprite_SetDrawFlag(param_1[iVar6 + 0x25c]);
        iVar3 = iVar6 * 8;
        FillBgTilemapRect(param_1[2],6,0,*(ushort *)(&ov89_0225CBD8 + iVar3) & 0xff,
                          *(ushort *)(&UNK_0225cbda + iVar3) & 0xff,
                          *(ushort *)(&UNK_0225cbdc + iVar3) & 0xff,
                          *(ushort *)(&UNK_0225cbde + iVar3) & 0xff,0x10);
        ScheduleBgTilemapBufferTransfer(param_1[2],6);
        iStack_2c = iStack_2c + 1;
      }
      else {
        ov89_0225C724(param_1[0xc],param_1[0xb],param_1 + 0xd,*(undefined4 *)*param_1,iVar3);
        iVar3 = func_0x0201cc08(param_1[2],6);
        iVar2 = iVar6 * 8;
        for (uVar5 = (uint)*(ushort *)(&UNK_0225cbda + iVar2);
            (int)uVar5 <
            (int)((uint)*(ushort *)(&UNK_0225cbda + iVar2) +
                 (uint)*(ushort *)(&UNK_0225cbde + iVar2)); uVar5 = uVar5 + 1) {
          iVar4 = (uVar5 * 0x20 + (uint)*(ushort *)(&ov89_0225CBD8 + iVar2)) * 2;
          func_0x020d47b8((int)param_1 + iVar4 + 0x9c0,iVar3 + iVar4,
                          (uint)*(ushort *)(&UNK_0225cbdc + iVar2) << 1);
        }
        ScheduleBgTilemapBufferTransfer(param_1[2],6);
        iStack_28 = iStack_28 + 1;
      }
      iVar3 = iVar6 * 4;
      if (param_1[0x5b] == *(int *)(iStack_18 + iVar3)) {
        func_0x0200ddf4(param_1[0x25b],(int)*(short *)(&ov89_0225CA18 + iVar3),
                        (int)*(short *)(&UNK_0225ca1a + iVar3),0x110000);
        ManagedSprite_SetDrawFlag(param_1[0x25b],1);
      }
    }
    param_1[iVar6 + 0x5c] = *(undefined4 *)(iStack_18 + iVar6 * 4);
  }
  cVar1 = '\0';
  for (iVar6 = 0; iVar6 < 8; iVar6 = iVar6 + 1) {
    if (param_1[iVar6 + 0x5c] != -1) {
      cVar1 = cVar1 + '\x01';
    }
  }
  *(char *)((int)param_1 + 0x8d3) = cVar1;
  if (iStack_28 < 1) {
    if (iStack_2c < 1) {
      return 0;
    }
    PlaySE(0x5e4);
    return 2;
  }
  PlaySE(0x5e4);
  return 1;
}

