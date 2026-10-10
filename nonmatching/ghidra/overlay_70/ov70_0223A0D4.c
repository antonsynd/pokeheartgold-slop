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
undefined4 AddWindowParameterized();
undefined4 ov70_02239D44();
undefined4 FillWindowPixelBuffer();
extern undefined ov70_022453B8;

void ov70_0223A0D4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint *puVar1;
  uint *puVar2;
  uint *puVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  
  AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0xf18,0,2,0x15,0x1b,2,0xd,0x28);
  FillWindowPixelBuffer(param_1 + 0xf18,0);
  AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0xf58,0,0x15,0xf,10,4,0xd,0x5e);
  iVar6 = 0;
  puVar3 = (uint *)&ov70_022453B8;
  uVar5 = 0x86;
  iVar4 = param_1 + 0x1058;
  do {
    AddWindowParameterized
              (*(undefined4 *)(param_1 + 4),iVar4,3,*puVar3 & 0xff,puVar3[1] & 0xff,puVar3[2] & 0xff
               ,puVar3[3] & 0xff,0xd,uVar5 & 0xffff,iVar6,param_4);
    FillWindowPixelBuffer(iVar4,0);
    puVar1 = puVar3 + 2;
    puVar2 = puVar3 + 3;
    puVar3 = puVar3 + 4;
    uVar5 = uVar5 + *puVar1 * *puVar2;
    iVar4 = iVar4 + 0x10;
    iVar6 = iVar6 + 1;
  } while (iVar6 < 0xe);
  ov70_02239D44(param_1,2);
  return;
}

