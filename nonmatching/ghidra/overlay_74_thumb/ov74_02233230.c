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
undefined4 Save_PlayerData_GetProfile();
void * BgConfig_Alloc(int);
void * OverlayManager_GetArgs(void *);
void * String_New(unsigned int, int);
void * OverlayManager_CreateAndGetData(void *, unsigned int, int);
void * YesNoPrompt_Create(int);
undefined4 Options_GetFrame();
undefined4 Sound_SetSceneAndPlayBGM(unsigned char, unsigned short, int);
undefined4 func_0x020d33c0(void) __asm__("sub_020D33C0");
void * func_0x020e5b44(void *, int, unsigned int) __asm__("sub_020E5B44");
undefined4 sub_0200FBF4(int, unsigned short);
void * Save_PlayerData_GetOptionsAddr(void *);
undefined4 ov74_02236074(void);
undefined4 func_0x020d3438(void) __asm__("sub_020D3438");
undefined4 Heap_Create();
extern int  iRam0223d338 __asm__("sub_0223D338");

undefined4
ov74_02233230(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;

  Heap_Create(3,0x4c,0x38000,param_4,param_4);
  iVar1 = OverlayManager_CreateAndGetData(param_1,0x12610,0x4c);
  func_0x020e5b44(iVar1,0,0x12610);
  uVar2 = BgConfig_Alloc(0x4c);
  *(undefined4 *)(iVar1 + 0x20) = uVar2;
  uVar2 = YesNoPrompt_Create(0x4c);
  *(undefined4 *)(iVar1 + 0xe88c) = uVar2;
  sub_0200FBF4(0,0);
  sub_0200FBF4(1,0);
  iVar3 = OverlayManager_GetArgs(param_1);
  *(undefined4 *)(iVar1 + 0x10) = *(undefined4 *)(iVar3 + 8);
  uVar2 = Save_PlayerData_GetProfile();
  *(undefined4 *)(iVar1 + 0x14) = uVar2;
  uVar2 = Save_PlayerData_GetOptionsAddr(*(undefined4 *)(iVar1 + 0x10));
  *(undefined4 *)(iVar1 + 0x18) = uVar2;
  uVar2 = Options_GetFrame();
  *(undefined4 *)(iVar1 + 0x1c) = uVar2;
  uVar2 = String_New(0x180,0x4c);
  *(undefined4 *)(iVar1 + 0x12608) = uVar2;
  uVar2 = String_New(0x180,0x4c);
  *(undefined4 *)(iVar1 + 0x1260c) = uVar2;
  Sound_SetSceneAndPlayBGM(9,0x47e,1);
  iVar3 = func_0x020d3438();
  if (iVar3 == 0) {
    func_0x020d33c0();
  }
  ov74_02236074();
  iRam0223d338 = iVar1 + 0xe89c;
  return 1;
}

