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
void * NewMsgDataFromNarc(int, int, int, int);
void * String_New(unsigned int, int);

void ov80_0222E450(int param_1,int *param_2,undefined1 param_3,undefined1 param_4,byte param_5,
                  byte param_6,int param_7,int param_8,int param_9)

{
  undefined *puVar1;
  int iVar2;
  int *piVar3;
  byte bVar4;
  int *piVar5;
  int iVar6;
  int *piVar7;
  
  if (param_9 == 0) {
    puVar1 = NewMsgDataFromNarc(1,0x1b,0xbf,*(int *)(param_1 + 0x34));
    param_2[0x23] = (int)puVar1;
    bVar4 = *(byte *)((int)param_2 + 0x97) | 2;
  }
  else {
    param_2[0x23] = param_9;
    bVar4 = *(byte *)((int)param_2 + 0x97) & 0xfd;
  }
  *(byte *)((int)param_2 + 0x97) = bVar4;
  param_2[0x24] = param_8;
  *param_2 = param_1;
  param_2[0x28] = param_7;
  iVar2 = 0;
  *(undefined2 *)param_2[0x28] = 0;
  *(byte *)((int)param_2 + 0x97) = *(byte *)((int)param_2 + 0x97) & 0xfe | param_6 & 1;
  *(byte *)((int)param_2 + 0x96) = param_5;
  *(undefined1 *)(param_2 + 0x26) = param_3;
  *(undefined1 *)((int)param_2 + 0x99) = param_4;
  *(undefined1 *)((int)param_2 + 0x9b) = 0;
  param_2[6] = param_1 + 100;
  *(undefined1 *)(param_2 + 0x25) = 3;
  *(ushort *)(param_2 + 0xb5) = (ushort)param_5;
  iVar6 = 0;
  piVar3 = param_2;
  do {
    piVar3[0x2d] = 0;
    piVar5 = piVar3 + 0x2e;
    iVar2 = iVar2 + 1;
    piVar3 = piVar3 + 2;
    *piVar5 = 0;
  } while (iVar2 < 0x1c);
  iVar2 = 0;
  piVar3 = param_2;
  piVar5 = param_2;
  do {
    piVar3[0x6f] = 0;
    piVar3[0x70] = 0;
    *(undefined2 *)(piVar5 + 0xa7) = 0xff;
    iVar6 = iVar6 + 1;
    piVar3 = piVar3 + 2;
    piVar5 = (int *)((int)piVar5 + 2);
    piVar7 = param_2;
  } while (iVar6 < 0x1c);
  do {
    puVar1 = String_New(0x50,*(int *)(param_1 + 0x34));
    piVar7[7] = (int)puVar1;
    iVar2 = iVar2 + 1;
    piVar7 = piVar7 + 1;
  } while (iVar2 < 0x1c);
  *(undefined2 *)param_2[0x28] = 0xeeee;
  return;
}

