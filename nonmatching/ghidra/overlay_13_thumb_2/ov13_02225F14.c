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
extern undefined ov13_02244AB0;
extern undefined ov13_022426B0;
extern undefined ov13_02242AB0;
extern undefined ov13_022446B0;
extern undefined ov13_02242EB0;

void ov13_02225F14(uint *param_1,int param_2,byte *param_3,undefined1 *param_4)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iStack_5c;
  uint uStack_58;
  uint uStack_54;
  uint uStack_20;

  uStack_54 = (uint)*param_3 << 0x18 ^ (uint)param_3[1] << 0x10 ^ (uint)param_3[2] << 8 ^
              (uint)param_3[3] ^ *param_1;
  uStack_58 = (uint)param_3[4] << 0x18 ^ (uint)param_3[5] << 0x10 ^ (uint)param_3[6] << 8 ^
              (uint)param_3[7] ^ param_1[1];
  uStack_20 = (uint)param_3[8] << 0x18 ^ (uint)param_3[9] << 0x10 ^ (uint)param_3[10] << 8 ^
              (uint)param_3[0xb] ^ param_1[2];
  uVar6 = param_1[3] ^
          (uint)param_3[0xd] << 0x10 ^ (uint)param_3[0xc] << 0x18 ^ (uint)param_3[0xe] << 8 ^
          (uint)param_3[0xf];
  iStack_5c = param_2 >> 1;
  while( true ) {
    uVar2 = *(uint *)(&ov13_02244AB0 + (uVar6 >> 0x10 & 0xff) * 4) ^
            *(uint *)(&ov13_022446B0 + (uStack_54 >> 0x18) * 4) ^
            *(uint *)(&ov13_022426B0 + (uStack_20 >> 8 & 0xff) * 4) ^
            *(uint *)(&ov13_02242AB0 + (uStack_58 & 0xff) * 4) ^ param_1[4];
    uVar3 = *(uint *)(&ov13_02244AB0 + (uStack_54 >> 0x10 & 0xff) * 4) ^
            *(uint *)(&ov13_022446B0 + (uStack_58 >> 0x18) * 4) ^
            *(uint *)(&ov13_022426B0 + (uVar6 >> 8 & 0xff) * 4) ^
            *(uint *)(&ov13_02242AB0 + (uStack_20 & 0xff) * 4) ^ param_1[5];
    uVar4 = param_1[6] ^
            *(uint *)(&ov13_022426B0 + (uStack_54 >> 8 & 0xff) * 4) ^
            *(uint *)(&ov13_02244AB0 + (uStack_58 >> 0x10 & 0xff) * 4) ^
            *(uint *)(&ov13_022446B0 + (uStack_20 >> 0x18) * 4) ^
            *(uint *)(&ov13_02242AB0 + (uVar6 & 0xff) * 4);
    puVar1 = param_1 + 8;
    uVar6 = *(uint *)(&ov13_02242AB0 + (uStack_54 & 0xff) * 4) ^
            *(uint *)(&ov13_02244AB0 + (uStack_20 >> 0x10 & 0xff) * 4) ^
            *(uint *)(&ov13_022446B0 + (uVar6 >> 0x18) * 4) ^
            *(uint *)(&ov13_022426B0 + (uStack_58 >> 8 & 0xff) * 4) ^ param_1[7];
    iStack_5c = iStack_5c + -1;
    if (iStack_5c == 0) break;
    uStack_54 = *(uint *)(&ov13_02242AB0 + (uVar3 & 0xff) * 4) ^
                *(uint *)(&ov13_022446B0 + (uVar2 >> 0x18) * 4) ^
                *(uint *)(&ov13_02244AB0 + (uVar6 >> 0x10 & 0xff) * 4) ^
                *(uint *)(&ov13_022426B0 + (uVar4 >> 8 & 0xff) * 4) ^ *puVar1;
    uStack_58 = *(uint *)(&ov13_02242AB0 + (uVar4 & 0xff) * 4) ^
                *(uint *)(&ov13_022446B0 + (uVar3 >> 0x18) * 4) ^
                *(uint *)(&ov13_02244AB0 + (uVar2 >> 0x10 & 0xff) * 4) ^
                *(uint *)(&ov13_022426B0 + (uVar6 >> 8 & 0xff) * 4) ^ param_1[9];
    uStack_20 = *(uint *)(&ov13_022426B0 + (uVar2 >> 8 & 0xff) * 4) ^
                *(uint *)(&ov13_022446B0 + (uVar4 >> 0x18) * 4) ^
                *(uint *)(&ov13_02244AB0 + (uVar3 >> 0x10 & 0xff) * 4) ^
                *(uint *)(&ov13_02242AB0 + (uVar6 & 0xff) * 4) ^ param_1[10];
    uVar6 = param_1[0xb] ^
            *(uint *)(&ov13_022446B0 + (uVar6 >> 0x18) * 4) ^
            *(uint *)(&ov13_02244AB0 + (uVar4 >> 0x10 & 0xff) * 4) ^
            *(uint *)(&ov13_022426B0 + (uVar3 >> 8 & 0xff) * 4) ^
            *(uint *)(&ov13_02242AB0 + (uVar2 & 0xff) * 4);
    param_1 = puVar1;
  }
  uVar5 = *puVar1 ^ *(uint *)(&ov13_02242EB0 + (uVar2 >> 0x18) * 4) & 0xff000000 ^
                    *(uint *)(&ov13_02242EB0 + (uVar6 >> 0x10 & 0xff) * 4) & 0xff0000 ^
                    *(uint *)(&ov13_02242EB0 + (uVar4 >> 8 & 0xff) * 4) & 0xff00 ^
                    *(uint *)(&ov13_02242EB0 + (uVar3 & 0xff) * 4) & 0xff;
  *param_4 = (char)(uVar5 >> 0x18);
  param_4[1] = (char)(uVar5 >> 0x10);
  param_4[2] = (char)(uVar5 >> 8);
  param_4[3] = (char)uVar5;
  uVar5 = param_1[9] ^
          *(uint *)(&ov13_02242EB0 + (uVar3 >> 0x18) * 4) & 0xff000000 ^
          *(uint *)(&ov13_02242EB0 + (uVar2 >> 0x10 & 0xff) * 4) & 0xff0000 ^
          *(uint *)(&ov13_02242EB0 + (uVar6 >> 8 & 0xff) * 4) & 0xff00 ^
          *(uint *)(&ov13_02242EB0 + (uVar4 & 0xff) * 4) & 0xff;
  param_4[4] = (char)(uVar5 >> 0x18);
  param_4[5] = (char)(uVar5 >> 0x10);
  param_4[6] = (char)(uVar5 >> 8);
  param_4[7] = (char)uVar5;
  uVar5 = param_1[10] ^
          *(uint *)(&ov13_02242EB0 + (uVar2 >> 8 & 0xff) * 4) & 0xff00 ^
          *(uint *)(&ov13_02242EB0 + (uVar3 >> 0x10 & 0xff) * 4) & 0xff0000 ^
          *(uint *)(&ov13_02242EB0 + (uVar4 >> 0x18) * 4) & 0xff000000 ^
          *(uint *)(&ov13_02242EB0 + (uVar6 & 0xff) * 4) & 0xff;
  param_4[8] = (char)(uVar5 >> 0x18);
  param_4[9] = (char)(uVar5 >> 0x10);
  param_4[10] = (char)(uVar5 >> 8);
  param_4[0xb] = (char)uVar5;
  uVar6 = *(uint *)(&ov13_02242EB0 + (uVar3 >> 8 & 0xff) * 4) & 0xff00 ^
          *(uint *)(&ov13_02242EB0 + (uVar6 >> 0x18) * 4) & 0xff000000 ^
          *(uint *)(&ov13_02242EB0 + (uVar4 >> 0x10 & 0xff) * 4) & 0xff0000 ^
          *(uint *)(&ov13_02242EB0 + (uVar2 & 0xff) * 4) & 0xff ^ param_1[0xb];
  param_4[0xc] = (char)(uVar6 >> 0x18);
  param_4[0xd] = (char)(uVar6 >> 0x10);
  param_4[0xe] = (char)(uVar6 >> 8);
  param_4[0xf] = (char)uVar6;
  return;
}

