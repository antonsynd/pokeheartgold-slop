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
unsigned char GetWindowY(void *);
undefined4 FillBgTilemapRect(void *, unsigned char, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char);
undefined4 BgCommitTilemapBufferToVram(void *, unsigned char);
unsigned char GetWindowBgId(void *);
undefined4 BG_LoadCharTilesData(void *, unsigned char, void *, unsigned int, unsigned int);
unsigned char GetWindowWidth(void *);

void sub_0200F1D4(undefined4 *param_1,int param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  
  bVar2 = GetWindowBgId((undefined *)*param_1);
  bVar3 = GetWindowX((undefined *)*param_1);
  bVar4 = GetWindowY((undefined *)*param_1);
  bVar5 = GetWindowWidth((undefined *)*param_1);
  if (param_2 == 2) {
    BG_LoadCharTilesData
              (*(undefined **)*param_1,bVar2,(undefined *)(param_1 + 0x101),0x80,
               *(ushort *)(param_1 + 0x121) + 0x12);
    bVar1 = bVar3 + bVar5 + 1;
    FillBgTilemapRect(*(undefined **)*param_1,bVar2,*(short *)(param_1 + 0x121) + 10,bVar1,bVar4 + 2
                      ,1,1,0x10);
    bVar3 = bVar3 + bVar5 + 2;
    FillBgTilemapRect(*(undefined **)*param_1,bVar2,*(short *)(param_1 + 0x121) + 0xb,bVar3,
                      bVar4 + 2,1,1,0x10);
    FillBgTilemapRect(*(undefined **)*param_1,bVar2,*(short *)(param_1 + 0x121) + 10,bVar1,bVar4 + 3
                      ,1,1,0x10);
    FillBgTilemapRect(*(undefined **)*param_1,bVar2,*(short *)(param_1 + 0x121) + 0xb,bVar3,
                      bVar4 + 3,1,1,0x10);
    BgCommitTilemapBufferToVram(*(undefined **)*param_1,bVar2);
    return;
  }
  BG_LoadCharTilesData
            (*(undefined **)*param_1,bVar2,
             (undefined *)(param_1 + (*(byte *)((int)param_1 + 0x487) & 0x7f) * 0x20 + 1),0x80,
             *(ushort *)(param_1 + 0x121) + 0x12);
  if (param_2 != 0) {
    bVar1 = bVar3 + bVar5 + 1;
    FillBgTilemapRect(*(undefined **)*param_1,bVar2,*(short *)(param_1 + 0x121) + 0x12,bVar1,
                      bVar4 + 2,1,1,0x10);
    bVar3 = bVar3 + bVar5 + 2;
    FillBgTilemapRect(*(undefined **)*param_1,bVar2,*(short *)(param_1 + 0x121) + 0x13,bVar3,
                      bVar4 + 2,1,1,0x10);
    FillBgTilemapRect(*(undefined **)*param_1,bVar2,*(short *)(param_1 + 0x121) + 0x14,bVar1,
                      bVar4 + 3,1,1,0x10);
    FillBgTilemapRect(*(undefined **)*param_1,bVar2,*(short *)(param_1 + 0x121) + 0x15,bVar3,
                      bVar4 + 3,1,1,0x10);
    BgCommitTilemapBufferToVram(*(undefined **)*param_1,bVar2);
  }
  return;
}

