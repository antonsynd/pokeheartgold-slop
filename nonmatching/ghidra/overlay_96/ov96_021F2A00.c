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
undefined4 ov96_021EB0A4();
extern undefined ov96_0221BDD4;

void ov96_021F2A00(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined2 *puVar2;
  int iVar3;
  undefined2 *puStack_2c;
  undefined4 *puStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  puStack_28 = (undefined4 *)(param_1 + 0x20);
  iStack_24 = 0;
  puStack_2c = (undefined2 *)&ov96_0221BDD4;
  uStack_18 = param_4;
  do {
    iVar3 = 0;
    puVar1 = puStack_28;
    puVar2 = puStack_2c;
    do {
      if (puVar1[6] == 0) {
        puVar1[6] = 2;
        ov96_021EB0A4(*puVar1,*puVar2,puVar2[1],&iStack_1c,&iStack_20);
        puVar1[10] = iStack_1c << 0xc;
        puVar1[0xb] = iStack_20 << 0xc;
        puVar1[7] = puVar1[10];
        puVar1[8] = puVar1[0xb];
        puVar1[9] = puVar1[0xc];
        *(undefined1 *)(puVar1 + 0x10) = 2;
      }
      iVar3 = iVar3 + 1;
      puVar1 = puVar1 + 0x24;
      puVar2 = puVar2 + 2;
    } while (iVar3 < 3);
    puStack_28 = puStack_28 + 0x6c;
    puStack_2c = puStack_2c + 6;
    iStack_24 = iStack_24 + 1;
  } while (iStack_24 < 4);
  return;
}

