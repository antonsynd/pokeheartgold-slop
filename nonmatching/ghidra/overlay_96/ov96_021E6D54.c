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
undefined4 PokeathlonCourse_SetStateTransitionType();
undefined4 sub_020053A8();
undefined4 Sound_SetScene();
undefined4 ov96_021E87B0();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 PokeathlonCourse_GetSystem();
undefined4 PokeathlonCourse_RunSubStateLoop();
undefined4 GF_AssertFail();
undefined4 PokeathlonCourse_SetStateField07();
undefined4 GF_heap_c_dummy_return_true();
undefined4 Sound_SetSceneAndPlayBGM();

undefined4 ov96_021E6D54(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = PokeathlonCourse_RunSubStateLoop();
  if (iVar1 != 0) {
    iVar1 = PokeathlonCourse_GetDataCopyArea(param_1);
    *(undefined1 *)(iVar1 + 0x24) = 0;
    *(undefined1 *)(iVar1 + 0x4c) = 1;
    uVar2 = PokeathlonCourse_GetSystem(param_1);
    ov96_021E87B0(uVar2,1);
    PokeathlonCourse_SetStateTransitionType(param_1,8);
    if (*(int *)(param_1 + 0x1f0) == *(byte *)(param_1 + 0x72a) - 1) {
      Sound_SetScene(0);
      Sound_SetSceneAndPlayBGM(0x18,0x472,0);
    }
    else {
      Sound_SetScene(0);
      Sound_SetSceneAndPlayBGM(0x18,0x471,0);
    }
    sub_020053A8(7,1);
    PokeathlonCourse_SetStateField07(param_1,0x11);
    iVar1 = GF_heap_c_dummy_return_true(0x5c);
    if (iVar1 == 0) {
      GF_AssertFail();
    }
  }
  return 0;
}

