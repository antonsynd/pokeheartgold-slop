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
undefined4 ov13_02225710();
extern undefined ov13_02242AB0;
extern undefined ov13_022446B0;
extern undefined ov13_022426B0;
extern undefined ov13_02244AB0;
extern undefined ov13_022442B0;

int ov13_022259C8(uint *param_1)

{
  int iVar1;
  int iVar2;
  uint *puVar3;
  uint *puVar4;
  uint uVar5;
  int iVar6;
  int iStack_18;
  
  iVar1 = ov13_02225710();
  iVar6 = iVar1 * 4;
  iVar2 = 0;
  if (0 < iVar6) {
    puVar4 = param_1 + iVar1 * 4;
    puVar3 = param_1;
    do {
      uVar5 = *puVar3;
      iVar2 = iVar2 + 4;
      *puVar3 = *puVar4;
      *puVar4 = uVar5;
      uVar5 = puVar3[1];
      iVar6 = iVar6 + -4;
      puVar3[1] = puVar4[1];
      puVar4[1] = uVar5;
      uVar5 = puVar3[2];
      puVar3[2] = puVar4[2];
      puVar4[2] = uVar5;
      uVar5 = puVar3[3];
      puVar3[3] = puVar4[3];
      puVar4[3] = uVar5;
      puVar3 = puVar3 + 4;
      puVar4 = puVar4 + -4;
    } while (iVar2 < iVar6);
  }
  iStack_18 = 1;
  if (1 < iVar1) {
    do {
      puVar3 = param_1 + 4;
      uVar5 = *puVar3;
      *puVar3 = *(uint *)(&ov13_022446B0 +
                         (*(uint *)(&ov13_022442B0 + (uVar5 >> 0x18) * 4) & 0xff) * 4) ^
                *(uint *)(&ov13_02244AB0 +
                         (*(uint *)(&ov13_022442B0 + (uVar5 >> 0x10 & 0xff) * 4) & 0xff) * 4) ^
                *(uint *)(&ov13_022426B0 +
                         (*(uint *)(&ov13_022442B0 + (uVar5 >> 8 & 0xff) * 4) & 0xff) * 4) ^
                *(uint *)(&ov13_02242AB0 +
                         (*(uint *)(&ov13_022442B0 + (uVar5 & 0xff) * 4) & 0xff) * 4);
      uVar5 = param_1[5];
      param_1[5] = *(uint *)(&ov13_022446B0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 >> 0x18) * 4) & 0xff) * 4) ^
                   *(uint *)(&ov13_02244AB0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 >> 0x10 & 0xff) * 4) & 0xff) * 4) ^
                   *(uint *)(&ov13_022426B0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 >> 8 & 0xff) * 4) & 0xff) * 4) ^
                   *(uint *)(&ov13_02242AB0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 & 0xff) * 4) & 0xff) * 4);
      uVar5 = param_1[6];
      param_1[6] = *(uint *)(&ov13_022446B0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 >> 0x18) * 4) & 0xff) * 4) ^
                   *(uint *)(&ov13_02244AB0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 >> 0x10 & 0xff) * 4) & 0xff) * 4) ^
                   *(uint *)(&ov13_022426B0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 >> 8 & 0xff) * 4) & 0xff) * 4) ^
                   *(uint *)(&ov13_02242AB0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 & 0xff) * 4) & 0xff) * 4);
      uVar5 = param_1[7];
      param_1[7] = *(uint *)(&ov13_022446B0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 >> 0x18) * 4) & 0xff) * 4) ^
                   *(uint *)(&ov13_02244AB0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 >> 0x10 & 0xff) * 4) & 0xff) * 4) ^
                   *(uint *)(&ov13_022426B0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 >> 8 & 0xff) * 4) & 0xff) * 4) ^
                   *(uint *)(&ov13_02242AB0 +
                            (*(uint *)(&ov13_022442B0 + (uVar5 & 0xff) * 4) & 0xff) * 4);
      iStack_18 = iStack_18 + 1;
      param_1 = puVar3;
    } while (iStack_18 < iVar1);
  }
  return iVar1;
}

