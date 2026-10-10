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
undefined4 ov08_02220C08(undefined4, undefined4, undefined4, undefined4);
undefined4 ov08_02220B90(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov08_02220C3C(undefined4, undefined4, undefined4, undefined4);
undefined4 ov08_02220A8C(undefined4, undefined4, undefined4);
extern undefined ov08_02225564;
extern undefined ov08_02225534;

void ov08_02220CF4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte *pbVar1;
  int *piVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  
  iVar5 = 0;
  pbVar1 = (byte *)(param_1 + 0x1b);
  piVar2 = (int *)&ov08_02225534;
  puVar4 = (undefined4 *)&ov08_02225564;
  iVar3 = param_1;
  do {
    if (*(short *)(iVar3 + 8) != 0) {
      ov08_02220A8C(*(undefined4 *)(param_1 + 0x1fd4),*piVar2,piVar2[1]);
      ov08_02220B90((*pbVar1 & 0x7f) >> 3,*(undefined4 *)(param_1 + 0x1fec),*puVar4,puVar4[1],pbVar1
                    ,iVar5,param_4);
      ov08_02220C08(*(undefined2 *)(iVar3 + 0x1e),*(undefined4 *)(param_1 + 0x1fb8),*piVar2 + 8,
                    piVar2[1] + 8);
      ov08_02220C3C(*(undefined1 *)(iVar3 + 0x31),*(undefined4 *)(param_1 + 0x2038),*piVar2 + 0x10,
                    piVar2[1] + 8);
    }
    iVar3 = iVar3 + 0x50;
    pbVar1 = pbVar1 + 0x50;
    piVar2 = piVar2 + 2;
    iVar5 = iVar5 + 1;
    param_1 = param_1 + 4;
    puVar4 = puVar4 + 2;
  } while (iVar5 < 6);
  return;
}

