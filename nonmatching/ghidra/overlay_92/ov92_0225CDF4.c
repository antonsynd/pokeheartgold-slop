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
undefined4 func_0x02258920() __asm__("sub_02258920");
undefined4 OverlayManager_GetData();
undefined4 func_0x02258938() __asm__("sub_02258938");
undefined4 ov92_0225D868();
undefined4 ov92_0225D88C();
undefined4 ov92_0225E070();
undefined4 sub_02037030();
undefined4 ov92_0226156C();
undefined4 ov92_0225E1A8();
undefined4 ov92_0225CC6C();
undefined4 ov92_0225D8E4();
undefined4 ov92_0225C5C4();
undefined4 func_0x022589cc() __asm__("sub_022589CC");
undefined4 ov92_02261B18();
undefined4 func_0x02258ce0() __asm__("sub_02258CE0");
undefined4 IsPaletteFadeFinished();
undefined4 func_0x02258c8c() __asm__("sub_02258C8C");
undefined4 func_0x022589bc() __asm__("sub_022589BC");
undefined4 ov92_0225D8C4();
undefined4 ov92_0225FC2C();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 ov92_0225E100();
undefined4 func_0x022589ec() __asm__("sub_022589EC");
undefined4 sub_02037AC0();
undefined4 ov92_0225D344();
undefined4 func_0x021e6a4c() __asm__("sub_021E6A4C");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov92_0225E360();
undefined4 ov92_0225D1FC();
undefined4 func_0x02258aa4() __asm__("sub_02258AA4");
undefined4 ov92_0225EB70();
undefined4 func_0x02258aa8() __asm__("sub_02258AA8");
undefined4 func_0x02258cb0() __asm__("sub_02258CB0");
undefined4 ov92_0226077C();
undefined4 func_0x02258aa0() __asm__("sub_02258AA0");
undefined4 func_0x02258a04() __asm__("sub_02258A04");
undefined4 ov92_0225E008();
undefined4 ov92_0225DA40();
undefined4 sub_02037B38();

undefined4 ov92_0225CDF4(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 *puVar6;
  
  puVar2 = (undefined4 *)OverlayManager_GetData();
  iVar3 = ov92_0225D8E4();
  if (iVar3 != 0) {
    if (iVar3 == 1) {
      return 0;
    }
    if (iVar3 == 2) {
      return 1;
    }
  }
  switch(*param_2) {
  case 0:
    uVar4 = func_0x02258920(puVar2 + 0x23,0x71);
    puVar2[0x27] = uVar4;
    ov92_0225D88C(puVar2,1,1,param_2,param_4);
    break;
  case 1:
    uVar4 = func_0x022589bc(puVar2[0x27]);
    ov92_0225D88C(puVar2,uVar4,2,param_2,param_4);
    break;
  case 2:
    uVar1 = func_0x022589cc(puVar2[0x27]);
    *(undefined1 *)(puVar2 + 5) = uVar1;
    func_0x02258938(puVar2[0x27]);
    puVar2[0x27] = 0;
    ov92_0225C5C4(puVar2);
    ov92_0225D88C(puVar2,1,3,param_2);
    break;
  case 3:
    uVar4 = ov92_0225D868(0x1b);
    ov92_0225E1A8(puVar2,puVar2[1]);
    ov92_0225D88C(puVar2,uVar4,4,param_2,param_4);
    break;
  case 4:
    uVar4 = IsPaletteFadeFinished();
    ov92_0225D88C(puVar2,uVar4,5,param_2,param_4);
    break;
  case 5:
    ov92_0225E070(puVar2[1]);
    ov92_0226156C(puVar2[1]);
    ov92_02261B18(puVar2[1]);
    ov92_0225D88C(puVar2,1,6,param_2);
    break;
  case 6:
    iVar3 = ov92_0225CC6C(puVar2[1]);
    if ((iVar3 != 0) && (iVar5 = ov92_0225D8C4(puVar2), iVar5 == 1)) {
      puVar2[6] = puVar2[0x20];
      sub_02037030(0x16,puVar2 + 5,8);
    }
    ov92_0225D88C(puVar2,iVar3,7,param_2,param_4);
    break;
  case 7:
    ov92_0225D88C(puVar2,puVar2[2],8,param_2,param_4);
    break;
  case 8:
    func_0x02258c8c(puVar2[0x21]);
    ov92_0225D88C(puVar2,1,9,param_2,param_4);
    break;
  case 9:
    iVar3 = func_0x02258ce0(puVar2[0x21]);
    if (iVar3 != 0) {
      ov92_0225E360(puVar2[1]);
      ov92_0225E100(puVar2[1]);
    }
    ov92_0225D88C(puVar2,iVar3,10,param_2,param_4);
    break;
  case 10:
    iVar3 = puVar2[3];
    if ((iVar3 != 0) && (*(int *)(puVar2[1] + 0x2ae4) < 0x4b0)) {
      iVar3 = 0;
    }
    if (iVar3 == 0) {
      iVar5 = ov92_0225D8C4(puVar2);
      if ((iVar5 == 1) && (iVar5 = ov92_0225EB70(*puVar2), iVar5 == 0)) {
        func_0x02006154(0x589,0);
        sub_02037030(0x17,0,0);
      }
      ov92_0225FC2C(puVar2[1]);
    }
    ov92_0225D88C(puVar2,iVar3,0xb,param_2,param_4);
    break;
  case 0xb:
    func_0x02006154(0x58b,0);
    func_0x02006154(0x589,0);
    func_0x02258cb0(puVar2[0x21]);
    ov92_0225D88C(puVar2,1,0xc,param_2);
    break;
  case 0xc:
    uVar4 = func_0x02258ce0(puVar2[0x21]);
    ov92_0225D88C(puVar2,uVar4,0xd,param_2,param_4);
    break;
  case 0xd:
    iVar3 = func_0x020f2998(*(undefined4 *)(puVar2[1] + 0x2af0),10);
    puVar2[7] = iVar3 * 100;
    if (99999 < (uint)(iVar3 * 100)) {
      puVar2[7] = 100000;
    }
    if (*(int *)(puVar2[1] + 0x2b94) == 0) {
      puVar2[7] = 1;
    }
    sub_02037030(0x19,puVar2 + 7,8);
    ov92_0225D88C(puVar2,1,0xe,param_2,param_4);
    break;
  case 0xe:
    iVar3 = 0;
    iVar5 = 0;
    puVar6 = puVar2;
    do {
      if (puVar6[9] != 0) {
        iVar3 = iVar3 + 1;
      }
      iVar5 = iVar5 + 1;
      puVar6 = puVar6 + 2;
    } while (iVar5 < 4);
    ov92_0225D88C(puVar2,iVar3 == *(int *)(puVar2[1] + 4),0xf,param_2,param_4);
    break;
  case 0xf:
    uVar4 = ov92_0225D868(0x1a);
    ov92_0225D88C(puVar2,uVar4,0x10,param_2,param_4);
    break;
  case 0x10:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 != 0) {
      ov92_0225D1FC(puVar2);
    }
    ov92_0225D88C(puVar2,iVar3,0x11,param_2,param_4);
    break;
  case 0x11:
    iVar3 = 0;
    puVar6 = puVar2;
    do {
      iVar5 = ov92_0226077C(puVar2,iVar3);
      if ((iVar5 != 0xff) && (puVar2[iVar5 + 0x28] = puVar6[9], (uint)puVar2[iVar5 + 0x28] < 2)) {
        puVar2[iVar5 + 0x28] = 0;
      }
      iVar3 = iVar3 + 1;
      puVar6 = puVar6 + 2;
    } while (iVar3 < 4);
    func_0x02258aa8(puVar2 + 0x28,*(undefined1 *)(puVar2 + 0x25));
    uVar4 = func_0x022589ec(puVar2 + 0x23,puVar2 + 0x28,0x71);
    puVar2[0x2e] = uVar4;
    ov92_0225D88C(puVar2,1,0x12,param_2);
    break;
  case 0x12:
    iVar3 = func_0x02258aa0(puVar2[0x2e]);
    if (iVar3 != 0) {
      iVar5 = func_0x02258aa4(puVar2[0x2e]);
      func_0x02258a04(puVar2[0x2e]);
      puVar2[0x2e] = 0;
      if (iVar5 != 0) {
        puVar2[0x33] = 1;
        ov92_0225D344(puVar2);
        ov92_0225D88C(puVar2,iVar3,0,param_2);
        if (*(int *)(puVar2[0x22] + 0x3c) != 0) {
          func_0x021e6a4c();
        }
        break;
      }
    }
    ov92_0225D88C(puVar2,iVar3,0x13,param_2,param_4);
    break;
  case 0x13:
    sub_02037AC0(0x1b);
    if (*(int *)(puVar2[0x22] + 0x3c) != 0) {
      func_0x021e6a4c();
    }
    ov92_0225D88C(puVar2,1,0x14,param_2,param_4);
    break;
  default:
    iVar3 = sub_02037B38(0x1b);
    if (iVar3 == 1) {
      return 1;
    }
    return 0;
  }
  if ((2 < *param_2) && (*param_2 < 0x10)) {
    ov92_0225E008(puVar2[1]);
    ov92_0225DA40(puVar2);
  }
  return 0;
}

