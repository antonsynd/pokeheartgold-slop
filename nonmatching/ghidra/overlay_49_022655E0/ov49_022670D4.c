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
undefined4 ov49_02265628();
undefined4 ov49_02259130();
undefined4 ov49_02259148();
undefined4 func_0x020182b0() __asm__("sub_020182B0");
undefined4 ov49_02265434();
undefined4 ov49_02259154();
undefined4 ov49_02265660();
undefined4 ov49_02259160();
undefined4 ov49_02258DAC();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov49_022655E0();
undefined4 ov49_0225919C();
undefined4 ov49_02258E60();
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 ov49_0225CC40();
undefined4 ov49_02265668();
extern undefined FX_SinCosTable_;
undefined4 ov49_0226789C();
undefined4 ov49_0226786C();

undefined4 ov49_022670D4(int param_1,int param_2)

{
  short sVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iStack_50;
  int iStack_4c;
  int iStack_48;
  int iStack_44;
  int iStack_40;
  int iStack_3c;
  int iStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined1 auStack_2c [4];
  int iStack_28;
  undefined1 auStack_20 [4];
  undefined4 uStack_1c;
  undefined1 auStack_18 [4];
  
  switch(*(undefined1 *)(param_2 + 0x954)) {
  case 0:
    *(short *)(param_2 + 0x956) = *(short *)(param_2 + 0x956) + 1;
    if (7 < *(short *)(param_2 + 0x956)) {
      *(undefined1 *)(param_2 + 0x954) = 1;
    }
    break;
  case 1:
    ov49_0225919C(*(undefined4 *)(param_2 + 8),1);
    *(undefined2 *)(param_2 + 0x956) = 0x10;
    *(undefined1 *)(param_2 + 0x954) = 2;
    break;
  case 2:
    *(short *)(param_2 + 0x956) = *(short *)(param_2 + 0x956) + -1;
    if (*(short *)(param_2 + 0x956) < 1) {
      ov49_0225919C(*(undefined4 *)(param_2 + 8),0);
      *(undefined1 *)(param_2 + 0x954) = 3;
      *(undefined2 *)(param_2 + 0x956) = 0;
      uVar2 = ov49_02258E60(*(undefined4 *)(param_2 + 8),6);
      ov49_02259160(*(undefined4 *)(param_2 + 8),uVar2);
    }
    break;
  case 3:
    iVar5 = ov49_02265434(param_2 + 0xa04,(int)*(short *)(param_2 + 0x956));
    *(short *)(param_2 + 0x956) = *(short *)(param_2 + 0x956) + 1;
    ov49_02259154(*(undefined4 *)(param_2 + 8),auStack_20);
    ov49_022655E0(param_2 + 0xa04,auStack_20,&uStack_1c,auStack_18);
    ov49_02259148(*(undefined4 *)(param_2 + 8),auStack_20);
    if (iVar5 == 1) {
      *(undefined1 *)(param_2 + 0x954) = 4;
      *(undefined2 *)(param_2 + 0x956) = 0;
      *(undefined4 *)(param_2 + 0x958) = uStack_1c;
      ov49_02265668(param_1,param_2,0x5c2);
    }
    break;
  case 4:
    uVar3 = func_0x020f2998(*(short *)(param_2 + 0x956) * 0x7fff,10);
    sVar1 = *(short *)(&FX_SinCosTable_ + ((int)(uVar3 & 0xffff) >> 4) * 4);
    uVar3 = sVar1 * 0x8000;
    ov49_02259154(*(undefined4 *)(param_2 + 8),auStack_2c);
    iStack_28 = *(int *)(param_2 + 0x958) +
                (uVar3 + 0x800 >> 0xc |
                (((uint)(int)sVar1 >> 0x11) + (uint)(0xfffff7ff < uVar3)) * 0x100000);
    ov49_02259148(*(undefined4 *)(param_2 + 8),auStack_2c);
    iVar5 = *(short *)(param_2 + 0x956) + 1;
    if (10 < iVar5) {
      ov49_02259130(*(undefined4 *)(param_2 + 8),1);
      iVar6 = *(int *)(param_2 + 8);
      iVar5 = ov49_02258DAC(*(undefined4 *)(param_1 + 4));
      if (iVar6 == iVar5) {
        ov49_0225CC40(*(undefined4 *)(param_1 + 8),iVar6);
      }
      return 1;
    }
    *(short *)(param_2 + 0x956) = (short)iVar5;
  }
  iVar5 = 0;
  *(char *)(param_2 + 0x964) = *(char *)(param_2 + 0x964) + '\x01';
  if ('\0' < *(char *)(param_2 + 0x955)) {
    iVar6 = param_2 + 0x98c;
    iStack_4c = param_2 + 0x968;
    iStack_50 = param_2 + 0xc;
    iStack_48 = iVar6;
    iStack_44 = iStack_50;
    iStack_40 = iStack_4c;
    do {
      iVar4 = ov49_02265434(iVar6,*(undefined1 *)(param_2 + 0x964));
      if (iVar4 == 0) {
        ov49_02265628(iStack_40);
        func_0x020182b0(iStack_44,&iStack_38,&uStack_34,&uStack_30);
        ov49_022655E0(iStack_48,&iStack_38,&uStack_34,&uStack_30);
        ov49_02265660(iStack_4c,&iStack_3c);
        iStack_38 = iStack_38 + iStack_3c;
        func_0x020182a8(iStack_50,iStack_38,uStack_34,uStack_30);
      }
      else {
        iVar4 = ov49_0226786C(param_1,param_2,iVar5,4);
        if (iVar4 == 1) {
          ov49_02265668(param_1,param_2,0x5a8);
        }
      }
      ov49_0226789C(param_1,param_2,iVar5);
      iVar5 = iVar5 + 1;
      iStack_40 = iStack_40 + 0xc;
      iVar6 = iVar6 + 0x28;
      iStack_44 = iStack_44 + 0x78;
      iStack_48 = iStack_48 + 0x28;
      iStack_4c = iStack_4c + 0xc;
      iStack_50 = iStack_50 + 0x78;
    } while (iVar5 < *(char *)(param_2 + 0x955));
  }
  return 0;
}

