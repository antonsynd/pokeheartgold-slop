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
undefined4 func_0x0221c394() __asm__("sub_0221C394");
undefined4 sub_02017068();
undefined4 ov12_0226430C();
undefined4 ov12_0223B750();
undefined4 Pokepic_SetAttr();
undefined4 Heap_Free();
undefined4 ov12_022612A4();
undefined4 ov12_02261F38();
undefined4 SysTask_Destroy();
undefined4 func_0x0221c3c0() __asm__("sub_0221C3C0");
undefined4 BattleSystem_GetPokepicManager();
undefined4 func_0x02234a20() __asm__("sub_02234A20");
undefined4 ov12_02261B80();
undefined4 ov12_022643C8();
undefined4 ov12_02261CA8();
undefined4 ov12_0223A8DC();
undefined4 Pokepic_IsAnimFinished();
undefined4 NARC_ReadPokepicAnimScript();
undefined4 func_0x0221c3b0() __asm__("sub_0221C3B0");

void ov12_0225C6C8(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_1ec [40];
  undefined1 auStack_1c4 [88];
  undefined1 auStack_16c [80];
  undefined1 auStack_11c [88];
  undefined1 auStack_c4 [88];
  undefined1 auStack_6c [88];
  undefined4 uStack_14;

  uStack_14 = param_4;
  uVar1 = ov12_0223A8DC(*param_2);
  switch(*(undefined1 *)((int)param_2 + 0x83)) {
  case 0:
    uVar1 = BattleSystem_GetPokepicManager(*param_2);
    NARC_ReadPokepicAnimScript
              (*(undefined4 *)(param_2[1] + 0x1a4),auStack_1ec,*(undefined2 *)((int)param_2 + 0x86),
               *(undefined1 *)((int)param_2 + 0x82));
    iVar3 = (uint)*(byte *)((int)param_2 + 0x82) * 6;
    uVar1 = ov12_022612A4(*param_2,uVar1,param_2 + 5,(int)*(short *)(iVar3 + 0x2237818),
                          (int)*(short *)(iVar3 + 0x223781a),(int)*(short *)(iVar3 + 0x22377f8),
                          *(undefined1 *)((int)param_2 + 0x85),(int)*(char *)(param_2 + 0x24),
                          (int)*(char *)((int)param_2 + 0x91),*(undefined1 *)((int)param_2 + 0x93),
                          *(undefined1 *)((int)param_2 + 0x81),auStack_1ec,0);
    *(undefined4 *)(param_2[1] + 0x20) = uVar1;
    Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0xc,0x100);
    Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0xd,0x100);
    Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0x2c,0);
    Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),6,0);
    *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    return;
  case 1:
    ov12_022643C8(*param_2,0,auStack_6c,1,0x29,*(undefined1 *)((int)param_2 + 0x81),
                  *(undefined1 *)((int)param_2 + 0x81),0);
    ov12_02261B80(*param_2,param_2[1],uVar1,auStack_6c);
    *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    return;
  case 2:
  case 5:
  case 7:
  case 9:
    func_0x0221c394();
    iVar3 = func_0x0221c3b0(uVar1);
    if (iVar3 == 0) {
      func_0x0221c3c0(uVar1);
      *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
      return;
    }
    break;
  case 3:
    if (*(char *)(param_2 + 0x21) == '\x02') {
      Pokepic_SetAttr(*(undefined4 *)(param_2[1] + 0x20),0x2d,0);
    }
    ov12_02261F38(*param_2,*(undefined1 *)((int)param_2 + 0x81),*(undefined1 *)((int)param_2 + 0x82)
                  ,*(undefined4 *)(param_2[1] + 0x20),*(undefined4 *)(param_2[1] + 0x1a4),
                  *(undefined2 *)((int)param_2 + 0x86),*(undefined1 *)((int)param_2 + 0x97),
                  *(undefined1 *)(param_2 + 0x21),param_2[0x22]);
    *(undefined1 *)((int)param_2 + 0x83) = 4;
    return;
  case 4:
    uVar2 = ov12_0223B750(*param_2);
    iVar3 = sub_02017068(uVar2,*(undefined1 *)((int)param_2 + 0x81));
    if ((iVar3 == 1) &&
       (iVar3 = Pokepic_IsAnimFinished(*(undefined4 *)(param_2[1] + 0x20)), iVar3 == 0)) {
      if (*(char *)((int)param_2 + 0x92) == '\0') {
        *(undefined1 *)((int)param_2 + 0x83) = 6;
        return;
      }
      ov12_022643C8(*param_2,0,auStack_c4,1,0xb,*(undefined1 *)((int)param_2 + 0x81),
                    *(undefined1 *)((int)param_2 + 0x81),0);
      ov12_02261B80(*param_2,param_2[1],uVar1,auStack_c4);
      *(undefined1 *)((int)param_2 + 0x83) = 5;
      return;
    }
    break;
  case 6:
    if (param_2[0x26] == 0) {
      *(undefined1 *)((int)param_2 + 0x83) = 0xff;
      return;
    }
    ov12_022643C8(*param_2,0,auStack_11c,1,0xf,*(undefined1 *)((int)param_2 + 0x81),
                  *(undefined1 *)((int)param_2 + 0x81),0);
    ov12_02261B80(*param_2,param_2[1],uVar1,auStack_11c);
    *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    return;
  case 8:
    ov12_02261CA8(*param_2,param_2 + 10,auStack_16c,*(undefined1 *)((int)param_2 + 0x81));
    func_0x02234a20(auStack_16c,5);
    ov12_022643C8(*param_2,0,auStack_1c4,1,0x10,*(undefined1 *)((int)param_2 + 0x81),
                  *(undefined1 *)((int)param_2 + 0x81),0);
    ov12_02261B80(*param_2,param_2[1],uVar1,auStack_1c4);
    *(undefined4 *)(param_2[1] + 0x1a0) = 1;
    *(char *)((int)param_2 + 0x83) = *(char *)((int)param_2 + 0x83) + '\x01';
    return;
  default:
    ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 0x81),*(undefined1 *)(param_2 + 0x20));
    Heap_Free(param_2);
    SysTask_Destroy(param_1);
  }
  return;
}

