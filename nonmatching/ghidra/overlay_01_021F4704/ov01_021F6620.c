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
undefined4 NARC_ReadFile();
undefined4 Heap_Free();
undefined4 SysTask_Destroy();
undefined4 func_0x020be120() __asm__("sub_020BE120");
undefined4 sub_02054E20();
undefined4 ov01_02204678();
undefined4 ov01_02204698();
undefined4 GF_AssertFail();
undefined4 GF3dRender_ResTexIsLoaded();
undefined4 func_0x0201f64c() __asm__("sub_0201F64C");
undefined4 func_0x020c3b40() __asm__("sub_020C3B40");

void ov01_021F6620(undefined4 param_1,undefined4 *param_2)

{
  undefined1 uVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  
  if (param_2[8] == 1) {
    *(undefined1 *)(param_2 + 6) = 5;
  }
  switch(*(undefined1 *)(param_2 + 6)) {
  case 0:
    param_2[0xb] = 0;
    iVar2 = 0xe000;
    if ((int)param_2[2] < 0xe001) {
      uVar1 = 2;
      iVar2 = param_2[2];
    }
    else {
      uVar1 = 1;
    }
    *(undefined1 *)(param_2 + 6) = uVar1;
    NARC_ReadFile(*param_2,iVar2,*(int *)param_2[4] + param_2[0xb]);
    param_2[0xb] = param_2[0xb] + iVar2;
    return;
  case 1:
    iVar4 = param_2[2] - param_2[0xb];
    iVar2 = iVar4;
    if (0xe000 < iVar4) {
      iVar2 = 0xe000;
    }
    NARC_ReadFile(*param_2,iVar2,*(int *)param_2[4] + param_2[0xb]);
    if (0xe000 < iVar4) {
      param_2[0xb] = param_2[0xb] + iVar2;
      return;
    }
    *(undefined1 *)(param_2 + 6) = 2;
    return;
  case 2:
    if ((param_2[5] != 0) && (iVar2 = GF3dRender_ResTexIsLoaded(), iVar2 == 1)) {
      func_0x0201f64c(*(undefined4 *)param_2[4],param_2[5]);
    }
    *(undefined1 *)(param_2 + 6) = 3;
    return;
  case 3:
    break;
  default:
    return;
  case 5:
    *(undefined4 *)param_2[9] = 0;
    Heap_Free(param_2);
    SysTask_Destroy(param_1);
    return;
  }
  iVar2 = func_0x020c3b40(*(undefined4 *)param_2[4]);
  if (*(char *)(iVar2 + 9) != '\x01') {
    GF_AssertFail();
  }
  if (iVar2 != 0) {
    if ((iVar2 + 8 == 0) || (*(char *)(iVar2 + 9) == '\0')) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)(iVar2 + 8 + (uint)*(ushort *)(iVar2 + 0xe) + 4);
    }
    if (piVar3 != (int *)0x0) {
      iVar2 = iVar2 + *piVar3;
      goto code_r0x021f670e;
    }
  }
  iVar2 = 0;
code_r0x021f670e:
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  func_0x020be120(param_2[3],iVar2);
  if (*(int *)(param_2[3] + 8) != 0) {
    GF_AssertFail();
  }
  *(undefined4 *)(param_2[3] + 8) = 0;
  iVar2 = ov01_02204698(param_2[10]);
  if ((iVar2 != 0) && (iVar2 = sub_02054E20(param_2[1]), iVar2 == 0)) {
    ov01_02204678(param_2[10],param_2[3]);
  }
  *(undefined4 *)param_2[7] = 1;
  *(undefined1 *)(param_2 + 6) = 5;
  return;
}

