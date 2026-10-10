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
undefined4 FillBgTilemapRect(void *, unsigned int, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, ...);

void sub_0200ECBC(undefined4 param_1,undefined4 param_2,char param_3,int param_4,char param_5,
                 int param_6,undefined4 param_7,short param_8)

{
  char cVar1;
  char cVar2;
  char cVar3;
  char cVar4;
  char cVar5;
  uint uVar6;

  uVar6 = param_4 - 1;
  cVar5 = param_3 + -9;
  FillBgTilemapRect(param_1,param_2,param_8,cVar5,uVar6 & 0xff,1,1,param_7);
  cVar1 = param_3 + -8;
  FillBgTilemapRect(param_1,param_2,param_8 + 1,cVar1,uVar6 & 0xff,1,1,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 2,param_3 + -7,uVar6 & 0xff,param_5 + '\a',1,param_7);
  cVar2 = param_3 + param_5;
  FillBgTilemapRect(param_1,param_2,param_8 + 3,cVar2,uVar6 & 0xff,1,1,param_7);
  cVar3 = cVar2 + '\x01';
  FillBgTilemapRect(param_1,param_2,param_8 + 4,cVar3,uVar6 & 0xff,1,1,param_7);
  cVar4 = cVar2 + '\x02';
  FillBgTilemapRect(param_1,param_2,param_8 + 5,cVar4,uVar6 & 0xff,1,1,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 6,cVar5,param_4,1,param_6,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 7,cVar1,param_4,1,param_6,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 8,param_3 + -1,param_4,1,param_6,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 9,cVar2,param_4,1,param_6,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 10,cVar3,param_4,1,param_6,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 0xb,cVar4,param_4,1,param_6,param_7);
  uVar6 = param_4 + param_6;
  FillBgTilemapRect(param_1,param_2,param_8 + 0xc,cVar5,uVar6 & 0xff,1,1,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 0xd,cVar1,uVar6 & 0xff,1,1,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 0xe,param_3 + -7,uVar6 & 0xff,param_5 + '\a',1,param_7
                   );
  FillBgTilemapRect(param_1,param_2,param_8 + 0xf,cVar2,uVar6 & 0xff,1,1,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 0x10,cVar3,uVar6 & 0xff,1,1,param_7);
  FillBgTilemapRect(param_1,param_2,param_8 + 0x11,cVar4,uVar6 & 0xff,1,1,param_7);
  return;
}

