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
undefined4 BgClearTilemapBufferAndCommit();
undefined4 SetBothScreensModesAndDisable();
undefined4 BG_ClearCharDataRange();
undefined4 InitBgFromTemplate();
undefined4 NARC_New();
undefined4 BgConfig_Alloc();
extern undefined ov99_021EA4F4;
extern undefined ov99_021EA59C;

void ov99_021E8590(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined *puVar6;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 auStack_c0 [42];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  uVar1 = BgConfig_Alloc(*(undefined4 *)(param_1 + 0xc));
  *(undefined4 *)(param_1 + 4) = uVar1;
  uStack_d0 = 1;
  uStack_cc = 0;
  uStack_c8 = 0;
  uStack_c4 = 0;
  SetBothScreensModesAndDisable(&uStack_d0,0,&uStack_d0,auStack_c0);
  puVar5 = (undefined4 *)&ov99_021EA4F4;
  puVar4 = auStack_c0;
  iVar3 = 0x15;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  puVar6 = &ov99_021EA59C;
  iVar3 = 0;
  puVar4 = auStack_c0;
  do {
    InitBgFromTemplate(*(undefined4 *)(param_1 + 4),*puVar6,puVar4,0);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 4),*puVar6);
    BG_ClearCharDataRange(*puVar6,0x20,0,*(undefined4 *)(param_1 + 0xc));
    iVar3 = iVar3 + 1;
    puVar4 = puVar4 + 7;
    puVar6 = puVar6 + 1;
  } while (iVar3 < 6);
  uVar1 = NARC_New(0xb1,*(undefined4 *)(param_1 + 0xc));
  *(undefined4 *)(param_1 + 8) = uVar1;
  return;
}

