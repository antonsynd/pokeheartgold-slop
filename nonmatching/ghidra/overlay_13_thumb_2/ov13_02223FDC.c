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
typedef void code(void);
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
undefined4 ov13_02223E6C();
undefined4 ov13_02223CA0();
undefined4 OS_Sleep();
undefined4 func_0x020a33fc() __asm__("sub_020A33FC");
undefined4 func_0x020d37e8() __asm__("sub_020D37E8");
undefined4 func_0x020d36ac() __asm__("sub_020D36AC");
undefined4 ov13_02226CBC();
undefined4 func_0x020d3854() __asm__("sub_020D3854");
extern int uRam0224df50 __asm__("sub_0224DF50");
extern int uRam0224df54 __asm__("sub_0224DF54");
extern undefined4 iRam0224df40 __asm__("sub_0224DF40");
extern undefined ov13_02245A6C;
extern int iRam0224df48 __asm__("sub_0224DF48");
extern int iRam0224df8c __asm__("sub_0224DF8C");

int ov13_02223FDC(void)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  undefined4 in_r3;
  int iVar4;
  int iVar5;
  undefined1 auStack_44 [44];
  undefined4 uStack_18;

  bVar1 = true;
  iVar4 = -2;
  iVar5 = iRam0224df8c + iRam0224df48 * 0xc0;
  if (iVar5 == 0) {
    return 0;
  }
  uStack_18 = in_r3;
  iVar2 = ov13_02223CA0(iVar5,0,0x30000);
  if (iVar2 == 0) {
    return -2;
  }
  func_0x020d36ac(auStack_44);
  func_0x020d37e8(auStack_44,0x3fec42,0,0x2223ed5,0x12);
  while( true ) {
    uVar3 = ov13_02226CBC();
    if (0xfffffffe < uVar3) {
      iVar4 = -3;
      goto LAB_022240b8;
    }
    if (iRam0224df40 != 0) break;
    OS_Sleep(10);
    iVar2 = ov13_02223E6C();
    while (iVar2 != 0) {
      if (iVar2 < 0xd) {
        if (iVar2 < 0xc) {
          if (((5 < iVar2) || (iVar2 < 4)) || ((iVar2 != 4 && (iVar2 != 5)))) goto LAB_022240aa;
        }
        else {
          bVar1 = false;
          iVar4 = 1;
        }
      }
      else if ((iVar2 < 0x14) && (0xc < iVar2)) {
        if (iVar2 == 0xd) {
          if (iRam0224df40 == 0) {
            iVar2 = ov13_02223CA0(iVar5,0,0x30000);
            if (iVar2 == 0) {
              return iVar4;
            }
          }
          else {
            bVar1 = false;
            iVar4 = -8;
          }
        }
        else if ((iVar2 != 0x12) && (iVar2 != 0x13)) goto LAB_022240aa;
      }
      else {
LAB_022240aa:
        bVar1 = false;
      }
      iVar2 = ov13_02223E6C();
    }
    if (!bVar1) {
LAB_022240b8:
      func_0x020d3854(auStack_44);
      do {
        iVar5 = ov13_02223E6C();
      } while (iVar5 != 0);
      if (0 < iVar4) {
        uRam0224df50 = 1;
        iVar5 = func_0x020a33fc(&ov13_02245A6C);
        if (iVar5 < 0) {
          iVar4 = -2;
        }
        else {
          uRam0224df54 = 1;
        }
      }
      return iVar4;
    }
  }
  iVar4 = -8;
  goto LAB_022240b8;
}

