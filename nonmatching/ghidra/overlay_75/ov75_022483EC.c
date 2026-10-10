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
undefined4 ov75_02247890();
undefined4 ov75_02247854();
undefined4 ov75_022480B8();
undefined4 ov75_02249534();
undefined4 ov75_022494CC();
undefined4 YesNoPrompt_HandleInput();
undefined4 YesNoPrompt_Destroy();

undefined4 ov75_022483EC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;

  iVar1 = ov75_02249534(*(undefined4 *)(param_1 + 0x44));
  if (iVar1 != 1) {
    switch(*(undefined4 *)(param_1 + 0x94)) {
    case 0:
      *(undefined4 *)(param_1 + 0x94) = 3;
      break;
    case 1:
      *(int *)(param_1 + 0x94) = *(int *)(param_1 + 0x94) + 1;
      break;
    case 2:
      iVar1 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x88));
      if (iVar1 == 1) {
        YesNoPrompt_Destroy(*(undefined4 *)(param_1 + 0x88));
        ov75_022494CC(param_1,*(undefined4 *)(param_1 + 0x34),9,1,0xf0f,param_4);
        *(undefined4 *)(param_1 + 0x94) = 4;
      }
      else if (iVar1 == 2) {
        YesNoPrompt_Destroy(*(undefined4 *)(param_1 + 0x88));
        *(int *)(param_1 + 0x94) = *(int *)(param_1 + 0x94) + 1;
      }
      break;
    case 3:
      iVar1 = ov75_022480B8(param_1);
      if (iVar1 == 1) {
        ov75_022494CC(param_1,*(undefined4 *)(param_1 + 0x34),9,1,0xf0f,param_4);
        *(int *)(param_1 + 0x94) = *(int *)(param_1 + 0x94) + 1;
      }
      else if (iVar1 == 2) {
        ov75_02247854(param_1,0x22,0);
      }
      break;
    case 4:
      uVar2 = ov75_02247890(*(undefined4 *)(param_1 + 4),0x234,0);
      *(undefined4 *)(param_1 + 0x88) = uVar2;
      *(int *)(param_1 + 0x94) = *(int *)(param_1 + 0x94) + 1;
      break;
    default:
      iVar1 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x88));
      if (iVar1 == 1) {
        YesNoPrompt_Destroy(*(undefined4 *)(param_1 + 0x88));
        *(undefined4 *)(param_1 + 8) = 5;
      }
      else if (iVar1 == 2) {
        YesNoPrompt_Destroy(*(undefined4 *)(param_1 + 0x88));
        ov75_022494CC(param_1,*(undefined4 *)(param_1 + 0x34),10,1,0xf0f,param_4);
        ov75_02247854(param_1,0x22,0);
      }
    }
    return 0;
  }
  return 0;
}

