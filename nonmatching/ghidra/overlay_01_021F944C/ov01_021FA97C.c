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
undefined4 MapObject_GetID();
undefined4 MapObject_GetSpriteID();
undefined4 func_0x02023f90() __asm__("sub_02023F90");
undefined4 ov01_021FA3DC();
undefined4 ov01_021FA1D0();
undefined4 ov01_021FA28C();
undefined4 func_0x020c342c() __asm__("sub_020C342C");
undefined4 sub_02026E18();
undefined4 GetMoveModelNoBySpriteId();
undefined4 Heap_AllocAtEnd();
undefined4 ov01_021FA2A0();
undefined4 GF_AssertFail();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 ov01_021F72DC();
undefined4 FldObjSys_ReadMModelFromNarc();
extern undefined ov01_022072CC;
extern undefined ov01_02207294;
undefined4 sub_02060FA8();
undefined4 sub_02023F40();
undefined4 func_0x02023e2c() __asm__("sub_02023E2C");
undefined4 sub_02023EF4();
undefined4 func_0x02023e68() __asm__("sub_02023E68");
undefined4 sub_02023F1C();
undefined4 MapObject_GetPriorityPlusValue();
undefined4 ov01_021FA2AC();
undefined4 sub_02023F04();
undefined4 func_0x020c36d8() __asm__("sub_020C36D8");
undefined4 sub_02023FC0();
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");
undefined4 func_0x02023ea4() __asm__("sub_02023EA4");
undefined4 MapObject_CheckFlag24();
undefined4 MetatileBehavior_IsReflective();
undefined4 func_0x02023f70() __asm__("sub_02023F70");
undefined4 sub_02023F30();
undefined4 ov01_021FA31C();
undefined4 sub_02023EE0();
undefined4 MetatileBehavior_IsPuddle();
undefined4 ov01_021FA108();
undefined4 ov01_021F146C();
undefined4 sub_0205E420();
undefined4 SysTask_CreateOnVWaitQueue();
undefined4 ov01_021FAB9C();
undefined4 MapObject_CopyPositionVector();
undefined4 MapObjectManager_GetPriority();
undefined4 ov01_021FDE64();
undefined4 sub_0205E38C();

void ov01_021FA97C(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 uVar7;
  uint uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 *puVar11;
  uint uVar12;
  ushort *puVar13;
  int iStack_34;
  undefined1 auStack_30 [12];
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  iVar2 = ov01_021FA3DC();
  uVar3 = ov01_021FA1D0();
  uVar4 = ov01_021F72DC(param_1);
  puVar5 = (undefined4 *)Heap_AllocAtEnd(4,0x58);
  func_0x020e5b44(puVar5,0,0x58);
  *puVar5 = param_2;
  puVar5[0x14] = param_1;
  iVar6 = MapObject_GetID(param_1);
  if (iVar6 == 0xff) {
    ov01_021F72DC(param_1);
    uVar7 = func_0x02023f90();
    iStack_34 = func_0x020c342c(uVar7,0);
  }
  else {
    iStack_34 = 0;
  }
  uVar7 = MapObject_GetSpriteID(param_1);
  uVar8 = ov01_021FA28C();
  puVar13 = (ushort *)&ov01_02207294;
  do {
    uVar12 = (uint)*puVar13;
    if (uVar12 == uVar8) break;
    puVar13 = puVar13 + 2;
    uVar12 = (uint)*puVar13;
  } while (uVar12 != 0xff);
  if (uVar12 == 0xff) {
    GF_AssertFail();
  }
  uVar9 = FldObjSys_ReadMModelFromNarc(iVar2,puVar13[1],0);
  puVar5[2] = uVar9;
  uVar8 = ov01_021FA2A0(uVar7);
  puVar13 = (ushort *)&ov01_022072CC;
  do {
    uVar12 = (uint)*puVar13;
    if (uVar12 == uVar8) break;
    puVar13 = puVar13 + 2;
    uVar12 = (uint)*puVar13;
  } while (uVar12 != 0xff);
  if (uVar12 == 0xff) {
    GF_AssertFail();
  }
  uVar9 = FldObjSys_ReadMModelFromNarc(iVar2,puVar13[1],0);
  puVar5[3] = uVar9;
  sub_02026E18(uVar9,puVar5 + 5);
  iVar6 = GetMoveModelNoBySpriteId(uVar7);
  if (iVar6 < 0) {
    GF_AssertFail();
    iVar6 = 0;
  }
  uVar9 = FldObjSys_ReadMModelFromNarc(iVar2,iVar6,0);
  puVar5[4] = uVar9;
  uVar9 = func_0x020c3b50();
  uVar10 = ov01_021FA2AC(uVar7);
  func_0x02023e2c(puVar5 + 10,puVar5[2],uVar9,uVar10,puVar5 + 5);
  puVar11 = (undefined4 *)func_0x02023e68(uVar4);
  uStack_24 = *puVar11;
  uStack_20 = puVar11[1];
  uStack_1c = puVar11[2];
  iVar6 = ov01_021FA31C(uVar3,puVar5 + 10,&uStack_24);
  puVar5[9] = iVar6;
  if (iVar6 == 0) {
    GF_AssertFail();
  }
  if (iStack_34 == 0) {
    uVar3 = func_0x02023f90(puVar5[9]);
    func_0x020c36d8(uVar3,0);
  }
  uVar3 = sub_02023EF4(uVar4);
  sub_02023EE0(puVar5[9],uVar3);
  uVar3 = func_0x02023f70(uVar4);
  sub_02023F40(puVar5[9],uVar3);
  uVar3 = sub_02023F30(uVar4);
  sub_02023F1C(puVar5[9],uVar3);
  sub_02023F04(puVar5[9],0);
  func_0x02023ea4(puVar5[9],1);
  sub_02023FC0(puVar5[9]);
  iVar6 = MapObject_CheckFlag24(param_1);
  if (iVar6 == 1) {
    uVar3 = MapObject_GetPriorityPlusValue(param_1,2);
    uVar1 = sub_02060FA8(param_1,1);
    iVar6 = MetatileBehavior_IsReflective(uVar1);
    if (iVar6 == 1) {
      uVar4 = 2;
    }
    else {
      iVar6 = MetatileBehavior_IsPuddle(uVar1);
      if (iVar6 == 1) {
        uVar4 = 0;
      }
      else {
        uVar4 = 1;
      }
    }
    MapObject_CopyPositionVector(param_1,auStack_30);
    uVar9 = ov01_021F146C(param_1);
    uVar3 = ov01_021FDE64(uVar9,puVar5 + 10,puVar5[9],auStack_30,uVar4,uVar3);
    puVar5[0x15] = uVar3;
  }
  sub_0205E420(param_1);
  ov01_021FA108(*(undefined4 *)(iVar2 + 0x104),uVar7,param_1);
  sub_0205E38C(param_1,param_2);
  MapObjectManager_GetPriority(*(undefined4 *)(iVar2 + 0x104));
  iVar2 = SysTask_CreateOnVWaitQueue(0x21fab9d,puVar5,0xff);
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  ov01_021FAB9C(iVar2,puVar5);
  return;
}

