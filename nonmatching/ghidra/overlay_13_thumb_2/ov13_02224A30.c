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
undefined4 ov13_02226D40();
undefined4 func_0x020e5bb0() __asm__("sub_020E5BB0");
undefined4 ov13_02224A24();
extern byte bRam0224e3e1 __asm__("sub_0224E3E1");
extern byte bRam0224e3dc __asm__("sub_0224E3DC");
extern byte bRam0224e3e2 __asm__("sub_0224E3E2");
extern byte bRam0224e3e3 __asm__("sub_0224E3E3");
extern byte bRam0224e3e4 __asm__("sub_0224E3E4");
extern byte bRam0224e3e0 __asm__("sub_0224E3E0");
extern byte bRam0224e3d8 __asm__("sub_0224E3D8");
extern byte bRam0224e3e5 __asm__("sub_0224E3E5");
extern byte bRam0224e3da __asm__("sub_0224E3DA");
extern byte bRam0224e3d9 __asm__("sub_0224E3D9");
extern byte bRam0224e3dd __asm__("sub_0224E3DD");
extern byte bRam0224e3db __asm__("sub_0224E3DB");

undefined4 ov13_02224A30(byte *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  byte *pbVar2;
  byte abStack_58 [12];
  undefined1 auStack_4c [32];
  undefined1 auStack_2c [32];
  undefined4 uStack_c;
  
  pbVar2 = abStack_58;
  param_1[0xc] = 0x57;
  param_1[0xd] = 0x41;
  param_1[0xe] = 0x52;
  param_1[0xf] = 0x50;
  abStack_58[7] = bRam0224e3e1;
  abStack_58[8] = bRam0224e3e2;
  abStack_58[9] = bRam0224e3e3;
  abStack_58[10] = bRam0224e3e4;
  abStack_58[0xb] = bRam0224e3e5;
  abStack_58[6] = bRam0224e3e0 & 0xfd;
  uStack_c = param_4;
  ov13_02224A24(abStack_58);
  bRam0224e3d8 = abStack_58[0];
  bRam0224e3d9 = abStack_58[1];
  bRam0224e3da = abStack_58[2];
  bRam0224e3db = abStack_58[3];
  bRam0224e3dc = abStack_58[4];
  bRam0224e3dd = abStack_58[5];
  iVar1 = func_0x020e5bb0(abStack_58 + 6,abStack_58,6);
  if (iVar1 < 1) {
    *param_1 = abStack_58[0];
    param_1[1] = abStack_58[1];
    param_1[2] = abStack_58[2];
    param_1[3] = abStack_58[3];
    param_1[4] = abStack_58[4];
    pbVar2 = abStack_58 + 6;
    param_1[5] = abStack_58[5];
  }
  else {
    *param_1 = abStack_58[6];
    param_1[1] = abStack_58[7];
    param_1[2] = abStack_58[8];
    param_1[3] = abStack_58[9];
    param_1[4] = abStack_58[10];
    param_1[5] = abStack_58[0xb];
  }
  param_1[6] = *pbVar2;
  param_1[7] = pbVar2[1];
  param_1[8] = pbVar2[2];
  param_1[9] = pbVar2[3];
  param_1[10] = pbVar2[4];
  param_1[0xb] = pbVar2[5];
  ov13_02226D40(auStack_2c,abStack_58);
  ov13_02226D40(auStack_4c,abStack_58 + 6);
  return 1;
}

