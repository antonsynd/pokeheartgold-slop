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
undefined4 SpriteTransfer_CreateCharTransferTask_AllocAtEnd();
undefined4 GF_AssertFail();
undefined4 func_0x0222a964() __asm__("sub_0222A964");
undefined4 func_0x0200a3c8() __asm__("sub_0200A3C8");
undefined4 func_0x0222a9cc() __asm__("sub_0222A9CC");
undefined4 func_0x0200a480() __asm__("sub_0200A480");
undefined4 func_0x0200a740() __asm__("sub_0200A740");
undefined4 func_0x0200b00c() __asm__("sub_0200B00C");
undefined4 NARC_New();
undefined4 func_0x0222a92c() __asm__("sub_0222A92C");
undefined4 func_0x0200a540() __asm__("sub_0200A540");
undefined4 func_0x0222a99c() __asm__("sub_0222A99C");
undefined4 ov49_0225C828();
extern undefined ov49_022696FC;
extern undefined ov49_02269774;
extern undefined ov49_0226991C;
extern undefined ov49_02269704;
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 NARC_Delete();
undefined4 CreateSpriteResourcesHeader();
undefined4 func_0x02024aa8() __asm__("sub_02024AA8");
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 func_0x02024714() __asm__("sub_02024714");
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");

void ov49_0225C4CC(int param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
                  undefined4 param_6)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  byte *pbVar6;
  int iVar7;
  int iVar8;
  undefined4 uStack_7c;
  undefined2 *puStack_78;
  undefined2 *puStack_74;
  short *psStack_70;
  int *piStack_68;
  undefined1 auStack_5c [36];
  undefined4 uStack_38;
  undefined1 *puStack_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  uVar1 = NARC_New(0xd7,param_4);
  uVar2 = func_0x0222a99c(param_6);
  iVar3 = func_0x0222a9cc(param_6);
  iVar8 = 0;
  psStack_70 = (short *)&ov49_02269774;
  puStack_74 = (undefined2 *)&ov49_02269704;
  puStack_78 = (undefined2 *)&ov49_022696FC;
  iVar7 = param_1;
  do {
    if (iVar8 == 2) {
      if (iVar3 == 1) {
        *(undefined4 *)(iVar7 + 0xac) = 0;
        *(undefined4 *)(iVar7 + 0xec) = 0;
        *(undefined4 *)(iVar7 + 0xfc) = 0;
      }
      else {
LAB_0225c546:
        uStack_7c = param_3;
        if (*psStack_70 == 0xd7) {
          uStack_7c = uVar1;
        }
        uVar5 = func_0x0200a480(*(undefined4 *)(param_2 + 0x134),uStack_7c,psStack_70[1],0,
                                iVar8 + 0x96,2,psStack_70[2],param_4);
        *(undefined4 *)(iVar7 + 0xac) = uVar5;
        iVar4 = func_0x0200b00c(*(undefined4 *)(iVar7 + 0xac));
        if (iVar4 == 0) {
          GF_AssertFail();
        }
        func_0x0200a740(*(undefined4 *)(iVar7 + 0xac));
        uVar5 = func_0x0200a540(*(undefined4 *)(param_2 + 0x138),uStack_7c,*puStack_74,0,
                                iVar8 + 0x96,2,param_4);
        *(undefined4 *)(iVar7 + 0xec) = uVar5;
        uVar5 = func_0x0200a540(*(undefined4 *)(param_2 + 0x13c),uStack_7c,*puStack_78,0,
                                iVar8 + 0x96,3,param_4);
        *(undefined4 *)(iVar7 + 0xfc) = uVar5;
      }
    }
    else {
      if ((iVar8 != 3) || (iVar3 != 0)) goto LAB_0225c546;
      *(undefined4 *)(iVar7 + 0xac) = 0;
      *(undefined4 *)(iVar7 + 0xec) = 0;
      *(undefined4 *)(iVar7 + 0xfc) = 0;
    }
    iVar8 = iVar8 + 1;
    psStack_70 = psStack_70 + 3;
    iVar7 = iVar7 + 4;
    puStack_74 = puStack_74 + 1;
    puStack_78 = puStack_78 + 1;
    if (3 < iVar8) {
      iVar7 = 0;
      piStack_68 = (int *)&ov49_0226991C;
      do {
        iVar8 = func_0x0222a92c(param_5,iVar7);
        uVar5 = func_0x0222a964(param_5,iVar7);
        if (iVar8 == 0x18) {
          *(undefined4 *)(param_1 + 0xbc) = 0;
          *(undefined4 *)(param_1 + 0x7c) = 0;
        }
        else {
          pbVar6 = (byte *)ov49_0225C828(iVar8,uVar5,uVar2,iVar3);
          uVar5 = uVar1;
          if (*pbVar6 == 1) {
            uVar5 = param_3;
          }
          uVar5 = func_0x0200a3c8(*(undefined4 *)(param_2 + 0x130),uVar5,*(undefined2 *)(pbVar6 + 2)
                                  ,0,iVar7 + 0x96,2,param_4);
          *(undefined4 *)(param_1 + 0xbc) = uVar5;
          iVar8 = SpriteTransfer_CreateCharTransferTask_AllocAtEnd(*(undefined4 *)(param_1 + 0xbc));
          if (iVar8 == 0) {
            GF_AssertFail();
          }
          func_0x0200a740(*(undefined4 *)(param_1 + 0xbc));
          iVar8 = *pbVar6 + 0x96;
          CreateSpriteResourcesHeader
                    (auStack_5c,iVar7 + 0x96,iVar8,iVar8,iVar8,0xffffffff,0xffffffff,0,0,
                     *(undefined4 *)(param_2 + 0x130),*(undefined4 *)(param_2 + 0x134),
                     *(undefined4 *)(param_2 + 0x138),*(undefined4 *)(param_2 + 0x13c),0,0);
          uStack_38 = *(undefined4 *)(param_2 + 4);
          puStack_34 = auStack_5c;
          uStack_24 = 0;
          uStack_20 = 2;
          iStack_30 = *piStack_68;
          iStack_2c = piStack_68[1];
          iStack_28 = piStack_68[2];
          iVar8 = (int)*(short *)(pbVar6 + 4);
          uStack_1c = param_4;
          if (iVar8 < 1) {
            uVar5 = func_0x020f2178(iVar8 << 0xc);
            func_0x020f24c8(uVar5,0x3f000000);
          }
          else {
            uVar5 = func_0x020f2178(iVar8 << 0xc);
            func_0x020f1520(0x3f000000,uVar5);
          }
          iVar8 = func_0x020f2104();
          iStack_30 = iStack_30 + iVar8;
          iVar8 = (int)*(short *)(pbVar6 + 6);
          if (iVar8 < 1) {
            uVar5 = func_0x020f2178(iVar8 << 0xc);
            func_0x020f24c8(uVar5,0x3f000000);
          }
          else {
            uVar5 = func_0x020f2178(iVar8 << 0xc);
            func_0x020f1520(0x3f000000,uVar5);
          }
          iVar8 = func_0x020f2104();
          iStack_2c = iStack_2c + iVar8;
          uVar5 = func_0x02024714(&uStack_38);
          *(undefined4 *)(param_1 + 0x7c) = uVar5;
          func_0x02024aa8(uVar5,pbVar6[1]);
        }
        iVar7 = iVar7 + 1;
        piStack_68 = piStack_68 + 3;
        param_1 = param_1 + 4;
      } while (iVar7 < 0xc);
      NARC_Delete(uVar1);
      return;
    }
  } while( true );
}

