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
undefined4 ov13_02223AE4();
undefined4 ov13_02223B28();
undefined4 OS_Sleep();
undefined4 ov13_02226CD8();
undefined4 func_0x020d37e8() __asm__("sub_020D37E8");
undefined4 func_0x020d36ac() __asm__("sub_020D36AC");
undefined4 ov13_02226CBC();
undefined4 func_0x020d3854() __asm__("sub_020D3854");
extern undefined4 iRam0224df40 __asm__("sub_0224DF40");
extern int iRam0224dfa0 __asm__("sub_0224DFA0");
extern int iRam0224df8c __asm__("sub_0224DF8C");
undefined4 func_0x020e5ad8() __asm__("sub_020E5AD8");
undefined4 ov13_02226D40();
undefined4 ov13_02226CFC();
undefined4 ov13_02226F3C();
undefined4 func_0x020e959c() __asm__("sub_020E959C");
undefined4 ov13_02224164();
extern byte uRam0224e3e3 __asm__("sub_0224E3E3");
extern byte uRam0224e3e4 __asm__("sub_0224E3E4");
extern byte uRam0224e3e0 __asm__("sub_0224E3E0");
extern byte uRam0224e3e5 __asm__("sub_0224E3E5");
extern undefined4 iRam0224df68 __asm__("sub_0224DF68");
extern byte uRam0224e3e1 __asm__("sub_0224E3E1");
extern byte uRam0224e3e2 __asm__("sub_0224E3E2");
extern int iRam0224df48 __asm__("sub_0224DF48");

undefined4 ov13_02224330(void)

{
  undefined1 *puVar1;
  bool bVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  undefined4 in_r3;
  undefined4 uVar8;
  int *piVar9;
  int *piVar10;
  int *piStack_84;
  int iStack_80;
  int iStack_70;
  int iStack_6c;
  int iStack_68;
  undefined1 auStack_64 [44];
  undefined1 auStack_38 [32];
  undefined4 uStack_18;
  
  iStack_80 = 0;
  iStack_68 = 0;
  iVar3 = iRam0224dfa0 * 0x30 + 0x34;
  uVar8 = 0xffffffff;
  uStack_18 = in_r3;
  piVar4 = (int *)ov13_02226CD8(1,iVar3);
  if ((piVar4 != (int *)0x0) && (iStack_80 = ov13_02226CD8(1,iVar3), iStack_80 != 0)) {
    iStack_6c = 0;
    do {
      if (((0x1d < iStack_6c) || (iRam0224df40 != 0)) ||
         (uVar5 = ov13_02226CBC(), 0xfffffffe < uVar5)) goto LAB_02224566;
      iVar6 = ov13_02223B28(0,0,0,0x30bffe);
      if (iVar6 == 0) {
        uVar8 = 0xfffffffe;
        break;
      }
      func_0x020d36ac(auStack_64);
      func_0x020d37e8(auStack_64,0xffb10,0,0x2223ed5,0x13);
      iVar6 = 0;
      do {
        bVar2 = true;
        OS_Sleep(10);
        uVar5 = ov13_02226CBC();
        if ((0xfffffffe < uVar5) || (iRam0224df40 != 0)) break;
        iVar7 = ov13_02223E6C();
        while (iVar7 != 0) {
          switch(iVar7) {
          default:
            bVar2 = false;
            break;
          case 4:
          case 8:
          case 0x12:
            break;
          case 5:
            iVar7 = ov13_02223AE4(iRam0224df8c,iRam0224dfa0);
            if (iVar6 < iVar7) {
              func_0x020d3854(auStack_64);
              func_0x020d37e8(auStack_64,0xffb10,0,0x2223ed5,0x13);
              iVar6 = iVar7;
            }
            break;
          case 10:
            bVar2 = false;
            break;
          case 0x13:
            bVar2 = false;
          }
          iVar7 = ov13_02223E6C();
        }
      } while (bVar2);
      func_0x020d3854(auStack_64);
      do {
        iVar7 = ov13_02223E6C();
      } while (iVar7 != 0);
      if (iRam0224df40 != 0) goto LAB_02224566;
      if (iRam0224dfa0 <= iVar6) {
        uVar8 = 0xfffffffa;
        break;
      }
      iStack_70 = 0;
      if ((0 < iVar6) && (0 < iVar6)) {
        piStack_84 = piVar4 + 2;
        piVar9 = piVar4 + 0xb;
        iVar7 = iRam0224df8c;
        piVar10 = piVar4;
        do {
          func_0x020e5ad8(piStack_84,iVar7 + 0xc,0x20);
          piVar10[1] = (uint)*(ushort *)(iVar7 + 10);
          *(undefined1 *)((int)piVar10 + *(ushort *)(iVar7 + 10) + 8) = 0;
          *(ushort *)((int)piVar10 + 0x32) = (ushort)((*(ushort *)(iVar7 + 0x2c) & 0x10) != 0);
          piVar10 = piVar10 + 0xc;
          *(undefined1 *)piVar9 = *(undefined1 *)(iVar7 + 4);
          *(undefined1 *)((int)piVar9 + 1) = *(undefined1 *)(iVar7 + 5);
          *(undefined1 *)((int)piVar9 + 2) = *(undefined1 *)(iVar7 + 6);
          *(undefined1 *)((int)piVar9 + 3) = *(undefined1 *)(iVar7 + 7);
          *(undefined1 *)(piVar9 + 1) = *(undefined1 *)(iVar7 + 8);
          puVar1 = (undefined1 *)(iVar7 + 9);
          iVar7 = iVar7 + 0xc0;
          *(undefined1 *)((int)piVar9 + 5) = *puVar1;
          piVar9 = piVar9 + 0xc;
          piStack_84 = piStack_84 + 0xc;
          iStack_70 = iStack_70 + 1;
        } while (iStack_70 < iVar6);
      }
      *piVar4 = iVar6;
      if ((iRam0224df68 != 1) &&
         (iVar7 = ov13_02224164(piVar4,iStack_80,&iStack_68), iVar6 = iStack_68, iVar7 != 0))
      goto code_r0x022244fc;
      func_0x020e5ad8(iStack_80,piVar4,iVar3);
      iRam0224df68 = 2;
      ov13_02226F3C();
      iStack_6c = iStack_6c + 1;
    } while( true );
  }
LAB_0222458e:
  if (piVar4 != (int *)0x0) {
    ov13_02226CFC();
  }
  if (iStack_80 != 0) {
    ov13_02226CFC();
  }
  return uVar8;
code_r0x022244fc:
  iVar3 = iStack_68 * 0x30;
  iRam0224df48 = iStack_68;
  func_0x020e959c(0x224e440,piVar4 + iStack_68 * 0xc + 2);
  uRam0224e3e0 = (undefined1)piVar4[iVar6 * 0xc + 0xb];
  uRam0224e3e1 = *(undefined1 *)((int)piVar4 + iVar3 + 0x2d);
  uRam0224e3e2 = *(undefined1 *)((int)piVar4 + iVar3 + 0x2e);
  uRam0224e3e3 = *(undefined1 *)((int)piVar4 + iVar3 + 0x2f);
  uRam0224e3e4 = (undefined1)piVar4[iVar6 * 0xc + 0xc];
  uRam0224e3e5 = *(undefined1 *)((int)piVar4 + iVar3 + 0x31);
  ov13_02226D40(auStack_38);
LAB_02224566:
  if (iStack_6c < 0x1e) {
    ov13_02226CBC();
    if (iRam0224df40 == 0) {
      uVar8 = 1;
    }
    else {
      uVar8 = 0xfffffff8;
    }
  }
  else {
    uVar8 = 0xfffffffd;
  }
  goto LAB_0222458e;
}

