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
undefined4 func_0x0222a3bc() __asm__("sub_0222A3BC");
undefined4 ov49_02259FE8();
undefined4 func_0x0222a3a0() __asm__("sub_0222A3A0");
undefined4 Heap_Alloc();
undefined4 ov49_02259FF8();
undefined4 ov49_02259FF0();
undefined4 ov49_02268A0C();
undefined4 ov49_02268974();
undefined4 func_0x0222a374() __asm__("sub_0222A374");
undefined4 ov49_022689A0();
undefined4 func_0x0222a3ec() __asm__("sub_0222A3EC");
undefined4 func_0x0222a330() __asm__("sub_0222A330");
undefined4 func_0x0222a324() __asm__("sub_0222A324");
undefined4 func_0x0222a35c() __asm__("sub_0222A35C");
undefined4 ov49_022689D4();
undefined4 func_0x0222a3d4() __asm__("sub_0222A3D4");
undefined4 ov49_02268490();
undefined4 ov49_02268FAC();
undefined4 ov49_02258BEC();
undefined4 ov49_02268A00();
undefined4 func_0x0222a394() __asm__("sub_0222A394");
undefined4 ov49_0225E714();
undefined4 ov49_0225E574();
undefined4 ov49_0225E760();

undefined4 * ov49_02268764(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  undefined4 *puVar9;
  
  puVar1 = (undefined4 *)Heap_Alloc(param_1,0x1c);
  iVar8 = 0x1c;
  puVar9 = puVar1;
  do {
    *(undefined1 *)puVar9 = 0;
    puVar9 = (undefined4 *)((int)puVar9 + 1);
    iVar8 = iVar8 + -1;
  } while (iVar8 != 0);
  *puVar1 = param_2;
  uVar2 = ov49_02259FE8(param_2);
  puVar1[1] = uVar2;
  uVar2 = ov49_02259FF8(param_2);
  puVar1[2] = uVar2;
  uVar2 = ov49_02259FF0(param_2);
  puVar1[3] = uVar2;
  func_0x0222a3bc(puVar1[1]);
  uVar2 = ov49_02268974();
  func_0x0222a3d4(puVar1[1]);
  uVar3 = ov49_022689A0();
  func_0x0222a3ec(puVar1[1]);
  uVar4 = ov49_022689D4();
  uVar3 = ov49_02268490(param_1,uVar2,uVar3,uVar4);
  puVar1[4] = uVar3;
  uVar3 = ov49_02268FAC(param_2,param_1);
  puVar1[5] = uVar3;
  uVar3 = ov49_02268A0C(puVar1[1],puVar1[2],param_1);
  puVar1[6] = uVar3;
  ov49_02258BEC(puVar1[3],uVar2);
  iVar8 = func_0x0222a35c(puVar1[1]);
  func_0x0222a324(puVar1[1]);
  iVar5 = func_0x0222a374(puVar1[1]);
  iVar6 = func_0x0222a3a0(puVar1[1]);
  iVar7 = func_0x0222a330(puVar1[1]);
  func_0x0222a394(puVar1[1]);
  if (iVar8 == 2) {
    ov49_0225E714(puVar1[2]);
  }
  if (((iVar8 != 1) && (iVar8 == 0)) && (iVar6 == 1)) {
    ov49_0225E760(puVar1[2],3);
  }
  if (iVar5 == 1) {
    ov49_0225E574(puVar1[2]);
  }
  if (iVar7 == 1) {
    ov49_02268A00(puVar1);
  }
  return puVar1;
}

