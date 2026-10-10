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
undefined4 ov49_0225D528();
undefined4 GfGfxLoader_LoadFromOpenNarc();
undefined4 func_0x0222d740() __asm__("sub_0222D740");

void ov49_0225DC2C(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int *param_4,
                  undefined4 param_5)

{
  undefined4 uVar1;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined4 *puStack_2c;
  undefined4 *puStack_24;
  int *piStack_20;
  int iStack_1c;
  
  iStack_1c = 0;
  puStack_2c = param_1;
  puStack_24 = param_1;
  piStack_20 = param_4;
  do {
    ov49_0225D528(puStack_2c,param_2,*param_4,param_5);
    if ((iStack_1c != 0xb) && (iStack_1c != 0xc)) {
      func_0x0222d740(*puStack_2c);
    }
    iVar4 = 0;
    piVar2 = piStack_20;
    puVar3 = puStack_24;
    do {
      if (*param_4 == piVar2[0x12]) {
        puVar3[0x48] = 0;
      }
      else {
        uVar1 = GfGfxLoader_LoadFromOpenNarc(param_2,piVar2[0x12],0,param_5,0);
        puVar3[0x48] = uVar1;
      }
      iVar4 = iVar4 + 1;
      piVar2 = piVar2 + 1;
      puVar3 = puVar3 + 1;
    } while (iVar4 < 3);
    param_4 = param_4 + 1;
    puStack_2c = puStack_2c + 4;
    piStack_20 = piStack_20 + 3;
    puStack_24 = puStack_24 + 3;
    iStack_1c = iStack_1c + 1;
  } while (iStack_1c < 0x12);
  return;
}

