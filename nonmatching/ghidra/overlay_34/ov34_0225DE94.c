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
undefined4 sub_02035754();
undefined4 ov34_0225E5EC();
undefined4 ov34_0225DC0C();
undefined4 PlayerProfile_GetTrainerID();
undefined4 ov34_0225E5D4();
undefined4 PlaySE();
undefined4 func_0x021f6b10() __asm__("sub_021F6B10");
undefined4 sub_02035784();
undefined4 func_0x02025204() __asm__("sub_02025204");
extern undefined ov34_0225E730;
extern short sRam021d1170 __asm__("sub_021D1170");

int ov34_0225DE94(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;

  iVar1 = func_0x02025204(&ov34_0225E730);
  iVar2 = ov34_0225E5D4(param_1);
  if (iVar1 != -1) {
    switch(iVar1) {
    case 0:
      ov34_0225E5EC(param_1,iVar1);
      if (iVar2 == 1) {
        if (*(short *)(param_1 + 0xa2) != 0) {
          PlaySE(0x5e5);
          *(short *)(param_1 + 0xa2) = *(short *)(param_1 + 0xa2) + -1;
        }
        param_1[0x71] = iVar1 + -2;
      }
      break;
    case 1:
      ov34_0225E5EC(param_1,iVar1);
      if (iVar2 == 1) {
        if ((int)(uint)*(ushort *)(param_1 + 0xa2) < (int)(*(ushort *)(param_1 + 0xa1) - 3)) {
          PlaySE(0x5e5);
          *(short *)(param_1 + 0xa2) = *(short *)(param_1 + 0xa2) + 1;
        }
        param_1[0x71] = iVar1 + -2;
      }
      break;
    default:
      if (sRam021d1170 != 0) {
        iVar2 = *(int *)(param_1[0x9c] + 0x348);
        if (iVar1 + -1 <= iVar2) {
          iVar2 = ov34_0225DC0C(*(undefined4 *)(param_1[0x9c] + 0x34c),
                                (uint)*(ushort *)(param_1 + 0xa2) + iVar1 + -2,0x288,iVar2,param_4);
          iVar4 = 0;
          iVar2 = iVar2 * 0x1c;
          iVar5 = 0;
          do {
            iVar3 = sub_02035754(iVar4);
            if (((iVar3 != 0) && (*(char *)(param_1[1] + iVar5 + 0xd) == '\x02')) &&
               (*(int *)(iVar3 + 0x50) == *(int *)(iVar2 + param_1[0x9c] + 0xc))) {
              PlaySE(0x5e5);
              *(undefined1 *)(param_1[1] + iVar4 * 0x18 + 0xf) = 1;
              break;
            }
            iVar4 = iVar4 + 1;
            iVar5 = iVar5 + 0x18;
          } while (iVar4 < 10);
          sub_02035784();
          iVar4 = PlayerProfile_GetTrainerID();
          if (*(int *)(param_1[0x9c] + iVar2 + 0xc) == iVar4) {
            PlaySE(0x5e5);
            *(undefined1 *)(param_1[1] + 0x4bf) = 1;
          }
        }
        param_1[0x71] = iVar1 + -2;
      }
      break;
    case 5:
      param_1[0x71] = iVar1 + -2;
      break;
    case 6:
      if ((sRam021d1170 != 0) && (iVar2 = func_0x021f6b10(param_1[3]), iVar2 == 1)) {
        PlaySE(0x5fc);
        *param_1 = 3;
      }
    }
  }
  return iVar1;
}

