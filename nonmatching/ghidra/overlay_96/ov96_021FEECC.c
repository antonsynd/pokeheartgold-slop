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
undefined4 ov96_021FEBF0();
undefined4 ov96_021EB588();
undefined4 ov96_021EB0A4();
undefined4 ov96_021FEE60();
undefined4 ov96_021FED3C();

void ov96_021FEECC(undefined4 param_1,int param_2,int *param_3,int param_4,uint param_5,int param_6,
                  undefined4 param_7,int param_8,uint param_9,int param_10)

{
  char cVar1;
  uint uVar2;
  undefined4 uVar3;
  bool bVar4;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  
  uVar2 = (int)(uint)*(byte *)(param_4 + 0x1d) >> ((param_5 & 0x7f) << 1) & 3;
  bVar4 = *(byte *)(param_2 + 0x9f) != uVar2;
  if (bVar4) {
    *(char *)(param_2 + 0x9f) = (char)uVar2;
    *(undefined1 *)(param_2 + 0xa0) = 0;
  }
  ov96_021EB0A4(*(undefined4 *)(param_2 + param_6 * 4),
                (int)(*param_3 + ((uint)(*param_3 >> 0xb) >> 0x14)) >> 0xc,
                (int)(param_3[1] + ((uint)(param_3[1] >> 0xb) >> 0x14)) >> 0xc,&iStack_24,&iStack_28
               );
  iStack_20 = iStack_24 << 0xc;
  iStack_1c = iStack_28 << 0xc;
  uStack_18 = 0;
  cVar1 = *(char *)(param_2 + 0x9f);
  if (cVar1 == '\0') {
    if (bVar4) {
      if ((param_8 == 0) || (param_10 == 0)) {
        uVar2 = 0;
      }
      else {
        uVar2 = 1;
      }
      ov96_021FEE60(param_2,param_5,param_6,param_7,uVar2 | param_9,param_9);
    }
    ov96_021EB588(*(undefined4 *)(param_2 + 0x70),&iStack_20);
    return;
  }
  if (cVar1 == '\x01') {
    if ((param_8 == 0) || (param_10 == 0)) {
      uVar3 = 0;
    }
    else {
      uVar3 = 1;
    }
    ov96_021FEBF0(param_1,param_2,&iStack_20,param_5,param_6,param_7,uVar3,param_9);
    return;
  }
  if (cVar1 != '\x02') {
    return;
  }
  if ((param_8 == 0) || (param_10 == 0)) {
    uVar2 = 0;
  }
  else {
    uVar2 = 1;
  }
  ov96_021FED3C(param_2,&iStack_20,param_5,param_6,param_7,uVar2 | param_9,param_9);
  return;
}

