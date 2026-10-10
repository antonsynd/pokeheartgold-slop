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
undefined4 ov83_02247944();
undefined4 GetMonData();
undefined4 SetMonData();
undefined4 CalcMonLevelAndStats();
undefined4 ov83_02244AB0();
undefined4 Options_GetFrame();
undefined4 Party_GetMonByIndex();
undefined4 ov83_022448AC();
undefined4 GetMonExpBySpeciesAndLevel();
undefined4 ov83_02247768();
undefined4 PlaySE();
undefined4 Mon_GetBoxMon();
undefined4 ov83_02246114();
undefined4 ov83_02245D48();
undefined4 ov83_022449D4();
undefined4 ov83_022448E4();

void ov83_02245838(int param_1,uint param_2,int param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar2 = Options_GetFrame(*(undefined4 *)(param_1 + 0x2b8));
  ov83_02247944(param_1 + 0xc0,uVar2);
  uVar2 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),param_2);
  uVar2 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x55c),uVar2);
  uVar3 = Mon_GetBoxMon();
  ov83_02244AB0(param_1,0,uVar3);
  if (param_3 == 1) {
    uVar1 = ov83_022448AC(param_1,0x1f,1);
    *(undefined1 *)(param_1 + 10) = uVar1;
    PlaySE(0x632);
  }
  else {
    uVar1 = ov83_022448AC(param_1,0x20,1);
    *(undefined1 *)(param_1 + 10) = uVar1;
    PlaySE(0x633);
  }
  iVar4 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),param_2);
  if (*(char *)(*(int *)(param_1 + 0x550) + iVar4) == '\0') {
    iVar4 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),param_2);
    *(char *)(*(int *)(param_1 + 0x550) + iVar4) = (char)param_3;
  }
  else {
    iVar4 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),param_2);
    *(undefined1 *)(*(int *)(param_1 + 0x550) + iVar4) = 0;
  }
  iVar4 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),param_2);
  if (*(char *)(*(int *)(param_1 + 0x550) + iVar4) == '\0') {
    uVar3 = GetMonData(uVar2,5,0);
    uStack_18 = GetMonExpBySpeciesAndLevel(uVar3,0x32);
    SetMonData(uVar2,8,&uStack_18);
    CalcMonLevelAndStats(uVar2);
  }
  else {
    iVar4 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),param_2);
    if (*(char *)(*(int *)(param_1 + 0x550) + iVar4) == '\x01') {
      uVar3 = GetMonData(uVar2,5,0);
      uStack_18 = GetMonExpBySpeciesAndLevel(uVar3,0x37);
      SetMonData(uVar2,8,&uStack_18);
      CalcMonLevelAndStats(uVar2);
    }
    else {
      uVar3 = GetMonData(uVar2,5,0);
      uStack_18 = GetMonExpBySpeciesAndLevel(uVar3,0x2d);
      SetMonData(uVar2,8,&uStack_18);
      CalcMonLevelAndStats(uVar2);
    }
  }
  ov83_022448E4(param_1,param_1 + 0x80);
  ov83_022449D4(param_1,param_1 + 0x70);
  if (*(byte *)(param_1 + 0xd) == param_2) {
    ov83_02245D48(param_1);
    ov83_02246114(param_1,0);
  }
  return;
}

