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
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov13_02223434();
undefined4 ov13_02222BC0();
undefined4 ov13_02223478();
undefined4 func_0x020d2444() __asm__("sub_020D2444");
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 func_0x020af9bc() __asm__("sub_020AF9BC");
undefined4 func_0x020d37e8() __asm__("sub_020D37E8");
undefined4 func_0x020d36ac() __asm__("sub_020D36AC");
undefined4 ov13_02223634();
undefined4 func_0x020d3854() __asm__("sub_020D3854");
extern undefined1 uRam0224de81 __asm__("sub_0224DE81");
extern ushort uRam0224ddca __asm__("sub_0224DDCA");
extern undefined1 uRam0224de80 __asm__("sub_0224DE80");
undefined4 ov13_02222BE4();

int ov13_02222F28(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  bool bVar2;
  int iVar3;
  uint unaff_r5;
  uint uVar4;
  int iStack_50;
  int iStack_4c;
  undefined4 uStack_48;
  undefined1 auStack_44 [44];
  undefined4 uStack_18;
  
  bVar2 = true;
  iStack_4c = -1;
  bVar1 = false;
  if (param_1[9] == 0) {
    unaff_r5 = 0x80000;
  }
  else if (param_1[9] == 1) {
    unaff_r5 = 0xc0000;
  }
  uVar4 = unaff_r5 | 0x30000;
  uStack_18 = param_4;
  func_0x020d4994(0x224de80,0,0x60);
  iVar3 = param_1[10];
  if (iVar3 == 5) {
    uRam0224de80 = 1;
  }
  else if (iVar3 == 0xd) {
    uRam0224de80 = 2;
  }
  else {
    if (iVar3 != 0x10) {
      return -1;
    }
    uRam0224de80 = 3;
  }
  uRam0224de81 = 0;
  func_0x020d4a50(param_1 + 0xb,0x224de82,param_1[10]);
  func_0x020af9bc();
  iVar3 = ov13_02223478(0,param_1 + 1,*param_1,0x30bffe);
  if (iVar3 != 0) {
    iStack_50 = 0;
    func_0x020d36ac(auStack_44);
    func_0x020d37e8(auStack_44,0x3fec42,0,0x2222c09,0x12);
LAB_022230a4:
    if (bVar2) {
      func_0x020d2444(0x224dda0,&uStack_48,1);
      switch(uStack_48) {
      default:
        bVar2 = false;
      case 4:
      case 8:
        goto LAB_022230a4;
      case 5:
        if (!bVar1) {
          func_0x020d3854(auStack_44);
          iVar3 = ov13_02223434(0x224ddc0,1);
          if (iVar3 == 1) {
            ov13_02222BC0(param_1,0x224ddc0);
            for (iVar3 = 0; iVar3 < (int)(uint)uRam0224ddca; iVar3 = iVar3 + 1) {
            }
            iVar3 = ov13_02223634(0x224ddc0,0x224de80,uVar4);
            if (iVar3 == 0) {
              bVar2 = false;
            }
            else {
              bVar1 = true;
            }
          }
          else {
            bVar2 = false;
          }
        }
        goto LAB_022230a4;
      case 10:
        ov13_02222BC0(param_1,0x224ddc0);
        iVar3 = ov13_02223634(0x224ddc0,0x224de80,uVar4);
        if (iVar3 == 0) {
          bVar2 = false;
        }
        goto LAB_022230a4;
      case 0xc:
        bVar2 = false;
        iStack_4c = 0;
        goto LAB_022230a4;
      case 0xd:
        iStack_50 = iStack_50 + 1;
        if (iStack_50 < 3) {
          iVar3 = ov13_02223634(0x224ddc0,0x224de80,uVar4);
          if (iVar3 == 0) {
            bVar2 = false;
          }
        }
        else {
          bVar2 = false;
        }
        goto LAB_022230a4;
      case 0x12:
        if (bVar1) goto LAB_022230a4;
        bVar2 = false;
      case 0x13:
        goto LAB_022230a4;
      }
    }
    func_0x020d3854(auStack_44);
    do {
      iVar3 = func_0x020d2444(0x224dda0,&uStack_48,0);
    } while (iVar3 == 1);
  }
  ov13_02222BE4(param_2,0x224ddc0,iStack_4c == 0);
  return iStack_4c;
}

