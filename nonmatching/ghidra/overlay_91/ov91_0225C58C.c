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
undefined4 func_0x02258b54() __asm__("sub_02258B54");
undefined4 ov91_02261B2C();
undefined4 OverlayManager_GetData();
undefined4 ov91_0225CC4C();
undefined4 func_0x02258914() __asm__("sub_02258914");
undefined4 sub_0200FC20();
undefined4 func_0x022589bc() __asm__("sub_022589BC");
undefined4 func_0x02258938() __asm__("sub_02258938");
undefined4 OverlayManager_GetArgs();
undefined4 GF_CreateVramTransferManager();
undefined4 func_0x022589cc() __asm__("sub_022589CC");
undefined4 GF_AssertFail();
undefined4 func_0x02258b98() __asm__("sub_02258B98");
undefined4 HBlankInterruptDisable();
undefined4 IsPaletteFadeFinished();
undefined4 sub_0200FB70();
undefined4 sub_020347A0();
undefined4 Main_SetVBlankIntrCB();
extern uint uRam021d1150 __asm__("sub_021D1150");
undefined4 ov91_0225CCF4();
undefined4 ov91_0225CD5C();
undefined4 ov91_0225CDF4();
undefined4 func_0x021e69a8() __asm__("sub_021E69A8");
undefined4 sub_02037B38();
undefined4 ov91_0225CCC4();
undefined4 ov91_0225CD6C();
undefined4 ov91_0225D3C4();
undefined4 BeginNormalPaletteFade();
undefined4 ov91_0225CEB4();
undefined4 sub_02037030();
undefined4 sub_0203769C();
undefined4 func_0x0225886c() __asm__("sub_0225886C");
undefined4 sub_0203A880();
undefined4 sub_02037AC0();
undefined4 ov91_0225CCA8();
undefined4 ov91_0225CD64();
undefined4 ov91_0225D1DC();
undefined4 func_0x02258aa0() __asm__("sub_02258AA0");
undefined4 ov91_0225CDAC();
undefined4 GF_DestroyVramTransferManager();
undefined4 func_0x02258aa8() __asm__("sub_02258AA8");
undefined4 ov91_0225CB98();
undefined4 ov91_0225CB64();
undefined4 func_0x02258aa4() __asm__("sub_02258AA4");
undefined4 ov91_0225D078();
undefined4 func_0x022589e0() __asm__("sub_022589E0");
undefined4 func_0x02258a04() __asm__("sub_02258A04");
undefined4 ov91_0225CCEC();
undefined4 ov91_0225CDC4();
undefined4 ov91_0225D37C();
undefined4 ov91_0225CE80();
undefined4 func_0x021e6a4c() __asm__("sub_021E6A4C");

undefined4 ov91_0225C58C(undefined4 param_1,int *param_2)

{
  undefined2 uVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined1 uStack_24;
  undefined1 uStack_23;
  undefined1 auStack_20 [16];

  puVar2 = (undefined4 *)OverlayManager_GetData();
  iVar3 = OverlayManager_GetArgs(param_1);
  iVar4 = func_0x02258b54(puVar2 + 2);
  if (iVar4 == 1) {
    iVar4 = puVar2[0x1e];
    if (iVar4 == 0) {
      iVar3 = IsPaletteFadeFinished();
      if (iVar3 == 1) {
        sub_0200FB70();
      }
      sub_0200FC20(0);
      puVar2[0x1e] = puVar2[0x1e] + 1;
    }
    else {
      if (iVar4 != 1) {
        if (iVar4 == 2) {
          ov91_0225CC4C(puVar2,iVar3);
          return 1;
        }
        GF_AssertFail();
        return 1;
      }
      iVar3 = func_0x02258b98(puVar2 + 2);
      if (iVar3 == 1) {
        puVar2[0x1e] = puVar2[0x1e] + 1;
      }
    }
    return 0;
  }
  switch(*param_2) {
  case 0:
    uVar6 = func_0x02258914(puVar2 + 2,0x6a);
    *puVar2 = uVar6;
    *param_2 = *param_2 + 1;
    break;
  case 1:
    iVar3 = func_0x022589bc(*puVar2);
    if (iVar3 == 1) {
      uVar6 = func_0x022589cc(*puVar2);
      puVar2[0x1c] = uVar6;
      func_0x02258938(*puVar2);
      *puVar2 = 0;
      *param_2 = *param_2 + 1;
    }
    break;
  case 2:
    if ((uRam021d1150 & 1) == 0) {
      Main_SetVBlankIntrCB(0x225cb59,puVar2);
      HBlankInterruptDisable();
      puVar2[0xe] = 0;
      puVar2[0xf] = 0;
      puVar2[0x10] = 0;
      *(undefined1 *)(puVar2 + 0x21) = 0;
      *(undefined1 *)((int)puVar2 + 0x85) = 0;
      *(undefined1 *)((int)puVar2 + 0x86) = 0;
      *(undefined1 *)((int)puVar2 + 0x87) = 0;
      GF_CreateVramTransferManager(0x20,0x6a);
      ov91_02261B2C(puVar2);
      puVar2[0x20] = 1;
      uVar5 = sub_020347A0();
      puVar2[0x1d] = uVar5;
      if (uVar5 < 2) {
        GF_AssertFail();
      }
      uVar1 = sub_0203769C();
      *(undefined2 *)(puVar2 + 0x11) = uVar1;
      uVar1 = func_0x0225886c(puVar2 + 2,*(undefined2 *)(puVar2 + 0x11));
      *(undefined2 *)((int)puVar2 + 0x46) = uVar1;
      if (*(short *)(puVar2 + 0x11) == 0) {
        uVar6 = ov91_0225CCC4(0x6a,0x4b0,puVar2[0x1d],puVar2 + 0x12);
        puVar2[0xc] = uVar6;
        puVar2[0x1f] = 1;
      }
      uVar6 = ov91_0225CDF4(0x6a,0x4b0,puVar2[0x1d],*(undefined2 *)((int)puVar2 + 0x46),
                            puVar2 + 0x12);
      puVar2[0xd] = uVar6;
      sub_0203A880();
      if (*(char *)(iVar3 + 0x38) != '\0') {
        func_0x021e69a8(0x6a);
      }
      iVar3 = puVar2[0x1c];
      if (iVar3 == 0) {
        uStack_24 = 0;
        uStack_23 = 0;
      }
      else if (iVar3 == 1) {
        uStack_24 = 0;
        uStack_23 = 1;
      }
      else if (iVar3 == 2) {
        uStack_24 = 1;
        uStack_23 = 0;
      }
      else {
        GF_AssertFail();
      }
      ov91_0225D3C4(puVar2[0xd],&uStack_24);
      sub_02037AC0(1);
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    iVar3 = sub_02037B38(1);
    if (iVar3 != 0) {
      BeginNormalPaletteFade(0,0x1b,0x1b,0xffff,6,1,0x6a);
      *param_2 = *param_2 + 1;
    }
    break;
  case 4:
    ov91_0225CEB4(puVar2[0xd],0);
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 != 0) {
      if (*(short *)(puVar2 + 0x11) == 0) {
        iVar3 = sub_02037030(0x16,0,0);
        if (iVar3 != 0) {
          *param_2 = *param_2 + 1;
        }
      }
      else {
        *param_2 = *param_2 + 1;
      }
    }
    break;
  case 5:
    ov91_0225CEB4(puVar2[0xd],0);
    if (puVar2[0xe] != 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 6:
    iVar3 = ov91_0225CEB4(puVar2[0xd],1);
    if (iVar3 == 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 7:
    if (puVar2[0xf] == 0) {
      if (*(short *)(puVar2 + 0x11) == 0) {
        iVar3 = ov91_0225CCF4(puVar2[0xc]);
        iVar4 = ov91_0225CD5C(puVar2[0xc]);
        if (iVar4 != 0) {
          uStack_2c = ov91_0225CD6C(puVar2[0xc]);
          iVar4 = ov91_0225CCA8(puVar2,0x1b,&uStack_2c,4);
          if (iVar4 == 1) {
            ov91_0225CD64(puVar2[0xc]);
          }
        }
        if (iVar3 == 0) {
          ov91_0225CCA8(puVar2,0x17,0,0);
        }
      }
      ov91_0225D1DC(puVar2[0xd]);
      ov91_0225CB64(puVar2);
      ov91_0225CB98(puVar2);
    }
    else {
      uStack_28 = ov91_0225D37C(puVar2[0xd]);
      iVar3 = sub_02037030(0x19,&uStack_28,4);
      if (iVar3 != 0) {
        *param_2 = *param_2 + 1;
      }
    }
    break;
  case 8:
    ov91_0225D078(puVar2[0xd],0);
    if (*(short *)(puVar2 + 0x11) == 0) {
      iVar3 = ov91_0225CDAC(puVar2[0xc]);
      if (iVar3 == 1) {
        ov91_0225CDC4(puVar2[0xc],auStack_20);
        iVar3 = sub_02037030(0x1a,auStack_20,0x10);
        if (iVar3 != 0) {
          *param_2 = *param_2 + 1;
        }
      }
    }
    else {
      *param_2 = *param_2 + 1;
    }
    break;
  case 9:
    ov91_0225D078(puVar2[0xd],0);
    if (puVar2[0x10] == 1) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 10:
    iVar3 = ov91_0225D078(puVar2[0xd],1);
    if (iVar3 == 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 0xb:
    BeginNormalPaletteFade(0,0x1a,0x1a,0xffff,6,1,0x6a);
    ov91_0225D078(puVar2[0xd],1);
    *param_2 = *param_2 + 1;
    break;
  case 0xc:
    ov91_0225D078(puVar2[0xd],1);
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 != 0) {
      sub_02037AC0(3);
      *param_2 = *param_2 + 1;
    }
    break;
  case 0xd:
    iVar4 = sub_02037B38(3);
    if (iVar4 == 0) {
      return 0;
    }
    if (*(char *)(iVar3 + 0x38) != '\0') {
      func_0x021e6a4c();
    }
    if (*(short *)(puVar2 + 0x11) == 0) {
      ov91_0225CCEC(puVar2[0xc]);
      puVar2[0xc] = 0;
    }
    ov91_0225CE80(puVar2[0xd]);
    puVar2[0xd] = 0;
    Main_SetVBlankIntrCB(0,0);
    HBlankInterruptDisable();
    GF_DestroyVramTransferManager();
    *param_2 = *param_2 + 1;
    break;
  case 0xe:
    func_0x02258aa8(puVar2 + 6,*(undefined1 *)(puVar2 + 4));
    uVar6 = func_0x022589e0(puVar2 + 2,puVar2 + 6,0x6a);
    puVar2[1] = uVar6;
    *param_2 = *param_2 + 1;
    break;
  case 0xf:
    iVar3 = func_0x02258aa0(puVar2[1]);
    if (iVar3 == 1) {
      iVar3 = func_0x02258aa4(puVar2[1]);
      func_0x02258a04(puVar2[1]);
      puVar2[1] = 0;
      if (iVar3 == 0) {
        return 1;
      }
      *param_2 = 0;
    }
  }
  return 0;
}

