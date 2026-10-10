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
undefined4 FieldSystem_BugContest_Get();
undefined4 func_0x02077c18() __asm__("sub_02077C18");
undefined4 AddCharResObjFromNarc();
undefined4 SpriteTransfer_CreateCharTransferTask_AllocAtEnd();
undefined4 sub_02074490();
undefined4 GF_AssertFail();
undefined4 func_0x0200a740() __asm__("sub_0200A740");
undefined4 Bag_GetRegisteredItem2();
undefined4 Pokemon_GetIconNaix();
undefined4 ov27_0225AE8C();
undefined4 func_0x0200b00c() __asm__("sub_0200B00C");
undefined4 AddPlttResObjFromNarc();
undefined4 Bag_GetRegisteredItem1();
extern undefined ov27_0225CF94;
extern undefined ov27_0225CFC8;

void ov27_0225AEA8(undefined4 param_1,undefined4 *param_2,undefined4 *param_3,int param_4,
                  undefined4 param_5,int param_6,undefined4 param_7,int param_8)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 extraout_r1;
  undefined4 uVar5;
  undefined8 uVar6;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uVar4 = (uint)(byte)(&ov27_0225CFC8)[param_4 + param_8 * 8];
  uVar5 = 0xe;
  uVar6 = CONCAT44(uVar4,0x12);
  uStack_18 = 0xe;
  uStack_1c = 1;
  uStack_20 = 1;
  if (uVar4 != 0xd) {
    if ((uVar4 == 2) && (param_6 == 1)) {
      uVar6 = 0x20000001b;
    }
    else {
      uVar6 = CONCAT44(uVar4 * 4,(uint)*(ushort *)(&ov27_0225CF94 + uVar4 * 4));
      if (*(ushort *)(&ov27_0225CF94 + uVar4 * 4) == 0xffff) {
        uVar6 = FieldSystem_BugContest_Get(param_1);
        uVar3 = (undefined4)((ulonglong)uVar6 >> 0x20);
        iVar2 = (int)uVar6;
        if (iVar2 == 0) {
          GF_AssertFail();
          uVar3 = extraout_r1;
        }
        if ((int)((uint)*(byte *)(iVar2 + 0x17) << 0x1f) < 0) {
          uStack_1c = 0;
          uVar5 = 0x14;
          uStack_20 = 3;
          uStack_18 = sub_02074490();
          uVar6 = Pokemon_GetIconNaix(*(undefined4 *)(iVar2 + 0x10));
        }
        else {
          uVar6 = CONCAT44(uVar3,0x12);
        }
      }
    }
  }
  uVar3 = (undefined4)uVar6;
  if (param_4 == 7) {
    uStack_1c = 0;
    uVar5 = 0x12;
    uVar3 = Bag_GetRegisteredItem1(param_7);
    uStack_18 = func_0x02077c18(uVar3,2);
    uVar3 = Bag_GetRegisteredItem1(param_7);
    uVar3 = func_0x02077c18(uVar3,1);
  }
  else if (param_4 == 8) {
    uStack_1c = 0;
    uVar5 = 0x12;
    uVar3 = Bag_GetRegisteredItem2(param_7);
    uStack_18 = func_0x02077c18(uVar3,2);
    uVar3 = Bag_GetRegisteredItem2(param_7);
    uVar3 = func_0x02077c18(uVar3,1);
  }
  else if (param_4 == 9) {
    uStack_18 = 7;
    uVar3 = 0x46;
    uStack_20 = 4;
  }
  else if (param_4 == 10) {
    uVar1 = ov27_0225AE8C(param_8,(int)((ulonglong)uVar6 >> 0x20),uVar3);
    uStack_1c = 0;
    uVar5 = 0x12;
    uStack_18 = func_0x02077c18(uVar1,2);
    uVar3 = func_0x02077c18(uVar1,1);
  }
  uVar3 = AddCharResObjFromNarc(*param_2,uVar5,uVar3,uStack_1c,param_5,2,8);
  *param_3 = uVar3;
  uVar5 = AddPlttResObjFromNarc(param_2[1],uVar5,uStack_18,0,param_5,2,uStack_20,8);
  param_3[1] = uVar5;
  SpriteTransfer_CreateCharTransferTask_AllocAtEnd(*param_3);
  func_0x0200a740(*param_3);
  func_0x0200b00c(param_3[1]);
  func_0x0200a740(param_3[1]);
  return;
}

