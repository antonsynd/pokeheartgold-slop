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
undefined4 Ascii_StrToL(undefined4);
undefined4 Ascii_GetDelim(undefined4, undefined4, undefined4);

undefined4 ov01_021EA578(undefined4 param_1,ushort *param_2,short *param_3)

{
  ushort uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  ushort *puVar6;
  undefined4 *puVar7;
  ushort auStack_228 [4];
  undefined4 auStack_220 [3];
  undefined1 auStack_214 [256];
  undefined1 auStack_114 [256];

  uVar2 = Ascii_GetDelim(param_1,auStack_114,0xd);
  uVar3 = Ascii_GetDelim(auStack_114,auStack_214,0x2c);
  iVar4 = Ascii_StrToL(auStack_214);
  if (iVar4 == 1) {
    iVar4 = 0;
    puVar6 = auStack_228;
    do {
      uVar3 = Ascii_GetDelim(uVar3,auStack_214,0x2c);
      uVar1 = Ascii_StrToL(auStack_214);
      *puVar6 = uVar1;
      iVar4 = iVar4 + 1;
      puVar6 = puVar6 + 1;
    } while (iVar4 < 3);
    iVar4 = 0;
    puVar7 = auStack_220;
    *param_2 = auStack_228[1] << 5 | auStack_228[0] | auStack_228[2] << 10;
    do {
      uVar3 = Ascii_GetDelim(uVar3,auStack_214,0x2c);
      uVar5 = Ascii_StrToL(auStack_214);
      iVar4 = iVar4 + 1;
      *puVar7 = uVar5;
      puVar7 = puVar7 + 1;
    } while (iVar4 < 3);
    *param_3 = (short)auStack_220[0];
    param_3[1] = (short)auStack_220[1];
    param_3[2] = (short)auStack_220[2];
    if (0x1000 < *param_3) {
      *param_3 = 0x1000;
    }
    if (*param_3 < -0x1000) {
      *param_3 = -0x1000;
    }
    if (0x1000 < param_3[1]) {
      param_3[1] = 0x1000;
    }
    if (param_3[1] < -0x1000) {
      param_3[1] = -0x1000;
    }
    if (0x1000 < param_3[2]) {
      param_3[2] = 0x1000;
    }
    if (param_3[2] < -0x1000) {
      param_3[2] = -0x1000;
    }
  }
  else {
    *param_2 = 0xffff;
  }
  return uVar2;
}

