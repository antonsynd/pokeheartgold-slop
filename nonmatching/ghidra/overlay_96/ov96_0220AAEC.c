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
undefined4 ov96_0220B1D8();
undefined4 ManagedSprite_SetPositionXY();
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 System_GetTouchNewCoords();
undefined4 LCRandom();
undefined4 sub_0200592C();
undefined4 GF_AssertFail();
undefined4 ov96_021E5F24();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 PlaySE();
undefined4 ov96_021E8228();
undefined4 ManagedSprite_SetAnim();

uint ov96_0220AAEC(undefined4 *param_1,undefined4 param_2,int param_3,int param_4,int param_5,
                  undefined4 *param_6)

{
  undefined1 uVar1;
  uint uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  int iVar6;
  uint uStack_30;
  short sStack_20;
  short sStack_1e;
  short asStack_1c [2];
  short asStack_18 [2];

  uStack_30 = 0;
  if (param_1 == (undefined4 *)0x0) {
    GF_AssertFail();
  }
  if ((param_1[0x60] & 0xff) >> 4 == 0) {
    return 0;
  }
  System_GetTouchNewCoords(asStack_18,asStack_1c);
  uVar5 = 7;
  ManagedSprite_SetPositionXY(param_1[3],(int)asStack_18[0],(int)asStack_1c[0]);
  if ((param_4 != 0) || (param_5 != 0)) {
    uVar5 = 0x12;
  }
  ManagedSprite_SetAnim(param_1[3],uVar5);
  ManagedSprite_SetDrawFlag(param_1[3],1);
  if (param_5 == 0) {
    if (param_4 != 0) {
      param_3 = (param_3 + 0xa0) * 0x10000 >> 0x10;
      PlaySE(0x8bb);
    }
  }
  else {
    param_3 = (param_3 + 0x96) * 0x10000 >> 0x10;
    PlaySE(0x8bb);
  }
  iVar6 = 0;
  uVar2 = (param_1[0x60] & 0xff) >> 4;
  if (uVar2 != 0) {
    do {
      puVar4 = (undefined4 *)param_1[(uVar2 - (iVar6 + 1)) + 0x55];
      if (param_3 < 1) break;
      *(short *)(puVar4 + 2) = *(short *)(puVar4 + 2) - (short)param_3;
      if (0 < *(short *)(puVar4 + 2)) break;
      if (*(short *)(puVar4 + 2) < 1) {
        param_1[0x60] = (((param_1[0x60] & 0xff) >> 4) - 1 & 0xf) << 4 | param_1[0x60] & 0xffffff0f;
        param_1[0x5f] = (((uint)param_1[0x5f] >> 0x10) + 1) * 0x10000 | param_1[0x5f] & 0xffff;
        if (200 < (uint)param_1[0x5f] >> 0x10) {
          param_1[0x5f] = param_1[0x5f] & 0xffff | 0xc80000;
        }
        ManagedSprite_SetAnim(*puVar4,0);
        func_0x0200de44(*puVar4,&sStack_1e,&sStack_20);
        ManagedSprite_SetDrawFlag(puVar4[1],0);
        param_3 = (int)-*(short *)(puVar4 + 2);
        uStack_30 = uStack_30 + 1;
        ov96_0220B1D8(param_1 + 5,4,(int)sStack_1e,(int)sStack_20);
        uVar1 = ov96_021E5F24(*param_1);
        ov96_021E8228(*param_1,uVar1,param_2,3,1);
      }
      iVar6 = iVar6 + 1;
    } while (iVar6 < (int)uVar2);
  }
  if (uStack_30 == 0) {
    PlaySE(0x8b8);
    ManagedSprite_SetPositionXY(param_1[4],(int)asStack_18[0],(int)asStack_1c[0]);
    ManagedSprite_SetAnim(param_1[4],6);
    ManagedSprite_SetDrawFlag(param_1[4],1);
    uVar2 = (param_1[0x60] & 0xff) >> 4;
    if (uVar2 != 0) {
      puVar4 = (undefined4 *)param_1[uVar2 + 0x54];
      if (*(short *)(puVar4 + 2) < 0x15) {
        ManagedSprite_SetAnim(*puVar4,3);
      }
      else if (*(short *)(puVar4 + 2) < 0x3d) {
        ManagedSprite_SetAnim(*puVar4,2);
        PlaySE(0x8b8);
        iVar3 = LCRandom();
        iVar6 = iVar3 >> 0x1f;
        sub_0200592C(0x8b8,0xffff,
                     0x40 - (((uint)(iVar3 * 0x2000000 + iVar6) >> 0x19 | iVar6 << 7) - iVar6));
      }
    }
  }
  else {
    PlaySE(0x8b9);
  }
  if (((int)uStack_30 < 1) || ((param_1[0x60] & 0xff) >> 4 != 0)) {
    uVar5 = 0;
  }
  else {
    uVar5 = 1;
  }
  *param_6 = uVar5;
  return uStack_30 & 0xffff;
}

