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
undefined4 GetBoxMonData();
undefined4 Mon_GetBoxMon();
undefined4 ov70_0223F6E4();
undefined4 CalcBoxMonLevel();

void ov70_0223E690(int param_1,int param_2)

{
  char cVar1;
  undefined1 uVar2;
  undefined2 uVar3;
  undefined4 uVar4;
  undefined2 uStack_16;
  undefined2 uStack_14;
  undefined2 uStack_10;
  
  uVar3 = GetBoxMonData(*(undefined4 *)(param_2 + 0x124),5,0);
  cVar1 = GetBoxMonData(*(undefined4 *)(param_2 + 0x124),0x6f,0);
  uVar2 = CalcBoxMonLevel(*(undefined4 *)(param_2 + 0x124));
  uStack_10 = CONCAT11(uVar2,cVar1 + '\x01');
  *(undefined2 *)(param_1 + 0xec) = uVar3;
  *(undefined2 *)(param_1 + 0xee) = uStack_10;
  ov70_0223F6E4(param_1,param_2);
  uVar4 = Mon_GetBoxMon(param_2 + 0x260 + *(int *)(param_2 + 300) * 0x124);
  uVar3 = GetBoxMonData(uVar4,5,0);
  cVar1 = GetBoxMonData(uVar4,0x6f,0);
  uStack_16 = (ushort)(byte)(cVar1 + 1);
  uStack_14 = uStack_14 & 0xff00;
  *(undefined2 *)(param_1 + 0xf0) = uVar3;
  *(ushort *)(param_1 + 0xf2) = uStack_16;
  *(ushort *)(param_1 + 0xf4) = uStack_14;
  return;
}

