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
typedef void code(void);
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
undefined4 BattleSystem_GetFieldSide(undefined4, undefined4);
undefined4 ov12_0226430C(undefined4, undefined4, undefined4);
undefined4 ov12_0223BE0C(undefined4, undefined4, undefined4);
undefined4 ov12_02261EB8(undefined4);
undefined4 ov12_02261ED4(undefined4);
undefined4 Heap_Free(undefined4);
undefined4 SysTask_Destroy(undefined4);
undefined4 ov12_0226311C(undefined4, undefined4, undefined4);

void ov12_0225E760(undefined4 param_1,undefined4 *param_2,undefined4 param_3,uint param_4)

{
  ushort uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uStack_18;
  
  uStack_18 = param_4;
  iVar2 = ov12_0223BE0C(*param_2,*(undefined1 *)((int)param_2 + 0xd),&uStack_18);
  if (iVar2 == 1) {
    ov12_02261ED4(*param_2);
  }
  uVar3 = uStack_18 & 0xff;
  if ((uVar3 == 0) || (4 < uVar3)) {
    ov12_02261EB8(*param_2);
  }
  else {
    uVar1 = *(ushort *)(param_2 + 0xc);
    if (uVar1 < 0x41) {
      if ((uVar1 < 0x40) && (uVar1 < 0x11)) {
        switch(uVar1) {
        case 0:
          if ((uint)*(byte *)((int)param_2 + 0xd) == uVar3 - 1) {
            ov12_02261EB8(*param_2);
          }
        }
      }
    }
    else if (((0x100 < uVar1) && (uVar1 < 0x201)) && (uVar1 == 0x200)) {
      iVar2 = BattleSystem_GetFieldSide(*param_2,*(undefined1 *)((int)param_2 + 0xd));
      iVar4 = BattleSystem_GetFieldSide(*param_2,uVar3 - 1);
      if (iVar2 != iVar4) {
        ov12_02261EB8(*param_2);
      }
    }
  }
  ov12_0226311C(*param_2,*(undefined1 *)((int)param_2 + 0xd),uStack_18 & 0xff);
  ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 0xd),*(undefined1 *)(param_2 + 3));
  Heap_Free(param_2);
  SysTask_Destroy(param_1);
  return;
}

