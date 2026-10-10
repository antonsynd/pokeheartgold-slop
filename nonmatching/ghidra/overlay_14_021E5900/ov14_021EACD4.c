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
undefined4 ov14_021E7960();
undefined4 ov14_021E79AC();
undefined4 ov14_021F2A04();
undefined4 ov14_021E6AA0();
undefined4 ov14_021E7FEC();
undefined4 ov14_021E8514();
undefined4 System_GetTouchHeldCoords();
undefined4 ov14_021F2A18();
undefined4 ov14_021F29E4();
undefined4 ov14_021E8434();
undefined4 ov14_021F69F0();
undefined4 ov14_021E80A8();
undefined4 ov14_021F3B3C();
undefined4 sub_02019978();
undefined4 ov14_021F391C();
undefined4 ov14_021F3488();
extern undefined ov14_021F7BF0;
undefined4 ov14_021E88F8();
undefined4 ov14_021F395C();
undefined4 ov14_021E7FB8();
undefined4 ov14_021F3B5C();
undefined4 ov14_021E7AD4();
undefined4 ov14_021E7B8C();

undefined4 ov14_021EACD4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  ushort uVar6;
  uint uStack_20;
  uint uStack_1c;
  undefined4 uStack_18;
  
  iVar5 = *(int *)(param_1 + 0x34);
  uStack_18 = param_4;
  iVar2 = ov14_021E8514(*(undefined4 *)(iVar5 + 0x2f0));
  iVar3 = ov14_021E80A8(param_1);
  sub_02019978(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0),10);
  switch(*(undefined2 *)(iVar5 + 0x10)) {
  case 0:
    iVar2 = *(int *)(param_1 + 0x34);
    if (*(short *)(iVar2 + 0x88c8) == 0) {
      ov14_021E8434(*(undefined4 *)(iVar2 + 0x2f0));
      *(undefined2 *)(iVar5 + 0x10) = 10;
    }
    else {
      ov14_021F391C(iVar2,1);
      ov14_021F29E4(*(undefined4 *)(param_1 + 0x34),0xb,1);
      ov14_021F2A18(*(undefined4 *)(param_1 + 0x34),0xb,1);
      *(undefined2 *)(iVar5 + 0x10) = 1;
    }
    break;
  case 1:
    iVar4 = ov14_021F2A04(*(undefined4 *)(param_1 + 0x34),0xb);
    if (iVar4 == 1) {
      return 1;
    }
    ov14_021F391C(*(undefined4 *)(param_1 + 0x34),0);
    ov14_021F3B3C(*(undefined4 *)(param_1 + 0x34));
    *(undefined2 *)(iVar5 + 0x10) = 2;
  case 2:
    if ((*(char *)(*(int *)(param_1 + 0x34) + 0x44a) == '\x01') && (iVar3 == 0)) {
      *(undefined1 *)(*(int *)(param_1 + 0x34) + 0x44a) = 2;
      ov14_021F69F0(param_1,0x28);
      ov14_021F3488(param_1,0x81,0);
    }
    iVar3 = System_GetTouchHeldCoords(&uStack_1c,&uStack_20);
    if (iVar3 == 0) {
      iVar2 = *(int *)(param_1 + 0x34);
      if (*(char *)(iVar2 + 0x44a) == '\x02') {
        uVar1 = ov14_021E7960((int)(short)*(undefined4 *)(iVar2 + 0x40b8),
                              (int)(short)*(undefined4 *)(iVar2 + 0x40bc));
      }
      else {
        uVar1 = ov14_021E79AC((int)(short)*(undefined4 *)(iVar2 + 0x40b8),
                              (int)(short)*(undefined4 *)(iVar2 + 0x40bc),&ov14_021F7BF0);
      }
      if (uVar1 == 0xff) {
        uVar6 = (ushort)*(byte *)(param_1 + 0x21);
      }
      else {
        iVar2 = ov14_021E6AA0(param_1,*(undefined1 *)(param_1 + 0x21),uVar1);
        uVar6 = uVar1;
        if (iVar2 == 0) {
          uVar6 = (ushort)*(byte *)(param_1 + 0x21);
        }
      }
      if (uVar6 == *(byte *)(param_1 + 0x21)) {
        ov14_021E8434(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
        if (*(char *)(*(int *)(param_1 + 0x34) + 0x44a) != '\0') {
          ov14_021E7FEC(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
          ov14_021F3488(param_1,1,1);
        }
      }
      else {
        ov14_021E88F8(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
      }
      ov14_021E7AD4(param_1,uVar1,uVar6,1);
      *(undefined2 *)(iVar5 + 0x10) = 3;
    }
    else {
      if (((iVar2 == 0) && (*(char *)(*(int *)(param_1 + 0x34) + 0x44a) == '\0')) &&
         ((uStack_1c < 0x10 || ((uStack_20 < 0x30 || (0x67 < uStack_1c)))))) {
        *(undefined1 *)(*(int *)(param_1 + 0x34) + 0x44a) = 1;
        ov14_021E7FB8(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
      }
      ov14_021F395C(*(undefined4 *)(param_1 + 0x34),(int)(short)uStack_1c,(int)(short)uStack_20);
      ov14_021F3B5C(*(undefined4 *)(param_1 + 0x34));
      *(uint *)(*(int *)(param_1 + 0x34) + 0x40b8) = uStack_1c;
      *(uint *)(*(int *)(param_1 + 0x34) + 0x40bc) = uStack_20;
    }
    break;
  case 3:
    iVar2 = ov14_021E7B8C(param_1);
    if (iVar2 == 0) {
      *(undefined2 *)(iVar5 + 0x10) = 10;
    }
    break;
  case 10:
    if ((iVar2 == 0) && (iVar3 == 0)) {
      if (*(short *)(*(int *)(param_1 + 0x34) + 0x88c8) != 0) {
        ov14_021F391C(*(int *)(param_1 + 0x34),0);
        ov14_021F3B3C(*(undefined4 *)(param_1 + 0x34));
      }
      *(undefined2 *)(iVar5 + 0x10) = 0;
      return 0;
    }
  }
  return 1;
}

