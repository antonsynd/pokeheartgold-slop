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
undefined4 ov18_021F1294();
undefined4 ov18_021F4974();
undefined4 ov18_021E8AB0();
undefined4 ov18_021F47C0();
undefined4 ov18_021F118C();
undefined4 ov18_021E8B18();
undefined4 ov18_021F4620();
undefined4 ov18_021F42E4();
undefined4 ov18_021F41C4();
undefined4 ov18_021F12C8();
undefined4 ov18_021F11C0();
undefined4 ov18_021F47F8();
extern undefined4 ov18_021FA3B0;
undefined4 ov18_021F69C0();

void ov18_021F4384(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  int iStack_2c;
  byte abStack_28 [2];
  short sStack_26;
  short sStack_24;
  short sStack_22;
  short asStack_20 [2];
  int iStack_1c;
  undefined4 uStack_18;

  iStack_2c = 0;
  uStack_18 = param_4;
  ov18_021F12C8(param_1,2,asStack_20,&sStack_22,2);
  iStack_1c = 0;
  if (*(char *)(param_1 + 0x18ca) == '\0') {
    uVar4 = 1;
    if (1 < *(int *)(param_1 + 0x1900)) {
      do {
        iVar1 = ov18_021E8AB0(param_1,uVar4);
        if (iVar1 == 0) {
          ov18_021F41C4(param_1,*(undefined4 *)(*(int *)(param_1 + 0x18fc) + uVar4 * 4),&sStack_24,
                        &sStack_26,abStack_28);
        }
        else {
          ov18_021F42E4(param_1,*(undefined4 *)(*(int *)(param_1 + 0x18fc) + uVar4 * 4),&sStack_24,
                        &sStack_26,abStack_28);
          uVar2 = ov18_021E8B18(*(undefined4 *)(*(int *)(param_1 + 0x18fc) + uVar4 * 4));
          ov18_021F47C0(uVar2,&iStack_1c);
        }
        iVar1 = uVar4 + 8;
        ov18_021F1294(param_1,iVar1,(int)sStack_24,(int)sStack_26,2);
        ov18_021F118C(param_1,iVar1,abStack_28[0]);
        ov18_021F11C0(param_1,iVar1,1);
        if (((int)((int)sStack_24 - (uint)((byte)(&ov18_021FA3B0)[(uint)abStack_28[0] * 2] >> 1)) <=
             (int)asStack_20[0]) &&
           ((int)asStack_20[0] <
            (int)((int)sStack_24 + (uint)((byte)(&ov18_021FA3B0)[(uint)abStack_28[0] * 2] >> 1)))) {
          uVar3 = (uint)(*(byte *)((uint)abStack_28[0] * 2 + 0x21fa3b1) >> 1);
          if (((int)((int)sStack_26 - uVar3) <= (int)sStack_22) &&
             ((int)sStack_22 < (int)((int)sStack_26 + uVar3))) {
            iStack_2c = 1;
          }
        }
        uVar4 = uVar4 + 1 & 0xffff;
      } while ((int)uVar4 < *(int *)(param_1 + 0x1900));
    }
    ov18_021F47F8(param_1,iStack_1c,uVar4 + 8);
    if ((iStack_2c == 0) && (iStack_1c != 0)) {
      iStack_2c = ov18_021F4974(param_1,uVar4 + 8,(int)asStack_20[0],(int)sStack_22);
    }
  }
  else {
    ov18_021F4620(param_1);
    iVar1 = ov18_021E8AB0(param_1,(int)*(char *)(param_1 + 0x18ca));
    if (iVar1 == 0) {
      ov18_021F41C4(param_1,*(undefined4 *)
                             (*(int *)(param_1 + 0x18fc) + *(char *)(param_1 + 0x18ca) * 4),
                    &sStack_24,&sStack_26,abStack_28);
      ov18_021F1294(param_1,9,(int)sStack_24,(int)sStack_26,2);
      ov18_021F118C(param_1,9,abStack_28[0]);
      ov18_021F11C0(param_1,9,1);
      if (((int)((int)sStack_24 - (uint)((byte)(&ov18_021FA3B0)[(uint)abStack_28[0] * 2] >> 1)) <=
           (int)asStack_20[0]) &&
         ((int)asStack_20[0] <
          (int)((int)sStack_24 + (uint)((byte)(&ov18_021FA3B0)[(uint)abStack_28[0] * 2] >> 1)))) {
        uVar4 = (uint)(*(byte *)((uint)abStack_28[0] * 2 + 0x21fa3b1) >> 1);
        if (((int)((int)sStack_26 - uVar4) <= (int)sStack_22) &&
           ((int)sStack_22 < (int)((int)sStack_26 + uVar4))) {
          iStack_2c = 1;
        }
      }
    }
    else {
      ov18_021F42E4(param_1,*(undefined4 *)
                             (*(int *)(param_1 + 0x18fc) + *(char *)(param_1 + 0x18ca) * 4),
                    &sStack_24,&sStack_26,abStack_28);
      uVar2 = ov18_021E8B18(*(undefined4 *)
                             (*(int *)(param_1 + 0x18fc) + *(char *)(param_1 + 0x18ca) * 4));
      ov18_021F47C0(uVar2,&iStack_1c);
      ov18_021F1294(param_1,9,(int)sStack_24,(int)sStack_26,2);
      ov18_021F118C(param_1,9,abStack_28[0]);
      ov18_021F11C0(param_1,9,1);
      if (((int)((int)sStack_24 - (uint)((byte)(&ov18_021FA3B0)[(uint)abStack_28[0] * 2] >> 1)) <=
           (int)asStack_20[0]) &&
         ((int)asStack_20[0] <
          (int)((int)sStack_24 + (uint)((byte)(&ov18_021FA3B0)[(uint)abStack_28[0] * 2] >> 1)))) {
        uVar4 = (uint)(*(byte *)((uint)abStack_28[0] * 2 + 0x21fa3b1) >> 1);
        if (((int)((int)sStack_26 - uVar4) <= (int)sStack_22) &&
           ((int)sStack_22 < (int)((int)sStack_26 + uVar4))) {
          iStack_2c = 1;
        }
      }
      ov18_021F47F8(param_1,iStack_1c,10);
      if ((iStack_2c == 0) && (iStack_1c != 0)) {
        iStack_2c = ov18_021F4974(param_1,10,(int)asStack_20[0],(int)sStack_22);
      }
    }
  }
  ov18_021F69C0(param_1,iStack_2c);
  return;
}

