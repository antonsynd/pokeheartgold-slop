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
undefined4 sub_02037454(void);
undefined4 ov80_0223947C();
void * Frontier_GetLaunchArgs(void *);
void * sub_0209680C(void *);
void * sub_02034818(unsigned int);
undefined4 sub_02037474(void);
undefined4 FrontierScriptContext_ReadWord(void *);
undefined4 FrontierScript_ReadVar(void *);
undefined4 ov80_0222A7EC();
void * Save_PlayerData_GetProfile(void *);

undefined4 FrtCmd_034(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined1 *puVar5;
  int iVar6;
  short sStack_1c;
  undefined1 uStack_1a;
  undefined4 uStack_18;

  puVar1 = (undefined4 *)*param_1;
  uStack_18 = param_4;
  uVar2 = sub_0209680C(*puVar1);
  iVar3 = FrontierScriptContext_ReadWord(param_1);
  iVar4 = param_1[7];
  param_1[7] = iVar4 + iVar3;
  while (sStack_1c = FrontierScript_ReadVar(param_1), sStack_1c != -0x2ed) {
    puVar5 = (undefined1 *)param_1[7];
    param_1[7] = puVar5 + 1;
    uStack_1a = *puVar5;
    if (sStack_1c == -0x1112) {
      iVar3 = Frontier_GetLaunchArgs(*puVar1);
      Save_PlayerData_GetProfile(*(undefined4 *)(iVar3 + 8));
      sStack_1c = ov80_0222A7EC();
      ov80_0223947C(uVar2,&sStack_1c);
    }
    else if (sStack_1c == -0x1111) {
      iVar3 = sub_02037474();
      if (iVar3 == 1) {
        iVar3 = sub_02037454();
        iVar6 = 0;
        if (0 < iVar3) {
          do {
            sub_02034818(iVar6);
            sStack_1c = ov80_0222A7EC();
            ov80_0223947C(uVar2,&sStack_1c);
            iVar6 = iVar6 + 1;
          } while (iVar6 < iVar3);
        }
      }
    }
    else {
      ov80_0223947C(uVar2,&sStack_1c);
    }
  }
  param_1[7] = iVar4;
  return 0;
}

