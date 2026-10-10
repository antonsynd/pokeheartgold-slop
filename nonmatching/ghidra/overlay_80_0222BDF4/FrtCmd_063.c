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
undefined4 FrontierScriptContext_Pause();
undefined4 func_0x02003d5c() __asm__("sub_02003D5C");
undefined4 Frontier_SetData();
undefined4 Heap_Alloc();
undefined4 FrontierSystem_GetFrontierMap();
undefined4 FrontierScript_ReadVar();
undefined4 Sound_SetSceneAndPlayBGM();
undefined4 Frontier_GetLaunchArgs();
undefined4 Frontier_GetData();

undefined4 FrtCmd_063(undefined4 *param_1)

{
  undefined2 uVar1;
  int *piVar2;
  int iVar3;
  
  Frontier_GetLaunchArgs(*(undefined4 *)*param_1);
  uVar1 = FrontierScript_ReadVar(param_1);
  *(undefined2 *)(param_1 + 0x1e) = uVar1;
  Sound_SetSceneAndPlayBGM(5,0x45d,1);
  piVar2 = (int *)Heap_Alloc(0xb,0x30);
  iVar3 = Frontier_GetData(*(undefined4 *)*param_1);
  piVar2[5] = iVar3;
  piVar2[1] = 0;
  piVar2[2] = (uint)*(ushort *)(param_1 + 0x1e);
  iVar3 = FrontierSystem_GetFrontierMap(*param_1);
  *piVar2 = iVar3;
  Frontier_SetData(*(undefined4 *)*param_1,piVar2);
  FrontierScriptContext_Pause(param_1,0x222dcf1);
  func_0x02003d5c(*(undefined4 *)(*piVar2 + 4),0,2,0,0,1);
  return 1;
}

