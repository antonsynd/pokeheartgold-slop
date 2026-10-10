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
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 func_0x0221c394() __asm__("sub_0221C394");
undefined4 sub_02017068();
undefined4 func_0x0200ded0() __asm__("sub_0200DED0");
undefined4 Pokepic_AddAttr();
undefined4 Pokepic_GetAttr();
undefined4 ov12_0223B750();
undefined4 sub_02005B58();
undefined4 Pokepic_SetAttr();
undefined4 ov12_02261F38();
undefined4 func_0x0221c3c0() __asm__("sub_0221C3C0");
undefined4 ov12_02261B80();
undefined4 ov12_022643C8();
undefined4 ov12_0223A8DC();
undefined4 Pokepic_StartPaletteFade();
undefined4 Pokepic_IsAnimFinished();
undefined4 ManagedSprite_SetPositionXY();
undefined4 func_0x0221c3b0() __asm__("sub_0221C3B0");
undefined4 SysTask_Destroy();
undefined4 Heap_Free();
undefined4 ov12_0226430C();

void ov12_0225B7B8(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_6c [2];
  short sStack_6a;
  undefined1 auStack_68 [88];

  uVar1 = ov12_0223A8DC(*param_2);
  switch(*(undefined1 *)((int)param_2 + 0x12)) {
  case 0:
    param_2[8] = 0x1c;
    *(char *)((int)param_2 + 0x12) = *(char *)((int)param_2 + 0x12) + '\x01';
  case 1:
    iVar3 = param_2[8];
    param_2[8] = iVar3 + -1;
    if (iVar3 + -1 == 0) {
      *(char *)((int)param_2 + 0x12) = *(char *)((int)param_2 + 0x12) + '\x01';
code_r0x0225b800:
      func_0x0200de44(*(undefined4 *)param_2[3],&sStack_6a,auStack_6c);
      if ((param_2[7] == 1) || (param_2[7] == 3)) {
        if (sStack_6a < 0xc0) {
          func_0x0200ded0(*(undefined4 *)param_2[3],8,0);
        }
        else {
          ManagedSprite_SetPositionXY(*(undefined4 *)param_2[3],0xc0,0x58);
        }
      }
      func_0x0200de44(*(undefined4 *)param_2[3],&sStack_6a,auStack_6c);
      Pokepic_AddAttr(param_2[2],1,4);
      iVar3 = Pokepic_GetAttr(param_2[2],1);
      if (*(short *)(param_2 + 5) <= iVar3) {
        Pokepic_SetAttr(param_2[2],0x2c,0);
        Pokepic_SetAttr(param_2[2],0x2d,0);
        Pokepic_SetAttr(param_2[2],1,(int)*(short *)(param_2 + 5));
        ov12_02261F38(*param_2,*(undefined1 *)((int)param_2 + 0x11),param_2[7],param_2[2],
                      *(undefined4 *)(param_2[1] + 0x1a4),*(undefined2 *)((int)param_2 + 0x16),
                      *(undefined1 *)(param_2 + 0xb),*(undefined1 *)((int)param_2 + 0x13),param_2[6]
                     );
        ManagedSprite_SetPositionXY(*(undefined4 *)param_2[3],0xc0,0x58);
        Pokepic_StartPaletteFade(param_2[2],8,0,0,0);
        *(char *)((int)param_2 + 0x12) = *(char *)((int)param_2 + 0x12) + '\x01';
        return;
      }
    }
    break;
  case 2:
    goto code_r0x0225b800;
  case 3:
    uVar2 = ov12_0223B750(*param_2);
    iVar3 = sub_02017068(uVar2,*(undefined1 *)((int)param_2 + 0x11));
    if ((iVar3 == 1) && (iVar3 = Pokepic_IsAnimFinished(param_2[2]), iVar3 == 0)) {
      if (param_2[10] == 0) {
        *(undefined1 *)((int)param_2 + 0x12) = 0xff;
        return;
      }
      ov12_022643C8(*param_2,0,auStack_68,1,0xb,*(undefined1 *)((int)param_2 + 0x11),
                    *(undefined1 *)((int)param_2 + 0x11),0);
      ov12_02261B80(*param_2,param_2[1],uVar1,auStack_68);
      *(undefined1 *)((int)param_2 + 0x12) = 4;
      return;
    }
    break;
  case 4:
    func_0x0221c394();
    iVar3 = func_0x0221c3b0(uVar1);
    if (iVar3 == 0) {
      func_0x0221c3c0(uVar1);
      *(undefined1 *)((int)param_2 + 0x12) = 0xff;
      return;
    }
    break;
  default:
    sub_02005B58(0);
    ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 0x11),*(undefined1 *)(param_2 + 4));
    Heap_Free(param_2);
    SysTask_Destroy(param_1);
  }
  return;
}

