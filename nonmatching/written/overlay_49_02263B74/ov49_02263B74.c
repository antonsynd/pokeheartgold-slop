#include "global.h"

u32 ov49_0225A428(u32 a0, u32 a1, u32 a2);
u32 ov45_0222B040(u32 a0);
u32 ov45_0222A578(u32 a0, u32 a1);
u32 ov49_02259FE8(u32 a0);
u32 ov45_0222B0E8(u32 a0, u32 a1);
u32 ov45_0222B034(u32 a0);
u32 ov49_0225EF8C(u32 a0, u32 a1);
u32 ov45_0222B020(u32 a0);
u32 ov49_0225EF84(u32 a0);
u32 ov45_0222A5E8(u32 a0, u32 a1);
u32 ov49_02264CA8(u32 a0, u32 a1, u32 a2);
u32 ov49_0225EF40(u32 a0, u32 a1);
u32 ov45_0222B06C(u32 a0);
u32 ov49_0225EF88(u32 a0);
u32 ov49_0225A0CC(u32 a0);
u32 ov45_0222A5C0(u32 a0);
u32 ov49_02264EC8(u32 a0, u32 a1);
u32 ov49_02264CFC(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4);
u32 ov49_0225A08C(u32 a0, u32 a1);
u32 ov49_0225A334(u32 a0, u32 a1, u32 a2);
u32 ov45_0222B0B0(u32 a0);
u32 ov49_02264D4C(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5);
u32 ov49_0225A0DC(u32 a0);
void *ov49_02264C04(u32 a0, u32 a1, u32 a2);
u32 ov49_02264C50(u32 a0, u32 a1, u32 a2);

u32 ov45_0222B118(u32 a0, u32 a1);
u32 ov45_0222B028(u32 a0);
u32 ov49_0225A0BC(u32 a0);
u32 ov49_02264E20(u32 a0, u32 a1, u32 a2);
u32 ov45_0222AED8(u32 a0, u32 a1);
u32 ov45_0222B0BC(u32 a0);
u32 ov49_0225A174(u32 a0, u32 a1, u32 a2, u32 a3);
u32 ov49_0225A1E4(u32 a0, u32 a1, u32 a2);
u32 ov49_02265260(u32 a0, u32 a1);
u32 ov49_0225A1D4(u32 a0);
u32 ov49_02264F78(u32 a0, u32 a1);
u32 ov49_02264F1C(u32 a0);
u32 ov49_02264E90(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4);
u32 ov49_02264F24(u32 a0, u32 a1);
u32 ov49_0225A478(u32 a0, u32 a1);
u32 ov49_02264F9C(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4);
u32 ov45_0222AAC8(u32 a0);
u32 ov49_02264F10(u32 a0);
u32 ov45_0222AFC4(u32 a0);
u32 ov49_0225A0EC(u32 a0);
u32 ov49_02264CF8(u32 a0);
u32 ov49_02264D30(u32 a0, u32 a1, u32 a2);
u32 ov45_0222B0D8(u32 a0, u32 a1);
u32 ov45_0222A704(u32 a0, u32 a1, u32 a2);
u32 ov49_02258DAC(u32 a0);
void IncrementGameStat47(u32 a0);
void PlaySE(u16 seq);
u16 String_GetLength(void *string);
u32 ov49_0225A4D0(u32 a0);
u32 ov49_0225CB70(u32 a0);
u32 ov49_02264D14(u32 a0, u32 a1);
u32 ov49_02264F60(u32 a0);
u32 ov45_0222AE64(u32 a0);
u32 ov49_0225EF68(u32 a0);
u32 ov49_02258EEC(u32 a0, u32 a1, u32 a2);
u32 ov49_02259FF0(u32 a0);

u32 ov49_02263B74(void *param_1, void *param_2)

{
  int bVar1;
  u16 uVar2;
  u32 uVar3;
  u8 *pbVar4;
  u32 uVar5;
  u32 uVar6;
  int iVar7;
  u32 uVar8;
  void *puVar9;
  int iStack_38;
  u32 uStack_34;
  
  uVar3 = ov49_02259FE8(param_2);
  pbVar4 = (u8 *)ov49_0225EF84(param_1);
  uVar5 = ov45_0222B034(uVar3);
  uVar6 = ov45_0222B040(uVar3);
  iVar7 = ov45_0222B06C(uVar3);
  if (((iVar7 != 0) && (pbVar4 != (u8 *)0x0)) && (*(u16 *)(pbVar4 + 10) == 1)) {
    ov49_0225EF8C(param_1,0x1a);
    ov49_0225A0CC(param_2);
    *(u16 *)(pbVar4 + 10) = 0;
  }
  if (pbVar4 != (u8 *)0x0) {
    uStack_34 = ov45_0222A5C0(uVar3);
    iStack_38 = ov45_0222A578(uVar3,pbVar4[3]);
  }
  iVar7 = ov49_0225EF88(param_1);
  if (((iVar7 != 0) && (*(u16 *)(pbVar4 + 10) == 1)) && (iStack_38 == 0)) {
    ov49_0225EF8C(param_1,0x1a);
    ov49_0225A0CC(param_2);
    *(u16 *)(pbVar4 + 10) = 0;
  }
  uVar8 = ov49_0225EF88(param_1);
  switch(uVar8) {
  case 0:
    pbVar4 = (u8 *)ov49_0225EF40(param_1,0x50);
    *(u16 *)(pbVar4 + 0x44) = 0;
    *(u16 *)(pbVar4 + 0x46) = 0;
    *(u32 *)(pbVar4 + 0x48) = 0;
    uVar5 = ov45_0222B020(uVar3);
    iVar7 = ov49_02264CA8(pbVar4,uVar3,uVar5);
    PlaySE(0x5e4);
    ov45_0222A5E8(uVar3,9);
    if (iVar7 == 1) {
      ov49_0225A428(param_2,uVar5,0);
      ov45_0222B0E8(uVar3,uVar5);
      ov49_0225EF8C(param_1,1);
    }
    else {
      ov49_0225EF8C(param_1,0x1a);
    }
    break;
  case 1:
    iVar7 = ov45_0222B0B0(uVar3);
    if (iVar7 != 0) {
      ov49_02264D4C(pbVar4,uVar3,param_2,pbVar4[5],iStack_38,uStack_34);
      ov49_02264CFC(pbVar4,0x80,2,param_1,0x1e);
    }
    break;
  case 2:
    IncrementGameStat47(uVar3);
    ov45_0222B118(uVar3,7);
    ov49_02264D4C(pbVar4,uVar3,param_2,pbVar4[4],uStack_34,iStack_38);
    ov49_02264CFC(pbVar4,0x80,3,param_1,0x1e);
    break;
  case 3:
    switch(uVar5) {
    default:
      ov49_0225EF8C(param_1,0x1a);
      ov49_0225A0CC(param_2);
      break;
    case 2:
      iVar7 = ov49_0225A0DC(param_2);
      if (iVar7 == 0) {
        ov49_0225A0BC(param_2);
      }
      ov49_02264EC8(pbVar4,param_2);
      break;
    case 3:
      ov49_0225A0CC(param_2);
      ov45_0222AED8(uVar3,0);
      iVar7 = ov45_0222B028(uVar3);
      if (iVar7 == 0) {
        ov49_0225EF8C(param_1,6);
      }
      else {
        ov49_0225EF8C(param_1,4);
      }
    }
    break;
  case 4:
    iVar7 = ov49_02264E20(pbVar4,uVar3,param_2);
    if (iVar7 == 1) {
      ov49_02264CFC(pbVar4,0x80,5,param_1,0x1e);
    }
    else {
      ov49_0225EF8C(param_1,5);
    }
    break;
  case 5:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x28);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,7,param_1,0x1e);
    break;
  case 6:
    ov49_0225A334(param_2,pbVar4[3],0);
    ov49_0225A334(param_2,*(u16 *)(pbVar4 + 8),1);
    uVar3 = ov49_02264C50(param_2,pbVar4[3],*(u16 *)(pbVar4 + 8));
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,7,param_1,0x1e);
    break;
  case 7:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x2f);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,9,param_1,0x1e);
    break;
  case 8:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x35);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,9,param_1,0x1e);
    break;
  case 9:
    switch(uVar5) {
    case 0:
      ov49_0225EF8C(param_1,0x1b);
      ov49_0225A0CC(param_2);
      break;
    default:
      ov49_0225EF8C(param_1,0x1a);
      ov49_0225A0CC(param_2);
      break;
    case 2:
      iVar7 = ov49_0225A0DC(param_2);
      if (iVar7 == 0) {
        ov49_0225A0BC(param_2);
      }
      ov49_02264EC8(pbVar4,param_2);
      break;
    case 3:
      if (uVar6 == 3) {
        ov49_0225EF8C(param_1,10);
        ov45_0222B0BC(uVar3);
        *(u32 *)(pbVar4 + 0x4c) = 1;
        ov49_02264F78(pbVar4,iStack_38);
      }
      else if (uVar6 == 4) {
        ov49_0225EF8C(param_1,0xe);
        ov45_0222B0BC(uVar3);
        *(u32 *)(pbVar4 + 0x4c) = 1;
        ov49_02264F78(pbVar4,iStack_38);
      }
      else if (uVar6 == 5) {
        ov45_0222AED8(uVar3,1);
        ov49_0225EF8C(param_1,0xf);
      }
      else {
        ov49_0225EF8C(param_1,0x1a);
        ov49_0225A0CC(param_2);
      }
      ov49_0225A0CC(param_2);
    }
    break;
  case 10:
    ov49_0225A334(param_2,pbVar4[3],0);
    ov49_02264E90(pbVar4,uVar3,param_2,1,1);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x1ff);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,0xb,param_1,0x1e);
    break;
  case 0xb:
    ov49_0225A334(param_2,pbVar4[3],0);
    ov49_02264E90(pbVar4,uVar3,param_2,1,1);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x200);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,0xc,param_1,0x1e);
    break;
  case 0xc:
    ov49_0225A334(param_2,pbVar4[3],0);
    ov49_02264E90(pbVar4,uVar3,param_2,1,1);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x201);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,0xd,param_1,0x1e);
    break;
  case 0xd:
    PlaySE(0x5bf);
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar5 = ov49_02264C04(param_2,pbVar4[3],0x202);
    ov49_0225A08C(param_2,uVar5);
    ov49_02264CFC(pbVar4,0x80,8,param_1,0x1e);
    ov45_0222AED8(uVar3,2);
    uVar3 = ov45_0222AAC8(ov45_0222A5C0(uVar3));
    ov49_0225A478(param_2,uVar3);
    break;
  case 0xe:
    ov49_0225A334(param_2,pbVar4[3],0);
    ov49_02264E90(pbVar4,uVar3,param_2,1,1);
    uVar5 = ov49_02264C04(param_2,pbVar4[3],0x1fb);
    ov49_0225A08C(param_2,uVar5);
    ov49_02264CFC(pbVar4,0x80,0x1b,param_1,0x1e);
    ov45_0222AED8(uVar3,2);
    break;
  case 0xf:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x2af);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,0x10,param_1,0x1e);
    break;
  case 0x10:
    switch(uVar5) {
    default:
      ov49_0225EF8C(param_1,0x1a);
      ov49_0225A0CC(param_2);
      break;
    case 2:
      iVar7 = ov49_0225A0DC(param_2);
      if (iVar7 == 0) {
        ov49_0225A0BC(param_2);
      }
      ov49_02264EC8(pbVar4,param_2);
      break;
    case 3:
      ov49_0225EF8C(param_1,0x11);
      ov49_0225A0CC(param_2);
      ov45_0222B0BC(uVar3);
      *(u32 *)(pbVar4 + 0x4c) = 1;
    }
    break;
  case 0x11:
    if ((uVar6 < 6) || (0x7d < uVar6)) {
      ov49_0225EF8C(param_1,0x1a);
    }
    else {
      pbVar4[2] = (char)uVar6 - 6;
      *pbVar4 = pbVar4[2] >> 2;
      ov49_0225A334(param_2,pbVar4[3],0);
      uVar3 = ov49_02264C04(param_2,pbVar4[3],*pbVar4 + 0x37);
      ov49_0225A08C(param_2,uVar3);
      ov49_02264CFC(pbVar4,0x80,0x12,param_1,0x1e);
    }
    break;
  case 0x12:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],*pbVar4 + 0x55);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,0x13,param_1,0x1e);
    break;
  case 0x13:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],pbVar4[2] + 0xec);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,0x14,param_1,0x1e);
    break;
  case 0x14:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],*pbVar4 + 0x1dd);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,0x15,param_1,0x1e);
    break;
  case 0x15:
    ov49_02264F9C(pbVar4 + 0x14,param_2,5,(u32)*pbVar4 * 4 + 0x73,2);
    ov49_0225A174(param_2,pbVar4 + 0x14,0,0);
    ov49_02264F10(pbVar4);
    ov49_0225EF8C(param_1,0x16);
    break;
  case 0x16:
    uVar5 = ov49_0225A1D4(param_2);
    switch(uVar5) {
    case 0:
    case 1:
    case 2:
    case 3:
      pbVar4[1] = (char)uVar5 + *pbVar4 * '\x04';
      ov45_0222AED8(uVar3,pbVar4[1] + 6);
      ov49_0225EF8C(param_1,0x17);
      bVar1 = 1;
      break;
    case 4:
      pbVar4[1] = 0x7e;
      ov45_0222AED8(uVar3,pbVar4[1]);
      ov49_0225EF8C(param_1,0x1c);
      bVar1 = 1;
      break;
    default:
      ov49_02264F24(pbVar4,param_2);
      bVar1 = 0;
    }
    if (bVar1) {
      ov49_0225A1E4(param_2,0,0);
      ov49_02265260(pbVar4 + 0x14,param_2);
      ov49_02264F1C(pbVar4);
      ov49_02264F78(pbVar4,iStack_38);
    }
    break;
  case 0x17:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],pbVar4[1] + 0x165);
    ov49_0225A08C(param_2,uVar3);
    if (pbVar4[2] == pbVar4[1]) {
      ov49_02264CFC(pbVar4,0x80,0x18,param_1,0x1e);
    }
    else {
      ov49_02264CFC(pbVar4,0x80,0x19,param_1,0x1e);
    }
    break;
  case 0x18:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x33);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,0x19,param_1,0x1e);
    break;
  case 0x19:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x34);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,8,param_1,0x1e);
    break;
  case 0x1a:
    ov49_0225A1E4(param_2,0,0);
    ov49_02265260(pbVar4 + 0x14,param_2);
    puVar9 = (void *)ov49_02264C04(param_2,pbVar4[3],0x2d);
    ov49_0225A08C(param_2,puVar9);
    *(u16 *)(pbVar4 + 10) = 0;
    uVar2 = String_GetLength(puVar9);
    iVar7 = ov49_0225CB70(param_2);
    uVar6 = ((u32)uVar2 * iVar7 >> 1) + 0x3c;
    if (uVar6 < 0x80) {
      uVar6 = 0x80;
    }
    else if (0xff < uVar6) {
      uVar6 = 0xff;
    }
    ov49_02264CFC(pbVar4,uVar6 & 0xff,0x1f,param_1,0x1d);
    ov45_0222AFC4(uVar3);
    break;
  case 0x1b:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x2b);
    ov49_0225A08C(param_2,uVar3);
    *(u16 *)(pbVar4 + 10) = 0;
    ov49_02264CFC(pbVar4,0x80,0x1f,param_1,0x1d);
    break;
  case 0x1c:
    ov49_0225A334(param_2,pbVar4[3],0);
    uVar3 = ov49_02264C04(param_2,pbVar4[3],0x31);
    ov49_0225A08C(param_2,uVar3);
    ov49_02264CFC(pbVar4,0x80,0x1b,param_1,0x1e);
    break;
  case 0x1d:
    ov49_02264D14(pbVar4,param_1);
    break;
  case 0x1e:
    ov49_02264D30(pbVar4,param_1,param_2);
    break;
  case 0x1f:
    if (*(u16 *)(pbVar4 + 0x44) == 1) {
      ov45_0222A704(uVar3,*(u16 *)(pbVar4 + 0x46),*(u32 *)(pbVar4 + 0x48));
    }
    if (*(int *)(pbVar4 + 0x4c) == 0) {
      ov45_0222B0D8(uVar3,pbVar4[3]);
    }
    ov45_0222AE64(uVar3);
    ov49_0225A0EC(param_2);
    ov49_02264CF8(pbVar4);
    ov49_0225EF68(param_1);
    ov45_0222A5E8(uVar3,1);
    uVar3 = ov49_02259FF0(param_2);
    uVar5 = ov49_02258DAC(uVar3);
    ov49_02258EEC(uVar3,uVar5,1);
    ov49_0225A4D0(param_2);
    return 1;
  }
  ov49_02264F60(pbVar4);
  return 0;
}

