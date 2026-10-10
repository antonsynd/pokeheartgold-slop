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
undefined4 func_0x020ccf80(void *) __asm__("sub_020CCF80");
undefined4 func_0x020ccdac(void *, void *, void *) __asm__("sub_020CCDAC");
undefined4 GF_AssertFail(void);
undefined4 func_0x020f2104(void) __asm__("sub_020F2104");
undefined4 ov96_021E8228();
undefined4 func_0x020f22dc() __asm__("sub_020F22DC");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x020f2178() __asm__("sub_020F2178");
extern undefined ov96_0221C98C;

void ov96_02203544(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  uint extraout_r1;
  uint extraout_r1_00;
  int iVar6;
  int iVar7;
  int iVar8;
  undefined4 uVar9;
  int iStack_40;
  int iStack_3c;
  undefined *puStack_38;
  int iStack_34;
  int iStack_30;
  undefined1 auStack_24 [12];
  undefined4 uStack_18;

  iStack_30 = 0;
  puStack_38 = &ov96_0221C98C;
  iVar6 = param_2;
  uStack_18 = param_4;
  do {
    iStack_34 = 0;
    *(undefined1 *)(iVar6 + 0x433) = 0;
    iStack_3c = param_2 + 200;
    iStack_40 = param_2 + 0xd4;
    uVar2 = func_0x020f2998(iStack_30,3);
    func_0x020f2998(iStack_30,3);
    iVar7 = param_2;
    iVar8 = param_2;
    do {
      if ((*(int *)(iVar7 + 0xc4) == 1) && (uVar3 = func_0x020f2998(iStack_34,3), uVar3 != uVar2)) {
        func_0x020ccdac(puStack_38,iStack_3c,auStack_24);
        iVar4 = func_0x020ccf80(auStack_24);
        if (iVar4 < 0x3000) {
          *(undefined4 *)(iVar7 + 0xc4) = 3;
          func_0x020f2998(iStack_34,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1_00) : : "cc");
          ov96_021E8228(param_1,uVar3 & 0xff,extraout_r1_00 & 0xff,3,1);
          *(short *)(iVar8 + 0x42c) = *(short *)(iVar8 + 0x42c) + 1;
          if (999 < *(ushort *)(iVar8 + 0x42c)) {
            *(undefined2 *)(iVar8 + 0x42c) = 999;
          }
          *(undefined1 *)(iVar7 + 0xfb) = 1;
          *(undefined1 *)(iVar6 + 0x433) = 1;
          switch(*(undefined2 *)(iVar7 + 0xfe)) {
          case 0:
            uVar9 = 0x3f800000;
            break;
          case 1:
            uVar9 = 0x41a00000;
            break;
          case 2:
            uVar9 = 0x42480000;
            break;
          case 3:
            uVar9 = 0x42c80000;
            break;
          default:
            GF_AssertFail();
            uVar9 = 0x3f800000;
          }
          *(undefined2 *)(iVar7 + 0xfe) = 0;
          *(undefined2 *)(iVar7 + 0xfc) = 0;
          iVar4 = func_0x020ccf80(iStack_40);
          uVar5 = func_0x020f2178((int)(iVar4 + ((uint)(iVar4 >> 0xb) >> 0x14)) >> 0xc);
          uVar9 = func_0x020f22dc(uVar5,uVar9);
          uVar9 = func_0x020f22dc(uVar9,*(undefined4 *)(iVar8 + 0x420));
          func_0x020f22dc(*(undefined4 *)(iVar6 + 0x424),uVar9);
          iVar4 = func_0x020f2104();
          if (iVar4 < 0) {
            GF_AssertFail(); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
          }
          *(short *)(iVar6 + 0x42e) = (*(short *)(iVar6 + 0x42e) - (short)iVar4) + -0x1e;
          if (*(short *)(iVar6 + 0x42e) < 0) {
            *(undefined2 *)(iVar6 + 0x42e) = 0;
          }
          uVar3 = 0x78 - (int)*(short *)(iVar6 + 0x42e);
          cVar1 = (char)uVar3;
          if (*(char *)(iVar6 + 0x430) == '\0') {
            if (0x28 < (uVar3 & 0xff)) {
              *(char *)(iVar6 + 0x430) = cVar1;
              ov96_021E8228(param_1,uVar2 & 0xff,extraout_r1 & 0xff,1,1);
            }
          }
          else {
            *(char *)(iVar6 + 0x430) = *(char *)(iVar6 + 0x430) + cVar1;
            ov96_021E8228(param_1,uVar2 & 0xff,extraout_r1 & 0xff,1,1);
          }
        }
      }
      iVar7 = iVar7 + 0x48;
      iStack_3c = iStack_3c + 0x48;
      iVar8 = iVar8 + 0x20;
      iStack_40 = iStack_40 + 0x48;
      iStack_34 = iStack_34 + 1;
    } while (iStack_34 < 0xc);
    iVar6 = iVar6 + 0x20;
    puStack_38 = puStack_38 + 0xc;
    iStack_30 = iStack_30 + 1;
  } while (iStack_30 < 0xc);
  return;
}

