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
undefined4 Heap_Free();
undefined4 ov18_021F9648();
undefined4 func_0x02007c10() __asm__("sub_02007C10");
undefined4 GetWindowWidth();
undefined4 func_0x0201da04() __asm__("sub_0201DA04");
undefined4 CopyWindowPixelsToVram_TextMode();

void ov18_021EF388(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  short sVar3;
  int iVar4;
  uint uStack_24;
  int iStack_1c;
  undefined4 uStack_18;
  
  param_2 = param_2 * 0x10;
  iVar2 = param_1 + 0xc;
  uStack_18 = param_4;
  uVar1 = func_0x02007c10(*(undefined4 *)(param_1 + 0x854),4,1,&iStack_1c,0x25);
  sVar3 = 0;
  iVar4 = *(int *)(iStack_1c + 0x14);
  uStack_24 = 0;
  do {
    func_0x0201da04(iVar2 + param_2,iVar4 + 0xc40,0,0,8,8,sVar3,0,8,8,0xff);
    func_0x0201da04(iVar2 + param_2,iVar4 + 0xca0,0,0,8,8,sVar3,8,8,8,0xff);
    sVar3 = sVar3 + 8;
    uStack_24 = uStack_24 + 1;
  } while (uStack_24 < 8);
  Heap_Free(uVar1);
  iVar4 = GetWindowWidth(iVar2 + param_2);
  ov18_021F9648(iVar2 + param_2,*(undefined4 *)(param_1 + 0x65c),param_3,(iVar4 * 8) / 2,0,4,0x20100
                ,2);
  CopyWindowPixelsToVram_TextMode(iVar2 + param_2);
  return;
}

