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
undefined4 ov13_02226C7C();
undefined4 ov13_02226C38();

void ov13_022263C4(int *param_1,undefined4 param_2)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iStack_54;
  int iStack_50;
  int iStack_4c;
  int iStack_48;
  int iStack_44;
  int iStack_40;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  
  iVar1 = *param_1;
  uVar5 = param_1[1];
  uVar6 = param_1[2];
  uVar7 = param_1[3];
  ov13_02226C38(&iStack_54,param_2,0x40);
  uVar2 = iVar1 + iStack_54 + (uVar5 & uVar6 | ~uVar5 & uVar7) + -0x28955b88;
  uVar4 = (uVar2 >> 0x19 | uVar2 * 0x80) + uVar5;
  uVar7 = uVar7 + iStack_50 + (~uVar4 & uVar6 | uVar4 & uVar5) + -0x173848aa;
  uVar3 = (uVar7 >> 0x14 | uVar7 * 0x1000) + uVar4;
  uVar6 = uVar6 + iStack_4c + (~uVar3 & uVar5 | uVar3 & uVar4) + 0x242070db;
  uVar7 = (uVar6 >> 0xf | uVar6 * 0x20000) + uVar3;
  uVar5 = uVar5 + iStack_48 + (~uVar7 & uVar4 | uVar7 & uVar3) + -0x3e423112;
  uVar2 = (uVar5 >> 10 | uVar5 * 0x400000) + uVar7;
  uVar4 = uVar4 + iStack_44 + (~uVar2 & uVar3 | uVar2 & uVar7) + -0xa83f051;
  uVar5 = (uVar4 >> 0x19 | uVar4 * 0x80) + uVar2;
  uVar3 = uVar3 + iStack_40 + (~uVar5 & uVar7 | uVar5 & uVar2) + 0x4787c62a;
  uVar6 = (uVar3 >> 0x14 | uVar3 * 0x1000) + uVar5;
  uVar7 = uVar7 + iStack_3c + (~uVar6 & uVar2 | uVar6 & uVar5) + -0x57cfb9ed;
  uVar7 = (uVar7 >> 0xf | uVar7 * 0x20000) + uVar6;
  uVar2 = uVar2 + iStack_38 + (~uVar7 & uVar5 | uVar7 & uVar6) + -0x2b96aff;
  uVar2 = (uVar2 >> 10 | uVar2 * 0x400000) + uVar7;
  uVar5 = uVar5 + iStack_34 + (~uVar2 & uVar6 | uVar2 & uVar7) + 0x698098d8;
  uVar3 = (uVar5 >> 0x19 | uVar5 * 0x80) + uVar2;
  uVar6 = uVar6 + iStack_30 + (~uVar3 & uVar7 | uVar3 & uVar2) + -0x74bb0851;
  uVar5 = (uVar6 >> 0x14 | uVar6 * 0x1000) + uVar3;
  uVar7 = uVar7 + iStack_2c + (~uVar5 & uVar2 | uVar5 & uVar3) + -0xa44f;
  uVar6 = (uVar7 >> 0xf | uVar7 * 0x20000) + uVar5;
  uVar2 = uVar2 + iStack_28 + (~uVar6 & uVar3 | uVar6 & uVar5) + -0x76a32842;
  uVar2 = (uVar2 >> 10 | uVar2 * 0x400000) + uVar6;
  uVar3 = uVar3 + iStack_24 + (~uVar2 & uVar5 | uVar2 & uVar6) + 0x6b901122;
  uVar7 = (uVar3 >> 0x19 | uVar3 * 0x80) + uVar2;
  uVar5 = uVar5 + iStack_20 + (~uVar7 & uVar6 | uVar7 & uVar2) + -0x2678e6d;
  uVar3 = (uVar5 >> 0x14 | uVar5 * 0x1000) + uVar7;
  uVar6 = uVar6 + iStack_1c + (~uVar3 & uVar2 | uVar3 & uVar7) + -0x5986bc72;
  uVar6 = (uVar6 >> 0xf | uVar6 * 0x20000) + uVar3;
  uVar2 = uVar2 + iStack_18 + (uVar6 & uVar3 | ~uVar6 & uVar7) + 0x49b40821;
  uVar5 = (uVar2 >> 10 | uVar2 * 0x400000) + uVar6;
  uVar7 = uVar7 + iStack_50 + (~uVar3 & uVar6 | uVar5 & uVar3) + -0x9e1da9e;
  uVar2 = (uVar7 >> 0x1b | uVar7 * 0x20) + uVar5;
  uVar3 = uVar3 + iStack_3c + (uVar5 & ~uVar6 | uVar2 & uVar6) + -0x3fbf4cc0;
  uVar7 = (uVar3 >> 0x17 | uVar3 * 0x200) + uVar2;
  uVar6 = uVar6 + iStack_28 + (~uVar5 & uVar2 | uVar7 & uVar5) + 0x265e5a51;
  uVar6 = (uVar6 >> 0x12 | uVar6 * 0x4000) + uVar7;
  uVar5 = uVar5 + iStack_54 + (~uVar2 & uVar7 | uVar6 & uVar2) + -0x16493856;
  uVar5 = (uVar5 >> 0xc | uVar5 * 0x100000) + uVar6;
  uVar2 = uVar2 + iStack_40 + (~uVar7 & uVar6 | uVar5 & uVar7) + -0x29d0efa3;
  uVar3 = (uVar2 >> 0x1b | uVar2 * 0x20) + uVar5;
  uVar7 = uVar7 + iStack_2c + (~uVar6 & uVar5 | uVar3 & uVar6) + 0x2441453;
  uVar4 = (uVar7 >> 0x17 | uVar7 * 0x200) + uVar3;
  uVar6 = uVar6 + iStack_18 + (~uVar5 & uVar3 | uVar4 & uVar5) + -0x275e197f;
  uVar2 = (uVar6 >> 0x12 | uVar6 * 0x4000) + uVar4;
  uVar5 = uVar5 + iStack_44 + (~uVar3 & uVar4 | uVar2 & uVar3) + -0x182c0438;
  uVar7 = (uVar5 >> 0xc | uVar5 * 0x100000) + uVar2;
  uVar3 = uVar3 + iStack_30 + (~uVar4 & uVar2 | uVar7 & uVar4) + 0x21e1cde6;
  uVar6 = (uVar3 >> 0x1b | uVar3 * 0x20) + uVar7;
  uVar4 = uVar4 + iStack_1c + (~uVar2 & uVar7 | uVar6 & uVar2) + -0x3cc8f82a;
  uVar5 = (uVar4 >> 0x17 | uVar4 * 0x200) + uVar6;
  uVar2 = uVar2 + iStack_48 + (~uVar7 & uVar6 | uVar5 & uVar7) + -0xb2af279;
  uVar3 = (uVar2 >> 0x12 | uVar2 * 0x4000) + uVar5;
  uVar7 = uVar7 + iStack_34 + (~uVar6 & uVar5 | uVar3 & uVar6) + 0x455a14ed;
  uVar4 = (uVar7 >> 0xc | uVar7 * 0x100000) + uVar3;
  uVar6 = uVar6 + iStack_20 + (~uVar5 & uVar3 | uVar4 & uVar5) + -0x561c16fb;
  uVar2 = (uVar6 >> 0x1b | uVar6 * 0x20) + uVar4;
  uVar5 = uVar5 + iStack_4c + (~uVar3 & uVar4 | uVar2 & uVar3) + -0x3105c08;
  uVar7 = (uVar5 >> 0x17 | uVar5 * 0x200) + uVar2;
  uVar3 = uVar3 + iStack_38 + (~uVar4 & uVar2 | uVar7 & uVar4) + 0x676f02d9;
  uVar6 = (uVar3 >> 0x12 | uVar3 * 0x4000) + uVar7;
  uVar4 = uVar4 + iStack_24 + (~uVar2 & uVar7 | uVar6 & uVar2) + -0x72d5b376;
  uVar5 = (uVar4 >> 0xc | uVar4 * 0x100000) + uVar6;
  uVar2 = uVar2 + iStack_40 + (uVar7 ^ uVar5 ^ uVar6) + -0x5c6be;
  uVar3 = (uVar2 >> 0x1c | uVar2 * 0x10) + uVar5;
  uVar7 = uVar7 + iStack_34 + (uVar6 ^ uVar3 ^ uVar5) + -0x788e097f;
  uVar4 = (uVar7 >> 0x15 | uVar7 * 0x800) + uVar3;
  uVar6 = uVar6 + iStack_28 + (uVar5 ^ uVar4 ^ uVar3) + 0x6d9d6122;
  uVar2 = (uVar6 >> 0x10 | uVar6 * 0x10000) + uVar4;
  uVar5 = uVar5 + iStack_1c + (uVar3 ^ uVar2 ^ uVar4) + -0x21ac7f4;
  uVar7 = (uVar5 >> 9 | uVar5 * 0x800000) + uVar2;
  uVar3 = uVar3 + iStack_50 + (uVar4 ^ uVar7 ^ uVar2) + -0x5b4115bc;
  uVar6 = (uVar3 >> 0x1c | uVar3 * 0x10) + uVar7;
  uVar4 = uVar4 + iStack_44 + (uVar2 ^ uVar6 ^ uVar7) + 0x4bdecfa9;
  uVar5 = (uVar4 >> 0x15 | uVar4 * 0x800) + uVar6;
  uVar2 = uVar2 + iStack_38 + (uVar7 ^ uVar5 ^ uVar6) + -0x944b4a0;
  uVar3 = (uVar2 >> 0x10 | uVar2 * 0x10000) + uVar5;
  uVar7 = uVar7 + iStack_2c + (uVar6 ^ uVar3 ^ uVar5) + -0x41404390;
  uVar4 = (uVar7 >> 9 | uVar7 * 0x800000) + uVar3;
  uVar6 = uVar6 + iStack_20 + (uVar5 ^ uVar4 ^ uVar3) + 0x289b7ec6;
  uVar2 = (uVar6 >> 0x1c | uVar6 * 0x10) + uVar4;
  uVar5 = uVar5 + iStack_54 + (uVar3 ^ uVar2 ^ uVar4) + -0x155ed806;
  uVar7 = (uVar5 >> 0x15 | uVar5 * 0x800) + uVar2;
  uVar3 = uVar3 + iStack_48 + (uVar4 ^ uVar7 ^ uVar2) + -0x2b10cf7b;
  uVar6 = (uVar3 >> 0x10 | uVar3 * 0x10000) + uVar7;
  uVar4 = uVar4 + iStack_3c + (uVar2 ^ uVar6 ^ uVar7) + 0x4881d05;
  uVar5 = (uVar4 >> 9 | uVar4 * 0x800000) + uVar6;
  uVar2 = uVar2 + iStack_30 + (uVar7 ^ uVar5 ^ uVar6) + -0x262b2fc7;
  uVar3 = (uVar2 >> 0x1c | uVar2 * 0x10) + uVar5;
  uVar7 = uVar7 + iStack_24 + (uVar6 ^ uVar3 ^ uVar5) + -0x1924661b;
  uVar4 = (uVar7 >> 0x15 | uVar7 * 0x800) + uVar3;
  uVar6 = uVar6 + iStack_18 + (uVar5 ^ uVar4 ^ uVar3) + 0x1fa27cf8;
  uVar2 = (uVar6 >> 0x10 | uVar6 * 0x10000) + uVar4;
  uVar5 = uVar5 + iStack_4c + (uVar3 ^ uVar2 ^ uVar4) + -0x3b53a99b;
  uVar7 = (uVar5 >> 9 | uVar5 * 0x800000) + uVar2;
  uVar3 = uVar3 + iStack_54 + (uVar2 ^ (~uVar4 | uVar7)) + -0xbd6ddbc;
  uVar6 = (uVar3 >> 0x1a | uVar3 * 0x40) + uVar7;
  uVar4 = uVar4 + iStack_38 + (uVar7 ^ (~uVar2 | uVar6)) + 0x432aff97;
  uVar5 = (uVar4 >> 0x16 | uVar4 * 0x400) + uVar6;
  uVar2 = uVar2 + iStack_1c + (uVar6 ^ (~uVar7 | uVar5)) + -0x546bdc59;
  uVar3 = (uVar2 >> 0x11 | uVar2 * 0x8000) + uVar5;
  uVar7 = uVar7 + iStack_40 + (uVar5 ^ (~uVar6 | uVar3)) + -0x36c5fc7;
  uVar4 = (uVar7 >> 0xb | uVar7 * 0x200000) + uVar3;
  uVar6 = uVar6 + iStack_24 + (uVar3 ^ (~uVar5 | uVar4)) + 0x655b59c3;
  uVar2 = (uVar6 >> 0x1a | uVar6 * 0x40) + uVar4;
  uVar5 = uVar5 + iStack_48 + (uVar4 ^ (~uVar3 | uVar2)) + -0x70f3336e;
  uVar7 = (uVar5 >> 0x16 | uVar5 * 0x400) + uVar2;
  uVar3 = uVar3 + iStack_2c + (uVar2 ^ (~uVar4 | uVar7)) + -0x100b83;
  uVar3 = (uVar3 >> 0x11 | uVar3 * 0x8000) + uVar7;
  uVar4 = uVar4 + iStack_50 + (uVar7 ^ (~uVar2 | uVar3)) + -0x7a7ba22f;
  uVar6 = (uVar4 >> 0xb | uVar4 * 0x200000) + uVar3;
  uVar2 = uVar2 + iStack_34 + (uVar3 ^ (~uVar7 | uVar6)) + 0x6fa87e4f;
  uVar5 = (uVar2 >> 0x1a | uVar2 * 0x40) + uVar6;
  uVar7 = uVar7 + iStack_18 + ((~uVar3 | uVar5) ^ uVar6) + -0x1d31920;
  uVar2 = (uVar7 >> 0x16 | uVar7 * 0x400) + uVar5;
  uVar3 = uVar3 + iStack_3c + (uVar5 ^ (~uVar6 | uVar2)) + -0x5cfebcec;
  uVar7 = (uVar3 >> 0x11 | uVar3 * 0x8000) + uVar2;
  uVar6 = uVar6 + iStack_20 + (uVar2 ^ (~uVar5 | uVar7)) + 0x4e0811a1;
  uVar6 = (uVar6 >> 0xb | uVar6 * 0x200000) + uVar7;
  uVar5 = uVar5 + iStack_44 + (uVar7 ^ (~uVar2 | uVar6)) + -0x8ac817e;
  uVar5 = (uVar5 >> 0x1a | uVar5 * 0x40) + uVar6;
  uVar2 = uVar2 + iStack_28 + (uVar6 ^ (~uVar7 | uVar5)) + -0x42c50dcb;
  uVar3 = (uVar2 >> 0x16 | uVar2 * 0x400) + uVar5;
  uVar7 = uVar7 + iStack_4c + (uVar5 ^ (~uVar6 | uVar3)) + 0x2ad7d2bb;
  uVar2 = (uVar7 >> 0x11 | uVar7 * 0x8000) + uVar3;
  uVar6 = uVar6 + iStack_30 + (uVar3 ^ (~uVar5 | uVar2)) + -0x14792c6f;
  *param_1 = *param_1 + uVar5;
  param_1[1] = param_1[1] + (uVar6 >> 0xb | uVar6 * 0x200000) + uVar2;
  param_1[2] = param_1[2] + uVar2;
  param_1[3] = param_1[3] + uVar3;
  ov13_02226C7C(&iStack_54,0,0x40);
  return;
}

