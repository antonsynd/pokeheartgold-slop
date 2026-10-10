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
undefined4 ov108_021E91F8();
undefined4 func_0x0201f668() __asm__("sub_0201F668");
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 func_0x0201f64c() __asm__("sub_0201F64C");
undefined4 func_0x020c3b40() __asm__("sub_020C3B40");
undefined4 NARC_ReadWholeMember();
undefined4 ov108_021E9198();
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 func_0x020be120() __asm__("sub_020BE120");
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 GfGfxLoader_LoadFromOpenNarc();
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 func_0x020d2828() __asm__("sub_020D2828");
extern undefined UNK_021ea9e8 __asm__("sub_021EA9E8");
extern undefined UNK_021ea9e6 __asm__("sub_021EA9E6");
undefined4 func_0x020235d4() __asm__("sub_020235D4");
extern undefined UNK_021ea9ea __asm__("sub_021EA9EA");
extern undefined ov108_021EA9E4;

void ov108_021E8F00(undefined4 *param_1,int param_2,undefined1 *param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  char *pcVar4;
  undefined4 *puVar5;
  int iStack_34;
  char cStack_30;
  char cStack_2f;
  int aiStack_28 [4];
  undefined4 uStack_18;
  
  puVar5 = param_1 + 9;
  uStack_18 = param_4;
  uVar1 = GfGfxLoader_LoadFromOpenNarc(param_1[6],*param_3,0,param_1[5],0);
  param_1[9] = uVar1;
  iVar2 = func_0x020c3b40();
  param_1[10] = iVar2;
  if (iVar2 != 0) {
    if ((iVar2 + 8 == 0) || (*(char *)(iVar2 + 9) == '\0')) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)(iVar2 + 8 + (uint)*(ushort *)(iVar2 + 0xe) + 4);
    }
    if (piVar3 != (int *)0x0) {
      iVar2 = iVar2 + *piVar3;
      goto LAB_021e8f4e;
    }
  }
  iVar2 = 0;
LAB_021e8f4e:
  param_1[0xb] = iVar2;
  iVar2 = func_0x020c3b50(*puVar5);
  param_1[0xc] = iVar2;
  if (iVar2 != 0) {
    func_0x0201f668();
    func_0x0201f64c(*puVar5,param_1[0xc]);
  }
  func_0x020be120(param_1 + 0xd,param_1[0xb]);
  func_0x020d2828();
  *(undefined2 *)(param_1 + 0x36) = 1;
  NARC_ReadWholeMember(param_1[7],*param_3,&cStack_30);
  if ((cStack_30 != '\0') && (cStack_2f != '\b')) {
    iStack_34 = 0;
    pcVar4 = &cStack_30;
    do {
      if (*(int *)(pcVar4 + 8) == -1) break;
      ov108_021E9198(param_1,puVar5,param_1 + (uint)*(ushort *)((int)param_1 + 0xda) * 5 + 0x22,
                     *(int *)(pcVar4 + 8));
      ov108_021E91F8(puVar5,param_1 + (uint)*(ushort *)((int)param_1 + 0xda) * 5 + 0x22);
      pcVar4 = pcVar4 + 4;
      *(short *)((int)param_1 + 0xda) = *(short *)((int)param_1 + 0xda) + 1;
      iStack_34 = iStack_34 + 1;
    } while (iStack_34 < 4);
  }
  param_2 = param_2 * 8;
  iVar2 = (int)*(short *)(&UNK_021ea9e6 + param_2);
  if (iVar2 < 1) {
    uVar1 = func_0x020f2178(iVar2 << 0xc);
    func_0x020f24c8(uVar1,0x3f000000);
  }
  else {
    uVar1 = func_0x020f2178(iVar2 << 0xc);
    func_0x020f1520(0x3f000000,uVar1);
  }
  uVar1 = func_0x020f2104();
  param_1[0x37] = uVar1;
  iVar2 = (int)*(short *)(&UNK_021ea9e8 + param_2);
  if (iVar2 < 1) {
    uVar1 = func_0x020f2178(iVar2 << 0xc);
    func_0x020f24c8(uVar1,0x3f000000);
  }
  else {
    uVar1 = func_0x020f2178(iVar2 << 0xc);
    func_0x020f1520(0x3f000000,uVar1);
  }
  uVar1 = func_0x020f2104();
  param_1[0x38] = uVar1;
  iVar2 = (int)*(short *)(&UNK_021ea9ea + param_2);
  if (iVar2 < 1) {
    uVar1 = func_0x020f2178(iVar2 << 0xc);
    func_0x020f24c8(uVar1,0x3f000000);
  }
  else {
    uVar1 = func_0x020f2178(iVar2 << 0xc);
    func_0x020f1520(0x3f000000,uVar1);
  }
  uVar1 = func_0x020f2104();
  param_1[0x39] = uVar1;
  if (*(ushort *)(&ov108_021EA9E4 + param_2) == 0) {
    uVar1 = func_0x020f2178(0);
    func_0x020f24c8(uVar1,0x3f000000);
  }
  else {
    uVar1 = func_0x020f2178((uint)*(ushort *)(&ov108_021EA9E4 + param_2) << 0xc);
    func_0x020f1520(0x3f000000,uVar1);
  }
  uVar1 = func_0x020f2104();
  func_0x020235d4(uVar1,*param_1);
  return;
}

