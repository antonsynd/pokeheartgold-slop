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
undefined4 func_0x020d36ac() __asm__("sub_020D36AC");
undefined4 ov13_02223568();
undefined4 ov13_02223478();
undefined4 func_0x020d3854() __asm__("sub_020D3854");
undefined4 func_0x020d37e8() __asm__("sub_020D37E8");
undefined4 ov13_02222B34();
undefined4 ov13_02223434();
undefined4 func_0x020d2444() __asm__("sub_020D2444");
extern code *pcRam0224dd80 __asm__("sub_0224DD80");
extern code *pcRam0224dd8c __asm__("sub_0224DD8C");

undefined4 ov13_02222DB0(int *param_1)

{
  bool bVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined1 auStack_40 [44];
  
  uStack_48 = 0xffffffff;
  bVar2 = true;
  bVar1 = false;
  iVar7 = 0;
  iVar6 = 0;
  if ((pcRam0224dd80 == (code *)0x0) || (pcRam0224dd8c == (code *)0x0)) {
    return 0xffffffff;
  }
  iVar3 = (*pcRam0224dd80)(0x3000);
  if (iVar3 == 0) {
    return 0xffffffff;
  }
  iVar4 = ov13_02223478(0,0,0,0x30bffe);
  if (iVar4 != 0) {
    func_0x020d36ac(auStack_40);
    func_0x020d37e8(auStack_40,0x3fec42,0,0x2222c09,0x13);
    do {
      func_0x020d2444(0x224dda0,&uStack_44,1);
      switch(uStack_44) {
      default:
        goto LAB_02222eea;
      case 4:
      case 8:
      case 0x12:
        break;
      case 5:
        if (!bVar1) {
          if (iVar6 < 8) {
            iVar6 = iVar6 + 1;
          }
          else {
            iVar7 = ov13_02223434(iVar3,0x40);
            iVar4 = ov13_02223568();
            if (iVar4 == 0) goto LAB_02222eea;
            bVar1 = true;
          }
        }
        break;
      case 10:
        bVar2 = false;
        uStack_48 = 0;
        break;
      case 0x13:
        if (!bVar1) {
          if (iVar6 != 0) {
            iVar7 = ov13_02223434(iVar3,0x40);
          }
          iVar4 = ov13_02223568();
          if (iVar4 == 0) goto LAB_02222eea;
          bVar1 = true;
        }
      }
    } while (bVar2);
    if (iVar7 == 0) {
      piVar5 = (int *)(*pcRam0224dd80)(0x58);
    }
    else {
      piVar5 = (int *)(*pcRam0224dd80)((iVar7 + -1) * 0x54 + 0x58);
    }
    if (piVar5 != (int *)0x0) {
      iVar6 = 0;
      *param_1 = (int)piVar5;
      *piVar5 = iVar7;
      if (0 < iVar7) {
        piVar5 = piVar5 + 1;
        iVar4 = iVar3;
        do {
          ov13_02222B34(iVar4,piVar5);
          iVar6 = iVar6 + 1;
          iVar4 = iVar4 + 0xc0;
          piVar5 = piVar5 + 0x15;
        } while (iVar6 < iVar7);
      }
    }
LAB_02222eea:
    func_0x020d3854(auStack_40);
    do {
      iVar7 = func_0x020d2444(0x224dda0,&uStack_44,0);
    } while (iVar7 == 1);
  }
  (*pcRam0224dd8c)(iVar3);
  return uStack_48;
}

