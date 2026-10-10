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
undefined4 ov14_021E87F4();
undefined4 ov14_021E83C4();
undefined4 ov14_021E64D0();
undefined4 ov14_021F43F4();
undefined4 ov14_021F0B70();
undefined4 ov14_021F6AC0();
undefined4 ov14_021F3F6C();
undefined4 ov14_021E6094();
undefined4 ov14_021F5EE4(void *, void *, unsigned int);
undefined4 ov14_021F2ED0();
undefined4 ov14_021E60C0();
undefined4 ov14_021E6070();
undefined4 ov14_021F5FBC(void *, int);
undefined4 ov14_021E82FC();
undefined4 ov14_021F3488();
extern undefined ov14_021F7D3C;
undefined4 ov14_021F3844();
undefined4 DpadMenuBox_GetPosition(void *, void *, void *);
undefined4 ov14_021F01D8();
undefined4 ov14_021E7588();
void * GridInputHandler_GetDpadBox(void *, int);
undefined4 ov14_021F396C();
undefined4 ov14_021F2A18(void *, int, int);
undefined4 ov14_021F3B3C();
undefined4 ManagedSprite_SetPositionXY(void *, short, short);
undefined4 ov14_021E892C();
undefined4 GridInputHandler_SetNextInput(void *, int);
undefined4 Bag_TakeItem(void *, unsigned short, unsigned short, int);
undefined4 ov14_021F39D0();
undefined4 ov14_021E8874();

void ov14_021EBB3C(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  int iVar2;
  undefined *puVar3;
  uint uVar4;
  undefined4 uVar5;
  byte bStack_18;
  byte abStack_17 [3];
  undefined4 uStack_14;
  
  uStack_14 = param_4;
  if (0x1d < *(byte *)((int)param_1 + 0x21)) {
    ov14_021F0B70();
    ov14_021F43F4(param_1[0xd],0);
    ov14_021F3488(param_1,1,1);
  }
  if (*(int *)(*param_1 + 8) != 3) {
    ov14_021F3F6C(param_1);
  }
  if (*(int *)(*param_1 + 8) - 2U < 2) {
    ov14_021E87F4(param_1);
    ov14_021E82FC(*(undefined4 *)(param_1[0xd] + 0x2f0));
  }
  if ((short)param_1[7] == 0) {
    if (*(int *)(*param_1 + 8) == 3) {
      ov14_021F5FBC((undefined *)param_1,0);
      if (*(byte *)((int)param_1 + 0x21) < 0x1e) {
        ov14_021F3488(param_1,0x81,1);
        uVar5 = 0x75;
      }
      else {
        ov14_021F3488(param_1,0x82,1);
        ov14_021F6AC0(param_1,7,8);
        uVar5 = 0x8b;
      }
    }
    else {
      ov14_021F5EE4((undefined *)param_1,&ov14_021F7D3C,5);
      if (*(byte *)((int)param_1 + 0x21) < 0x1e) {
        uVar5 = 0xc;
      }
      else {
        ov14_021F6AC0(param_1,5,10);
        uVar5 = 0x24;
      }
    }
    ov14_021E83C4(*(undefined4 *)(param_1[0xd] + 0x2f0));
  }
  else {
    bVar1 = false;
    if (((short)param_1[7] == 0x70) &&
       (iVar2 = ov14_021E6070(param_1,*(undefined1 *)((int)param_1 + 0x21),5,0), iVar2 != 0x1e7)) {
      bVar1 = true;
    }
    else {
      uVar5 = ov14_021E60C0(param_1,*(undefined1 *)((int)param_1 + 0x1f),
                            *(undefined1 *)((int)param_1 + 0x21));
      ov14_021E6094(param_1,*(undefined1 *)((int)param_1 + 0x21),6,param_1 + 7);
      iVar2 = ov14_021E64D0(uVar5);
      if (iVar2 == 1) {
        ov14_021F2ED0(param_1,*(undefined1 *)((int)param_1 + 0x1f),
                      (uint)*(byte *)((int)param_1 + 0x21),
                      *(undefined1 *)(param_1[0xd] + (uint)*(byte *)((int)param_1 + 0x21) + 0x4094))
        ;
      }
      Bag_TakeItem((undefined *)param_1[3],*(ushort *)(param_1 + 7),1,10);
    }
    uVar4 = (uint)*(byte *)((int)param_1 + 0x21);
    if (uVar4 < 0x1e) {
      if (*(int *)(*param_1 + 8) == 3) {
        GridInputHandler_SetNextInput(*(undefined **)(param_1[0xd] + 0x2c),uVar4);
        puVar3 = GridInputHandler_GetDpadBox
                           (*(undefined **)(param_1[0xd] + 0x2c),
                            (uint)*(byte *)((int)param_1 + 0x21));
        DpadMenuBox_GetPosition(puVar3,abStack_17,&bStack_18);
        ManagedSprite_SetPositionXY
                  (*(undefined **)(param_1[0xd] + 800),(ushort)abStack_17[0],(ushort)bStack_18);
      }
    }
    else if (*(int *)(*param_1 + 8) == 3) {
      ov14_021F6AC0(param_1,7,uVar4 - 0x1e);
    }
    else {
      ov14_021F6AC0(param_1,5,10);
    }
    ov14_021F2A18((undefined *)param_1[0xd],9,0);
    if (*(int *)(*param_1 + 8) == 3) {
      if (bVar1) {
        *(undefined2 *)(param_1 + 7) = 0;
        if (*(byte *)((int)param_1 + 0x21) < 0x1e) {
          ov14_021F3488(param_1,0x81,1);
        }
        else {
          ov14_021F3488(param_1,0x82,1);
        }
      }
      else {
        *(short *)(param_1[0xd] + 0x88c8) = (short)param_1[7];
        ov14_021F3844(param_1[0xd],*(undefined2 *)(param_1[0xd] + 0x88c8));
        ov14_021F2A18((undefined *)param_1[0xd],0xb,1);
        if (*(byte *)((int)param_1 + 0x21) < 0x1e) {
          ov14_021F3488(param_1,0x81,1);
          ov14_021F396C(param_1[0xd],*(undefined1 *)((int)param_1 + 0x21),0);
        }
        else {
          ov14_021F3488(param_1,0x82,1);
          ov14_021F396C(param_1[0xd],*(undefined1 *)((int)param_1 + 0x21),1);
        }
        ov14_021F39D0(param_1[0xd]);
        ov14_021F3B3C(param_1[0xd]);
      }
      uVar5 = 0x7d;
    }
    else {
      if (bVar1) {
        *(undefined2 *)(param_1 + 7) = 0;
      }
      uVar5 = 0x12;
    }
  }
  ov14_021E7588(param_1,*(undefined1 *)((int)param_1 + 0x21));
  if (*(int *)(*param_1 + 8) == 3) {
    if ((short)param_1[7] != 0) {
      ov14_021E892C(*(undefined4 *)(param_1[0xd] + 0x2f0));
    }
  }
  else {
    ov14_021E8874(param_1[0xd]);
  }
  ov14_021F01D8(param_1,uVar5);
  return;
}

