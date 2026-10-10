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
undefined4 ManagedSprite_SetPaletteOverride(void *, int);
undefined4 ov18_021E8ACC(void *, unsigned int, unsigned int);
undefined4 ov18_021F48AC();
undefined4 ov18_021F47C0();
undefined4 ov18_021F11C0(void *, int, int);
undefined4 ov18_021F4620(void *);
undefined4 ov18_021E8AB0(void *, unsigned int);
undefined4 ov18_021E8B18(unsigned int);



void ov18_021F463C(undefined *param_1)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = 0;
  uStack_1c = 0;
  if (param_1[0x18ca] != '\0') {
    ov18_021F4620(param_1);
    uVar3 = ov18_021E8ACC(param_1,(int)(char)param_1[0x18ca],((byte)param_1[0x18cb] & 0x7f) >> 6);
    if (uVar3 == 0) {
      ov18_021F11C0(param_1,9,0);
      iVar2 = ov18_021E8AB0(param_1,(int)(char)param_1[0x18ca]);
      if (iVar2 != 0) {
        uVar3 = ov18_021E8B18(*(uint *)(*(int *)(param_1 + 0x18fc) + (char)param_1[0x18ca] * 4));
        ov18_021F47C0(uVar3,&uStack_1c);
      }
    }
    else {
      ManagedSprite_SetPaletteOverride
                (*(undefined **)(param_1 + 0x694),
                 4 - ((int)((uint)(byte)param_1[0x18cb] << 0x19) >> 0x1f));
      ov18_021F11C0(param_1,9,1);
    }
    iVar2 = ov18_021E8AB0(param_1,(int)(char)param_1[0x18ca]);
    if (iVar2 != 0) {
      uVar3 = ov18_021E8B18(*(uint *)(*(int *)(param_1 + 0x18fc) + (char)param_1[0x18ca] * 4));
      ov18_021F47C0(uVar3,&uStack_18);
    }
    ov18_021F48AC(param_1,uStack_18,uStack_1c,10,
                  4 - ((int)((uint)(byte)param_1[0x18cb] << 0x19) >> 0x1f));
    return;
  }
  uVar3 = 1;
  if (1 < *(int *)(param_1 + 0x1900)) {
    do {
      uVar1 = ov18_021E8ACC(param_1,uVar3,((byte)param_1[0x18cb] & 0x7f) >> 6);
      if (uVar1 == 0) {
        ov18_021F11C0(param_1,uVar3 + 8,0);
        iVar2 = ov18_021E8AB0(param_1,uVar3);
        if (iVar2 != 0) {
          uVar1 = ov18_021E8B18(*(uint *)(*(int *)(param_1 + 0x18fc) + uVar3 * 4));
          ov18_021F47C0(uVar1,&uStack_1c);
        }
      }
      else {
        ManagedSprite_SetPaletteOverride
                  (*(undefined **)(param_1 + uVar3 * 4 + 0x690),
                   4 - ((int)((uint)(byte)param_1[0x18cb] << 0x19) >> 0x1f));
        ov18_021F11C0(param_1,uVar3 + 8,1);
      }
      iVar2 = ov18_021E8AB0(param_1,uVar3);
      if (iVar2 != 0) {
        uVar1 = ov18_021E8B18(*(uint *)(*(int *)(param_1 + 0x18fc) + uVar3 * 4));
        ov18_021F47C0(uVar1,&uStack_18);
      }
      uVar3 = uVar3 + 1 & 0xffff;
    } while ((int)uVar3 < *(int *)(param_1 + 0x1900));
  }
  ov18_021F48AC(param_1,uStack_18,uStack_1c,uVar3 + 8,
                4 - ((int)((uint)(byte)param_1[0x18cb] << 0x19) >> 0x1f));
  return;
}

