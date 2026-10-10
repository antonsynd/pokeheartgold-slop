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
unsigned char GetWindowX(void *);
undefined4 GF_AssertFail(void);
undefined4 ScheduleBgTilemapBufferTransfer(void *, unsigned char);
unsigned char GetWindowWidth(void *);
unsigned char GetWindowHeight(void *);
unsigned char GetWindowY(void *);
undefined4 FillBgTilemapRect(void *, unsigned char, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char);

void ov27_0225B630(undefined4 *param_1,int param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  undefined *puVar6;
  
  puVar6 = (undefined *)*param_1;
  bVar2 = GetWindowX((undefined *)param_1);
  bVar3 = GetWindowY((undefined *)param_1);
  bVar4 = GetWindowWidth((undefined *)param_1);
  bVar5 = GetWindowHeight((undefined *)param_1);
  if (param_2 == 1) {
    FillBgTilemapRect(puVar6,4,0xa9,bVar2 - 3,bVar3 - 1,1,1,2);
    FillBgTilemapRect(puVar6,4,0xaa,bVar2 - 2,bVar3 - 1,1,1,2);
    FillBgTilemapRect(puVar6,4,0xab,bVar2 - 1,bVar3 - 1,1,1,2);
    FillBgTilemapRect(puVar6,5,0xac,bVar2,bVar3 - 1,bVar4,1,2);
    bVar1 = bVar2 + bVar4;
    FillBgTilemapRect(puVar6,5,0xad,bVar1,bVar3 - 1,1,1,2);
    FillBgTilemapRect(puVar6,4,100,bVar2 - 3,bVar3,1,1,2);
    FillBgTilemapRect(puVar6,4,0x65,bVar2 - 2,bVar3,1,1,2);
    FillBgTilemapRect(puVar6,4,0x66,bVar2 - 1,bVar3,1,1,2);
    FillBgTilemapRect(puVar6,5,0x68,bVar1,bVar3,1,1,2);
    FillBgTilemapRect(puVar6,4,0x84,bVar2 - 3,bVar3 + 1,1,1,2);
    FillBgTilemapRect(puVar6,4,0x85,bVar2 - 2,bVar3 + 1,1,1,2);
    FillBgTilemapRect(puVar6,4,0x86,bVar2 - 1,bVar3 + 1,1,1,2);
    FillBgTilemapRect(puVar6,5,0x88,bVar1,bVar3 + 1,1,1,2);
    bVar3 = bVar3 + bVar5;
    FillBgTilemapRect(puVar6,4,0xa4,bVar2 - 3,bVar3,1,1,2);
    FillBgTilemapRect(puVar6,4,0xa5,bVar2 - 2,bVar3,1,1,2);
    FillBgTilemapRect(puVar6,4,0xa6,bVar2 - 1,bVar3,1,1,2);
    FillBgTilemapRect(puVar6,5,0xa7,bVar2,bVar3,bVar4,1,2);
    FillBgTilemapRect(puVar6,5,0xa8,bVar1,bVar3,1,1,2);
  }
  else if (param_2 == 2) {
    FillBgTilemapRect(puVar6,4,7,bVar2 - 3,bVar3 - 1,1,1,0);
    FillBgTilemapRect(puVar6,4,7,bVar2 - 2,bVar3 - 1,1,1,0);
    FillBgTilemapRect(puVar6,4,7,bVar2 - 1,bVar3 - 1,1,1,0);
    FillBgTilemapRect(puVar6,5,0,bVar2,bVar3 - 1,bVar4,1,2);
    bVar1 = bVar2 + bVar4;
    FillBgTilemapRect(puVar6,5,0,bVar1,bVar3 - 1,1,1,2);
    FillBgTilemapRect(puVar6,4,7,bVar2 - 3,bVar3,1,1,0);
    FillBgTilemapRect(puVar6,4,7,bVar2 - 2,bVar3,1,1,0);
    FillBgTilemapRect(puVar6,4,7,bVar2 - 1,bVar3,1,1,0);
    FillBgTilemapRect(puVar6,5,0,bVar1,bVar3,1,1,2);
    FillBgTilemapRect(puVar6,4,7,bVar2 - 3,bVar3 + 1,1,1,0);
    FillBgTilemapRect(puVar6,4,7,bVar2 - 2,bVar3 + 1,1,1,0);
    FillBgTilemapRect(puVar6,4,7,bVar2 - 1,bVar3 + 1,1,1,0);
    FillBgTilemapRect(puVar6,5,0,bVar1,bVar3 + 1,1,1,2);
    bVar3 = bVar3 + bVar5;
    FillBgTilemapRect(puVar6,4,7,bVar2 - 3,bVar3,1,1,0);
    FillBgTilemapRect(puVar6,4,7,bVar2 - 2,bVar3,1,1,0);
    FillBgTilemapRect(puVar6,4,7,bVar2 - 1,bVar3,1,1,0);
    FillBgTilemapRect(puVar6,5,0,bVar2,bVar3,bVar4,1,2);
    FillBgTilemapRect(puVar6,5,0,bVar1,bVar3,1,1,2);
  }
  else {
    GF_AssertFail();
  }
  ScheduleBgTilemapBufferTransfer(puVar6,4);
  ScheduleBgTilemapBufferTransfer(puVar6,5);
  return;
}

