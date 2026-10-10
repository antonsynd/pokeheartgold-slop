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
undefined4 func_0x02018198() __asm__("sub_02018198");
undefined4 func_0x020180f8() __asm__("sub_020180F8");
undefined4 ov92_0225D9B4();
undefined4 ov92_022630E8();
undefined4 SysTask_Destroy();
undefined4 func_0x020181d4() __asm__("sub_020181D4");
undefined4 IsPaletteFadeFinished();
undefined4 func_0x020182a0() __asm__("sub_020182A0");
undefined4 ov92_02260428();
undefined4 ov92_0225DA2C();
undefined4 func_0x020180bc() __asm__("sub_020180BC");
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 ov92_0225D9A8();
extern undefined ov92_02263CD0;
extern undefined ov92_02263CD4;

void ov92_0225F530(undefined4 param_1,int *param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;

  iVar5 = param_2[0xd];
  iVar4 = param_2[0xe];
  iVar1 = IsPaletteFadeFinished();
  if ((iVar1 != 0) && (puVar2 = (undefined4 *)param_2[0xf], *(char *)(puVar2 + 0xd) != '\x01')) {
    iVar1 = *(int *)param_2[0xb];
    iVar3 = iVar1 + -1;
    if ((iVar3 < 0) || (4 < iVar3)) {
      iVar3 = 0;
    }
    switch(*param_2) {
    case 0:
      ov92_0225D9A8(iVar5,*puVar2,*(undefined4 *)(&ov92_02263CD0 + iVar3 * 8));
      ov92_0225D9B4(iVar5,param_2[0x10]);
      *param_2 = *param_2 + 1;
      return;
    case 1:
      func_0x020180bc(iVar5 + 0x88,iVar5 + 0x78,*puVar2,0x27,0x71,puVar2 + 9);
      func_0x020180bc(iVar5 + 0x9c,iVar5 + 0x78,*(undefined4 *)param_2[0xf],0x28,0x71,
                      (undefined4 *)param_2[0xf] + 9);
      func_0x020181d4(iVar5,iVar5 + 0x88);
      func_0x020181d4(iVar5,iVar5 + 0x9c);
      func_0x02018198(iVar5 + 0x88,0);
      func_0x02018198(iVar5 + 0x9c,0);
      func_0x020182a0(iVar5,0);
      *(undefined4 *)(iVar5 + 0x1ec) = 0;
      ov92_022630E8(iVar5 + 400);
      ov92_022630E8(iVar5 + 0x1a0);
      ov92_02260428(iVar5,0,0,5,5,0x3f4ccccd,0);
      ov92_02260428(iVar5,0,0,0xfffffffb,0xfffffffb,0x3f4ccccd,0);
      *param_2 = *param_2 + 1;
      return;
    case 2:
      ov92_0225D9A8(iVar4,*puVar2,*(undefined4 *)(&ov92_02263CD4 + iVar3 * 8));
      ov92_0225D9B4(iVar4,param_2[0x10]);
      *param_2 = *param_2 + 1;
      return;
    case 3:
      func_0x020180bc(iVar4 + 0x88,iVar4 + 0x78,*puVar2,0x29,0x71,puVar2 + 9);
      func_0x020180bc(iVar4 + 0x9c,iVar4 + 0x78,*(undefined4 *)param_2[0xf],0x2a,0x71,
                      (undefined4 *)param_2[0xf] + 9);
      func_0x020181d4(iVar4,iVar4 + 0x88);
      func_0x020181d4(iVar4,iVar4 + 0x9c);
      func_0x02018198(iVar4 + 0x88,0);
      func_0x02018198(iVar4 + 0x9c,0);
      func_0x020182a0(iVar4,1);
      *(undefined4 *)(iVar4 + 0x1ec) = 1;
      ov92_022630E8(iVar4 + 400);
      ov92_022630E8(iVar4 + 0x1a0);
      ov92_02260428(iVar4,0,0,5,5,0x3f4ccccd,0);
      ov92_02260428(iVar4,0,0,0xfffffffb,0xfffffffb,0x3f4ccccd,0);
      if (param_2[0x10] != 0) {
        func_0x020182a8(iVar5,0,0xffff8000,0);
        func_0x020182a8(iVar4,0,0xffff8000,0);
        *(undefined4 *)(iVar5 + 0x1e4) = 0xffff8000;
        *(undefined4 *)(iVar4 + 0x1e4) = 0xffff8000;
      }
      *param_2 = *param_2 + 1;
      return;
    case 4:
      if (*(int *)(iVar4 + 0x1ec) == 0) {
        func_0x020182a0(iVar5,1);
        func_0x020182a0(iVar4,0);
        *(undefined4 *)(iVar5 + 0x1ec) = 1;
        *param_2 = *param_2 + 1;
        return;
      }
      break;
    case 5:
      if (iVar1 == 0) {
        *param_2 = 0xff;
      }
      else if (param_2[10] != iVar1) {
        ov92_0225DA2C(iVar5);
        ov92_0225DA2C(iVar4);
        func_0x020180f8(iVar5 + 0x88,param_2[0xf] + 0x24);
        func_0x020180f8(iVar5 + 0x9c,param_2[0xf] + 0x24);
        func_0x020180f8(iVar4 + 0x88,param_2[0xf] + 0x24);
        func_0x020180f8(iVar4 + 0x9c,param_2[0xf] + 0x24);
        *param_2 = 0;
      }
      param_2[10] = *(int *)param_2[0xb];
      return;
    default:
      ov92_0225DA2C(iVar5);
      ov92_0225DA2C(iVar4);
      func_0x020180f8(iVar5 + 0x88,param_2[0xf] + 0x24);
      func_0x020180f8(iVar5 + 0x9c,param_2[0xf] + 0x24);
      func_0x020180f8(iVar4 + 0x88,param_2[0xf] + 0x24);
      func_0x020180f8(iVar4 + 0x9c,param_2[0xf] + 0x24);
      param_2[0xc] = 0;
      SysTask_Destroy(param_1);
    }
    return;
  }
  ov92_0225DA2C(iVar5);
  ov92_0225DA2C(iVar4);
  func_0x020180f8(iVar5 + 0x88,param_2[0xf] + 0x24);
  func_0x020180f8(iVar5 + 0x9c,param_2[0xf] + 0x24);
  func_0x020180f8(iVar4 + 0x88,param_2[0xf] + 0x24);
  func_0x020180f8(iVar4 + 0x9c,param_2[0xf] + 0x24);
  param_2[0xc] = 0;
  SysTask_Destroy(param_1);
  return;
}

