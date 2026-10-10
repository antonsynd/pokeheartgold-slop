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
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 BgConfig_Alloc();
undefined4 OverlayManager_CreateAndGetData();
undefined4 func_0x02006ff8() __asm__("sub_02006FF8");
undefined4 sub_02096910();
undefined4 ov82_0223E9B0();
undefined4 Heap_Create();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 ov82_0223E9E8();
undefined4 OverlayManager_GetArgs();
undefined4 func_0x0223792c() __asm__("sub_0223792C");
undefined4 Save_PlayerData_GetOptionsAddr();

undefined4 ov82_0223DD60(undefined4 param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  int iVar4;
  
  func_0x02006ff8(0x50,2);
  ov82_0223E9B0();
  Heap_Create(3,0x69,0x20000);
  puVar1 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x284,0x69);
  func_0x020e5b44(puVar1,0,0x284);
  uVar2 = BgConfig_Alloc(0x69);
  puVar1[0x12] = uVar2;
  *puVar1 = param_1;
  puVar3 = (undefined4 *)OverlayManager_GetArgs(param_1);
  puVar1[0x28] = *puVar3;
  *(undefined1 *)((int)puVar1 + 9) = *(undefined1 *)(puVar3 + 1);
  puVar1[0x84] = (int)puVar3 + 6;
  uVar2 = Save_PlayerData_GetOptionsAddr(puVar1[0x28]);
  puVar1[0x27] = uVar2;
  puVar1[0x85] = puVar3[3];
  puVar1[0x86] = puVar3[2];
  puVar1[0x87] = puVar3[5];
  *(short *)(puVar1 + 7) = *(short *)(puVar3 + 6) + 1;
  *(undefined1 *)((int)puVar1 + 0xd) = *(undefined1 *)((int)puVar3 + 5);
  *(undefined1 *)(puVar1 + 0x9f) = 0xff;
  *(undefined1 *)(puVar1 + 6) = 0xff;
  *(undefined1 *)((int)puVar1 + 0x1f) = 0x75;
  ov82_0223E9E8(puVar1);
  iVar4 = func_0x0223792c(*(undefined1 *)((int)puVar1 + 9));
  if (iVar4 == 1) {
    sub_02096910(puVar1);
  }
  *param_2 = 0;
  TextFlags_SetCanTouchSpeedUpPrint(1);
  return 1;
}

