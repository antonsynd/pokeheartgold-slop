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
undefined4 func_0x02026eb4() __asm__("sub_02026EB4");
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 ov81_02240D2C();
undefined4 func_0x02006ff8() __asm__("sub_02006FF8");
undefined4 ov81_02243240();
undefined4 func_0x02237254() __asm__("sub_02237254");
undefined4 Heap_Create();
undefined4 ov81_022432AC();
undefined4 ov81_02240D64();
undefined4 OverlayManager_CreateAndGetData();
undefined4 ov81_02240F08();
undefined4 ov81_02241BB8();
undefined4 OverlayManager_GetArgs();
undefined4 ov81_022432DC();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 BgConfig_Alloc();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 sub_02096910();

undefined4 ov81_0223DD60(undefined4 param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  int iVar4;

  func_0x02006ff8(0x50,2);
  ov81_02240D2C();
  Heap_Create(3,100,0x30000);
  puVar1 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x48c,100);
  func_0x020e5b44(puVar1,0,0x48c);
  uVar2 = func_0x02026eb4(100,0,2,0,2,0x2242bc9);
  puVar1[0x69] = uVar2;
  uVar2 = BgConfig_Alloc(100);
  puVar1[0x13] = uVar2;
  *puVar1 = param_1;
  puVar3 = (undefined4 *)OverlayManager_GetArgs(param_1);
  puVar1[0x6f] = *puVar3;
  *(undefined1 *)((int)puVar1 + 9) = *(undefined1 *)(puVar3 + 1);
  *(undefined1 *)((int)puVar1 + 10) = *(undefined1 *)((int)puVar3 + 5);
  *(undefined1 *)((int)puVar1 + 0xb) = *(undefined1 *)((int)puVar3 + 6);
  puVar1[0xf0] = puVar3[2];
  puVar1[0xf1] = puVar3[3];
  puVar1[0xf5] = puVar3 + 4;
  uVar2 = Save_PlayerData_GetOptionsAddr(puVar1[0x6f]);
  puVar1[0x6e] = uVar2;
  puVar1[5] = 8;
  iVar4 = ov81_02240F08(puVar1,0);
  if (iVar4 == 1) {
    *(undefined1 *)((int)puVar1 + 0x12) = 6;
    uVar2 = ov81_02243240(puVar1,0);
    puVar1[0x119] = uVar2;
  }
  else {
    iVar4 = func_0x02237254(*(undefined1 *)((int)puVar1 + 9));
    if (iVar4 == 1) {
      *(undefined1 *)((int)puVar1 + 0x12) = 2;
      *(undefined1 *)((int)puVar1 + 0x1a) = 3;
      *(undefined1 *)((int)puVar1 + 0x1b) = 6;
      uVar2 = ov81_022432DC(puVar1,0);
      puVar1[0x119] = uVar2;
    }
    else {
      *(undefined1 *)((int)puVar1 + 0x12) = 3;
      *(undefined1 *)((int)puVar1 + 0x1a) = 4;
      *(undefined1 *)((int)puVar1 + 0x1b) = 5;
      uVar2 = ov81_022432AC(puVar1,0);
      puVar1[0x119] = uVar2;
    }
  }
  iVar4 = func_0x02237254(*(undefined1 *)((int)puVar1 + 9));
  if (iVar4 == 1) {
    uVar2 = 2;
  }
  else {
    uVar2 = 3;
  }
  puVar1[0x11f] = uVar2;
  ov81_02241BB8(puVar1 + 0x11b);
  ov81_02240D64(puVar1);
  TextFlags_SetCanTouchSpeedUpPrint(1);
  iVar4 = func_0x02237254(*(undefined1 *)((int)puVar1 + 9));
  if (iVar4 == 1) {
    sub_02096910(puVar1);
  }
  *param_2 = 0;
  return 1;
}

