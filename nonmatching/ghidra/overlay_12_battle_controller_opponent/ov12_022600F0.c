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
undefined4 func_0x020708d8() __asm__("sub_020708D8");
undefined4 func_0x0221c394() __asm__("sub_0221C394");
undefined4 ov12_0226430C();
undefined4 Pokepic_GetAttr();
undefined4 func_0x02008780() __asm__("sub_02008780");
undefined4 Pokepic_SetVisible();
undefined4 Pokepic_SetAttr();
undefined4 func_0x0223494c() __asm__("sub_0223494C");
undefined4 func_0x0221c3c0() __asm__("sub_0221C3C0");
undefined4 sub_0200602C();
undefined4 ov12_02261B80();
undefined4 ov12_022643C8();
undefined4 BattleSystem_GetChatotVoice();
undefined4 ov12_02261CA8();
undefined4 IsCryFinished();
undefined4 ov12_0223A8DC();
undefined4 sub_0207204C();
undefined4 func_0x0221c3b0() __asm__("sub_0221C3B0");
undefined4 SysTask_Destroy();
undefined4 Heap_Free();

void ov12_022600F0(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_114 [88];
  undefined1 auStack_bc [80];
  undefined1 auStack_6c [88];
  undefined4 uStack_14;
  
  uStack_14 = param_4;
  uVar1 = ov12_0223A8DC(*param_2);
  switch(*(undefined1 *)((int)param_2 + 0x66)) {
  case 0:
    if (*(short *)(param_2 + 0x1c) == 0) {
      *(undefined1 *)((int)param_2 + 0x66) = 4;
      return;
    }
    ov12_022643C8(*param_2,0,auStack_6c,1,0xf,*(undefined1 *)((int)param_2 + 0x65),
                  *(undefined1 *)((int)param_2 + 0x65),0);
    ov12_02261B80(*param_2,param_2[1],uVar1,auStack_6c);
    *(char *)((int)param_2 + 0x66) = *(char *)((int)param_2 + 0x66) + '\x01';
    return;
  case 1:
  case 3:
    func_0x0221c394();
    iVar3 = func_0x0221c3b0(uVar1);
    if (iVar3 == 0) {
      func_0x0221c3c0(uVar1);
      *(char *)((int)param_2 + 0x66) = *(char *)((int)param_2 + 0x66) + '\x01';
      return;
    }
    break;
  case 2:
    ov12_02261CA8(*param_2,param_2 + 3,auStack_bc,*(undefined1 *)((int)param_2 + 0x65));
    func_0x0223494c(auStack_bc,5);
    ov12_022643C8(*param_2,0,auStack_114,1,0x10,*(undefined1 *)((int)param_2 + 0x65),
                  *(undefined1 *)((int)param_2 + 0x65),0);
    ov12_02261B80(*param_2,param_2[1],uVar1,auStack_114);
    *(undefined4 *)(param_2[1] + 0x1a0) = 0;
    *(char *)((int)param_2 + 0x66) = *(char *)((int)param_2 + 0x66) + '\x01';
    return;
  case 4:
    if (*(char *)((int)param_2 + 0x67) == '\x02') {
      uVar1 = 0x75;
    }
    else {
      uVar1 = 0xffffff8b;
    }
    uVar2 = BattleSystem_GetChatotVoice(*param_2,*(undefined1 *)((int)param_2 + 0x65));
    sub_0207204C(uVar2,5,*(undefined2 *)(param_2 + 0x1a),*(undefined1 *)((int)param_2 + 0x6b),uVar1,
                 0x7f,*(undefined2 *)((int)param_2 + 0x72),5,0);
    *(char *)((int)param_2 + 0x66) = *(char *)((int)param_2 + 0x66) + '\x01';
  case 5:
    iVar3 = IsCryFinished();
    if (iVar3 == 0) {
      *(char *)((int)param_2 + 0x66) = *(char *)((int)param_2 + 0x66) + '\x01';
      return;
    }
    break;
  case 6:
    if (*(char *)((int)param_2 + 0x67) == '\x02') {
      sub_0200602C(0x703,0x75);
    }
    else {
      sub_0200602C(0x703,0xffffff8b);
    }
    iVar3 = Pokepic_GetAttr(param_2[2],0x29);
    if (iVar3 < 1) {
      *(undefined1 *)((int)param_2 + 0x66) = 8;
      return;
    }
    *(undefined1 *)((int)param_2 + 0x66) = 7;
    return;
  case 7:
    iVar3 = Pokepic_GetAttr(param_2[2],0x29);
    iVar3 = iVar3 + -8;
    if (iVar3 < 0) {
      iVar3 = 0;
    }
    Pokepic_SetAttr(param_2[2],0x29,iVar3);
    if (iVar3 == 0) {
      *(char *)((int)param_2 + 0x66) = *(char *)((int)param_2 + 0x66) + '\x01';
      goto code_r0x022602ce;
    }
    break;
  case 8:
code_r0x022602ce:
    iVar3 = func_0x020708d8(*(undefined2 *)(param_2 + 0x1a),*(undefined1 *)((int)param_2 + 0x6a),
                            *(undefined1 *)((int)param_2 + 0x67),
                            *(undefined1 *)((int)param_2 + 0x6b),param_2[0x1b]);
    Pokepic_SetVisible(param_2[2],0,0,0x50,0x50 - iVar3);
    *(char *)((int)param_2 + 0x66) = *(char *)((int)param_2 + 0x66) + '\x01';
    return;
  case 9:
    iVar3 = Pokepic_GetAttr(param_2[2],1);
    Pokepic_SetAttr(param_2[2],1,iVar3 + 8);
    iVar3 = Pokepic_GetAttr(param_2[2],0x12);
    iVar3 = iVar3 + -8;
    if (iVar3 < 0) {
      iVar3 = 0;
    }
    Pokepic_SetAttr(param_2[2],0x12,iVar3);
    if (iVar3 == 0) {
      func_0x02008780(param_2[2]);
      *(char *)((int)param_2 + 0x66) = *(char *)((int)param_2 + 0x66) + '\x01';
      return;
    }
    break;
  case 10:
    ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 0x65),*(undefined1 *)(param_2 + 0x19));
    Heap_Free(param_2);
    SysTask_Destroy(param_1);
  }
  return;
}

