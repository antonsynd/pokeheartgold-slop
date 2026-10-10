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
undefined4 ov43_0222BC78();
undefined4 PlaySE();
undefined4 ov43_0222AD00();
undefined4 ov43_0222C844();
extern uint uRam021d1154 __asm__("sub_021D1154");
extern uint uRam021d1158 __asm__("sub_021D1158");

undefined4 ov43_0222BD18(short *param_1,undefined4 *param_2,undefined4 param_3)

{
  short sVar1;
  bool bVar2;
  bool bVar3;
  undefined4 uVar4;
  int iVar5;
  int iStack_20;
  
  if ((uRam021d1154 & 0xcf3) != 0) {
    *param_2 = 0;
  }
  if ((uRam021d1154 & 1) != 0) {
    uVar4 = ov43_0222BC78(param_1,param_2,param_3,5);
    return uVar4;
  }
  if ((uRam021d1154 & 2) != 0) {
    param_1[2] = 8;
    ov43_0222C844(param_1 + 4,param_3,(int)param_1[2]);
    uVar4 = ov43_0222BC78(param_1,param_2,param_3,0);
    return uVar4;
  }
  sVar1 = param_1[2];
  bVar2 = false;
  bVar3 = false;
  if ((uRam021d1158 & 0x40) == 0) {
    if ((uRam021d1158 & 0x80) == 0) {
      if ((uRam021d1158 & 0x20) == 0) {
        if ((uRam021d1158 & 0x10) == 0) {
          if (*(char *)((int)param_2 + 0xe) != '\0') {
            if ((uRam021d1158 & 0x200) == 0) {
              if ((*(char *)((int)param_2 + 0xe) != '\0') && ((uRam021d1158 & 0x100) != 0)) {
                bVar3 = true;
                iStack_20 = 1;
              }
            }
            else {
              bVar3 = true;
              iStack_20 = 0;
            }
          }
        }
        else if (sVar1 != 8) {
          if (sVar1 < 4) {
            param_1[2] = sVar1 + 4;
            bVar2 = true;
          }
          else {
            bVar2 = true;
            param_1[2] = sVar1 + -4;
            bVar3 = true;
            iStack_20 = 1;
          }
        }
      }
      else if (sVar1 != 8) {
        if (sVar1 < 4) {
          bVar2 = true;
          param_1[2] = sVar1 + 4;
          bVar3 = true;
          iStack_20 = 0;
        }
        else {
          param_1[2] = sVar1 + -4;
          bVar2 = true;
        }
      }
    }
    else if ((sVar1 == 3) || (sVar1 == 7)) {
      param_1[2] = 8;
      bVar2 = true;
    }
    else if (sVar1 < 4) {
      if (sVar1 < 3) {
        param_1[2] = sVar1 + 1;
        bVar2 = true;
      }
    }
    else if (sVar1 < 7) {
      param_1[2] = sVar1 + 1;
      bVar2 = true;
    }
  }
  else if (sVar1 == 8) {
    bVar2 = true;
    param_1[2] = param_1[3];
    ov43_0222AD00(param_3,1);
  }
  else if (sVar1 < 4) {
    if (0 < sVar1) {
      param_1[2] = sVar1 + -1;
      bVar2 = true;
    }
  }
  else if (4 < sVar1) {
    param_1[2] = sVar1 + -1;
    bVar2 = true;
  }
  if (!bVar3) {
    if (bVar2) {
      PlaySE(0x5e5);
      ov43_0222C844(param_1 + 4,param_3,(int)param_1[2]);
      param_1[3] = sVar1;
    }
    return 0;
  }
  if (iStack_20 == 0) {
    param_1[1] = *param_1;
    *param_1 = *param_1 + -1;
    if (*param_1 < 0) {
      *param_1 = *param_1 + 4;
    }
    uVar4 = ov43_0222BC78(param_1,param_2,param_3,1);
    return uVar4;
  }
  param_1[1] = *param_1;
  iVar5 = *param_1 + 1;
  *param_1 = ((ushort)((uint)(iVar5 * 0x40000000 + (iVar5 >> 0x1f)) >> 0x1e) |
             (ushort)((iVar5 >> 0x1f) << 2)) - (short)(iVar5 >> 0x1f);
  uVar4 = ov43_0222BC78(param_1,param_2,param_3,2);
  return uVar4;
}

