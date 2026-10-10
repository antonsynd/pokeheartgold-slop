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
undefined4 ov83_02240D64();
undefined4 sub_0200CE7C();
undefined4 GetMonData();
undefined4 Party_GetMonByIndex();
undefined4 func_0x02237d8c() __asm__("sub_02237D8C");

void ov83_022401A4(int param_1,undefined4 param_2,int param_3,int param_4)

{
  bool bVar1;
  undefined1 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  
  iVar3 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
  if (iVar3 == 0) {
    iVar3 = 0x28;
    iVar6 = 0x50;
  }
  else {
    iVar3 = 8;
    iVar6 = 0x30;
  }
  uVar4 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x7a4),param_3);
  if (param_4 != 0) {
    iVar3 = 4;
    iVar6 = 0x30;
  }
  else {
    iVar3 = iVar3 + param_3 * 0x40;
    iVar6 = iVar6 + param_3 * 0x40;
  }
  bVar1 = param_4 == 0;
  uVar5 = GetMonData(uVar4,0xa1,0);
  sub_0200CE7C(*(undefined4 *)(param_1 + 0x504),1,uVar5,3,0,param_2,iVar3,bVar1);
  uVar2 = GetMonData(uVar4,0x6f,0);
  ov83_02240D64(param_1,param_2,iVar6,bVar1,0,uVar2);
  return;
}

