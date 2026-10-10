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
undefined4 InitBgFromTemplate();
undefined4 SetBothScreensModesAndDisable();
extern undefined ov51_021E7ED0;
extern ushort uRam04000304 __asm__("sub_04000304");

void ov51_021E6238(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 auStack_74 [7];
  undefined1 auStack_58 [28];
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;

  uRam04000304 = uRam04000304 | 0x8000;
  uStack_20 = 1;
  uStack_1c = 0;
  uStack_18 = 5;
  uStack_14 = 0;
  uStack_10 = param_4;
  SetBothScreensModesAndDisable(&uStack_20,0,&uStack_20,&uStack_10);
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0x800;
  uStack_30 = 0;
  uStack_2c = 0x61e0101;
  uStack_28 = 0x100;
  uStack_24 = 0;
  InitBgFromTemplate(param_1,7,&uStack_3c,2);
  BgClearTilemapBufferAndCommit(param_1,7);
  puVar5 = (undefined4 *)&ov51_021E7ED0;
  puVar4 = auStack_74;
  iVar3 = 7;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  InitBgFromTemplate(param_1,4,auStack_74,0);
  BgClearTilemapBufferAndCommit(param_1,4);
  InitBgFromTemplate(param_1,5,auStack_58,0);
  BgClearTilemapBufferAndCommit(param_1,5);
  uStack_90 = 0;
  uStack_8c = 0;
  uStack_88 = 0x800;
  uStack_84 = 0;
  uStack_80 = 0x41d0101;
  uStack_7c = 0x200;
  uStack_78 = 0;
  InitBgFromTemplate(param_1,6,&uStack_90,2);
  BgClearTilemapBufferAndCommit(param_1,6);
  uStack_ac = 0;
  uStack_a8 = 0;
  uStack_a4 = 0x800;
  uStack_a0 = 0;
  uStack_9c = 0x1c0001;
  uStack_98 = 0x200;
  uStack_94 = 0;
  InitBgFromTemplate(param_1,2,&uStack_ac,0);
  BgClearTilemapBufferAndCommit(param_1,2);
  uStack_c8 = 0;
  uStack_c4 = 0;
  uStack_c0 = 0x800;
  uStack_bc = 0;
  uStack_b8 = 0x1d0001;
  uStack_b4 = 0x300;
  uStack_b0 = 0;
  InitBgFromTemplate(param_1,3,&uStack_c8,0);
  BgClearTilemapBufferAndCommit(param_1,3);
  return;
}

