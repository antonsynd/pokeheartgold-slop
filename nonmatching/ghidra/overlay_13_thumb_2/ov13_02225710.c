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
extern undefined ov13_02242688;
extern undefined ov13_022442B0;

undefined4 ov13_02225710(uint *param_1,byte *param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  uint *puVar3;
  int iStack_30;
  
  iStack_30 = 0;
  *param_1 = (uint)*param_2 << 0x18 ^ (uint)param_2[1] << 0x10 ^ (uint)param_2[2] << 8 ^
             (uint)param_2[3];
  param_1[1] = (uint)param_2[4] << 0x18 ^ (uint)param_2[5] << 0x10 ^ (uint)param_2[6] << 8 ^
               (uint)param_2[7];
  param_1[2] = (uint)param_2[8] << 0x18 ^ (uint)param_2[9] << 0x10 ^ (uint)param_2[10] << 8 ^
               (uint)param_2[0xb];
  param_1[3] = (uint)param_2[0xc] << 0x18 ^ (uint)param_2[0xd] << 0x10 ^ (uint)param_2[0xe] << 8 ^
               (uint)param_2[0xf];
  if (param_3 == 0x80) {
    puVar3 = (uint *)&ov13_02242688;
    while( true ) {
      uVar2 = param_1[3];
      uVar1 = *puVar3;
      puVar3 = puVar3 + 1;
      uVar1 = uVar1 ^ *(uint *)(&ov13_022442B0 + (uVar2 >> 0x18) * 4) & 0xff ^
                      *(uint *)(&ov13_022442B0 + (uVar2 & 0xff) * 4) & 0xff00 ^
                      *param_1 ^ *(uint *)(&ov13_022442B0 + (uVar2 >> 0x10 & 0xff) * 4) & 0xff000000
                      ^ *(uint *)(&ov13_022442B0 + (uVar2 >> 8 & 0xff) * 4) & 0xff0000;
      param_1[4] = uVar1;
      uVar1 = uVar1 ^ param_1[1];
      param_1[5] = uVar1;
      uVar1 = uVar1 ^ param_1[2];
      param_1[6] = uVar1;
      param_1[7] = param_1[3] ^ uVar1;
      iStack_30 = iStack_30 + 1;
      if (9 < iStack_30) break;
      param_1 = param_1 + 4;
    }
    return 10;
  }
  param_1[4] = (uint)param_2[0x10] << 0x18 ^ (uint)param_2[0x11] << 0x10 ^ (uint)param_2[0x12] << 8
               ^ (uint)param_2[0x13];
  param_1[5] = (uint)param_2[0x14] << 0x18 ^ (uint)param_2[0x15] << 0x10 ^ (uint)param_2[0x16] << 8
               ^ (uint)param_2[0x17];
  if (param_3 == 0xc0) {
    puVar3 = (uint *)&ov13_02242688;
    while( true ) {
      uVar2 = param_1[5];
      uVar1 = *puVar3;
      puVar3 = puVar3 + 1;
      uVar1 = uVar1 ^ *(uint *)(&ov13_022442B0 + (uVar2 >> 0x18) * 4) & 0xff ^
                      *(uint *)(&ov13_022442B0 + (uVar2 & 0xff) * 4) & 0xff00 ^
                      *(uint *)(&ov13_022442B0 + (uVar2 >> 0x10 & 0xff) * 4) & 0xff000000 ^ *param_1
                      ^ *(uint *)(&ov13_022442B0 + (uVar2 >> 8 & 0xff) * 4) & 0xff0000;
      param_1[6] = uVar1;
      uVar1 = uVar1 ^ param_1[1];
      param_1[7] = uVar1;
      uVar1 = uVar1 ^ param_1[2];
      param_1[8] = uVar1;
      param_1[9] = param_1[3] ^ uVar1;
      iStack_30 = iStack_30 + 1;
      if (7 < iStack_30) break;
      param_1[10] = param_1[4] ^ param_1[9];
      param_1[0xb] = param_1[5] ^ param_1[4] ^ param_1[9];
      param_1 = param_1 + 6;
    }
    return 0xc;
  }
  param_1[6] = (uint)param_2[0x18] << 0x18 ^ (uint)param_2[0x19] << 0x10 ^ (uint)param_2[0x1a] << 8
               ^ (uint)param_2[0x1b];
  param_1[7] = (uint)param_2[0x1c] << 0x18 ^ (uint)param_2[0x1d] << 0x10 ^ (uint)param_2[0x1e] << 8
               ^ (uint)param_2[0x1f];
  if (param_3 == 0x100) {
    puVar3 = (uint *)&ov13_02242688;
    while( true ) {
      uVar2 = param_1[7];
      uVar1 = *puVar3;
      puVar3 = puVar3 + 1;
      uVar1 = uVar1 ^ *(uint *)(&ov13_022442B0 + (uVar2 >> 0x18) * 4) & 0xff ^
                      *(uint *)(&ov13_022442B0 + (uVar2 & 0xff) * 4) & 0xff00 ^
                      *(uint *)(&ov13_022442B0 + (uVar2 >> 0x10 & 0xff) * 4) & 0xff000000 ^ *param_1
                      ^ *(uint *)(&ov13_022442B0 + (uVar2 >> 8 & 0xff) * 4) & 0xff0000;
      param_1[8] = uVar1;
      uVar1 = uVar1 ^ param_1[1];
      param_1[9] = uVar1;
      uVar1 = uVar1 ^ param_1[2];
      param_1[10] = uVar1;
      param_1[0xb] = param_1[3] ^ uVar1;
      iStack_30 = iStack_30 + 1;
      if (6 < iStack_30) break;
      uVar1 = param_1[0xb];
      uVar1 = *(uint *)(&ov13_022442B0 + (uVar1 & 0xff) * 4) & 0xff ^
              *(uint *)(&ov13_022442B0 + (uVar1 >> 8 & 0xff) * 4) & 0xff00 ^
              *(uint *)(&ov13_022442B0 + (uVar1 >> 0x10 & 0xff) * 4) & 0xff0000 ^
              *(uint *)(&ov13_022442B0 + (uVar1 >> 0x18) * 4) & 0xff000000 ^ param_1[4];
      param_1[0xc] = uVar1;
      uVar1 = uVar1 ^ param_1[5];
      param_1[0xd] = uVar1;
      uVar1 = uVar1 ^ param_1[6];
      param_1[0xe] = uVar1;
      param_1[0xf] = param_1[7] ^ uVar1;
      param_1 = param_1 + 8;
    }
    return 0xe;
  }
  return 0;
}

