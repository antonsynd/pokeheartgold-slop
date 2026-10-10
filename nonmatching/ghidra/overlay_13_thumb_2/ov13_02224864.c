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
undefined4 ov13_02224624();
undefined4 ov13_02224694();

undefined4 ov13_02224864(undefined4 param_1,uint *param_2)

{
  int iVar1;
  ushort *puVar2;
  uint uVar3;
  uint uVar4;
  uint uStack_2c;
  int iStack_28;
  undefined1 auStack_24 [4];
  int iStack_20;
  int iStack_1c;
  int iStack_18;

  iVar1 = ov13_02224624(param_1,&iStack_18,&iStack_1c);
  uVar3 = 0;
  uVar4 = 0;
  uStack_2c = 0;
  if (iVar1 == 0) {
    return 0;
  }
  if (iStack_18 == 1) {
    iStack_28 = iVar1 + 8;
    puVar2 = (ushort *)ov13_02224694(&iStack_28,iVar1 + iStack_1c,&iStack_20,auStack_24);
    while (puVar2 != (ushort *)0x0) {
      if (iStack_20 == 1) {
        uVar3 = (*puVar2 & 0xff) << 8 | (int)(uint)*puVar2 >> 8;
      }
      else if (iStack_20 == 2) {
        uStack_2c = (int)(uint)*puVar2 >> 8 | (*puVar2 & 0xff) << 8;
      }
      else if (iStack_20 == 5) {
        uVar4 = (*puVar2 & 0xff) << 8 | (int)(uint)*puVar2 >> 8;
      }
      puVar2 = (ushort *)ov13_02224694(&iStack_28,iVar1 + iStack_1c,&iStack_20,auStack_24);
    }
    if ((uVar3 == 1) && (uStack_2c == 1)) {
      *param_2 = (uint)(uVar4 != 0);
      return 1;
    }
    return 0;
  }
  return 0;
}

