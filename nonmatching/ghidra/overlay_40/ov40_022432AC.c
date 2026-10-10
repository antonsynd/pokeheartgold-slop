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
undefined4 func_0x0200e024() __asm__("sub_0200E024");
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
undefined4 ov40_02243E80();
undefined4 ov40_02244054();
undefined4 ManagedSprite_SetAnim();
undefined4 func_0x0200df98() __asm__("sub_0200DF98");
undefined4 func_0x0200ded0() __asm__("sub_0200DED0");
extern undefined ov40_02245E58;
extern undefined ov40_02245E74;
undefined4 ov40_022439CC();
undefined4 ov40_022441F8();
undefined4 ov40_022439B8();
undefined4 ov40_02243EB0();
undefined4 ov40_022439F4();
undefined4 ov40_0224320C();

undefined4 ov40_022432AC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  
  if (*(int *)(param_1 + 0x1fc) == 0) {
    ov40_02243E80(param_1,0,0,param_4,param_4);
    iVar3 = 0;
    iVar4 = param_1;
    if (0 < *(int *)(param_1 + 0x204)) {
      do {
        if (*(char *)(iVar4 + 0x18) != '\0') {
          func_0x0200ded0(*(undefined4 *)(iVar4 + 0xc),(int)*(short *)(iVar4 + 0x14),
                          (int)*(short *)(iVar4 + 0x16));
          *(char *)(iVar4 + 0x18) = *(char *)(iVar4 + 0x18) + -1;
          if ((*(int *)(param_1 + 0x210) <= iVar3) && (iVar3 < *(int *)(param_1 + 0x214))) {
            func_0x0200e024(*(undefined4 *)(iVar4 + 0xc),
                            *(undefined4 *)(&ov40_02245E74 + (uint)*(byte *)(iVar4 + 0x19) * 4),
                            *(undefined4 *)(&ov40_02245E74 + (uint)*(byte *)(iVar4 + 0x19) * 4));
            *(char *)(iVar4 + 0x19) = *(char *)(iVar4 + 0x19) + '\x01';
            func_0x0200df98(*(undefined4 *)(iVar4 + 0xc),2);
          }
          if ((*(int *)(param_1 + 0x218) <= iVar3) && (iVar3 < *(int *)(param_1 + 0x21c))) {
            func_0x0200e024(*(undefined4 *)(iVar4 + 0xc),
                            *(undefined4 *)(&ov40_02245E58 + (uint)*(byte *)(iVar4 + 0x19) * 4),
                            *(undefined4 *)(&ov40_02245E58 + (uint)*(byte *)(iVar4 + 0x19) * 4));
            *(char *)(iVar4 + 0x19) = *(char *)(iVar4 + 0x19) + '\x01';
            func_0x0200df98(*(undefined4 *)(iVar4 + 0xc),2);
          }
        }
        iVar3 = iVar3 + 1;
        iVar4 = iVar4 + 0x1c;
      } while (iVar3 < *(int *)(param_1 + 0x204));
    }
    iVar3 = 0;
    iVar4 = param_1;
    do {
      if (*(char *)(iVar4 + 0x168) != '\0') {
        func_0x0200ded0(*(undefined4 *)(iVar4 + 0x15c),(int)*(short *)(iVar4 + 0x164),
                        (int)*(short *)(iVar4 + 0x166));
        *(char *)(iVar4 + 0x168) = *(char *)(iVar4 + 0x168) + -1;
      }
      iVar3 = iVar3 + 1;
      iVar4 = iVar4 + 0x1c;
    } while (iVar3 < 2);
    if (*(char *)(param_1 + 0x18) == '\0') {
      iVar4 = *(int *)(param_1 + 0x210);
      if (iVar4 < *(int *)(param_1 + 0x214)) {
        puVar2 = (undefined4 *)(param_1 + iVar4 * 0x1c);
        do {
          uVar1 = ov40_02244054(*puVar2,puVar2[2]);
          ManagedSprite_SetAnim(puVar2[3],uVar1);
          func_0x0200dc18(puVar2[3]);
          iVar4 = iVar4 + 1;
          puVar2 = puVar2 + 7;
        } while (iVar4 < *(int *)(param_1 + 0x214));
      }
      iVar4 = *(int *)(param_1 + 0x218);
      if (iVar4 < *(int *)(param_1 + 0x21c)) {
        puVar2 = (undefined4 *)(param_1 + iVar4 * 0x1c);
        do {
          uVar1 = ov40_02244054(*puVar2,puVar2[2]);
          ManagedSprite_SetAnim(puVar2[3],uVar1);
          func_0x0200dc18(puVar2[3]);
          iVar4 = iVar4 + 1;
          puVar2 = puVar2 + 7;
        } while (iVar4 < *(int *)(param_1 + 0x21c));
      }
      *(int *)(param_1 + 0x1fc) = *(int *)(param_1 + 0x1fc) + 1;
    }
    *(int *)(param_1 + 0x200) = *(int *)(param_1 + 0x200) + 1;
  }
  else if (*(int *)(param_1 + 0x1fc) == 1) {
    iVar4 = *(int *)(param_1 + 0x210);
    if (iVar4 < *(int *)(param_1 + 0x214)) {
      iVar3 = param_1 + iVar4 * 0x1c;
      do {
        if (*(byte *)(iVar3 + 0x19) == 6) {
          func_0x0200df98(*(undefined4 *)(iVar3 + 0xc),1);
        }
        else {
          func_0x0200e024(*(undefined4 *)(iVar3 + 0xc),
                          *(undefined4 *)(&ov40_02245E74 + (uint)*(byte *)(iVar3 + 0x19) * 4),
                          *(undefined4 *)(&ov40_02245E74 + (uint)*(byte *)(iVar3 + 0x19) * 4));
          *(char *)(iVar3 + 0x19) = *(char *)(iVar3 + 0x19) + '\x01';
        }
        iVar4 = iVar4 + 1;
        iVar3 = iVar3 + 0x1c;
      } while (iVar4 < *(int *)(param_1 + 0x214));
    }
    iVar4 = *(int *)(param_1 + 0x218);
    if (iVar4 < *(int *)(param_1 + 0x21c)) {
      iVar3 = param_1 + iVar4 * 0x1c;
      do {
        if (*(byte *)(iVar3 + 0x19) == 6) {
          func_0x0200df98(*(undefined4 *)(iVar3 + 0xc),1);
        }
        else {
          func_0x0200e024(*(undefined4 *)(iVar3 + 0xc),
                          *(undefined4 *)(&ov40_02245E58 + (uint)*(byte *)(iVar3 + 0x19) * 4),
                          *(undefined4 *)(&ov40_02245E58 + (uint)*(byte *)(iVar3 + 0x19) * 4));
          *(char *)(iVar3 + 0x19) = *(char *)(iVar3 + 0x19) + '\x01';
        }
        iVar4 = iVar4 + 1;
        iVar3 = iVar3 + 0x1c;
      } while (iVar4 < *(int *)(param_1 + 0x21c));
    }
    *(int *)(param_1 + 0x200) = *(int *)(param_1 + 0x200) + 1;
    if (*(int *)(param_1 + 0x200) == 6) {
      *(int *)(param_1 + 0x1fc) = *(int *)(param_1 + 0x1fc) + 1;
    }
  }
  else {
    ov40_022441F8();
    if (*(int *)(param_1 + 0x2a4) == 0) {
      uVar1 = ov40_022439CC(param_1,*(undefined4 *)(param_1 + 0x2a0));
      ov40_02243EB0(param_1,uVar1);
    }
    else {
      uVar1 = ov40_022439F4(param_1,*(undefined4 *)(param_1 + 0x2a0));
      ov40_02243EB0(param_1,uVar1);
    }
    if (*(int *)(param_1 + 0x208) != 0) {
      ov40_02243E80(param_1,0,1);
    }
    ov40_022439B8(param_1);
    ov40_0224320C(param_1,1);
  }
  return 0;
}

