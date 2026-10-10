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
undefined4 ov96_0220703C();
undefined4 ov96_02206FA4();
undefined4 ov96_02206F1C();

uint ov96_02207300(undefined4 param_1,uint param_2,undefined4 param_3,undefined4 *param_4,
                  undefined4 param_5,undefined4 *param_6)

{
  uint uVar1;
  int iVar2;
  undefined4 *puVar3;
  byte abStack_d4 [4];
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined1 auStack_c4 [96];
  undefined4 auStack_64 [20];
  
  ov96_02206F1C(param_1,*param_4,param_4[1],auStack_64,abStack_d4);
  iVar2 = 0;
  if (abStack_d4[0] != 0) {
    puVar3 = auStack_64;
    do {
      ov96_02206FA4(param_3,*puVar3,auStack_c4);
      uVar1 = ov96_0220703C(param_4,param_5,param_3,auStack_c4,&uStack_d0);
      if (uVar1 != 0) {
        if ((int)uVar1 < 9) {
          if (uVar1 != param_2) {
            *param_6 = uStack_d0;
            param_6[1] = uStack_cc;
            param_6[2] = 0;
          }
        }
        else {
          *param_6 = uStack_d0;
          param_6[1] = uStack_cc;
          param_6[2] = 0;
        }
        return uVar1 & 0xff;
      }
      iVar2 = iVar2 + 1;
      puVar3 = puVar3 + 1;
    } while (iVar2 < (int)(uint)abStack_d4[0]);
  }
  return 0;
}

