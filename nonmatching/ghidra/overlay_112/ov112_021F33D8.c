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
undefined4 Party_GetCount();
undefined4 func_0x02071d6c() __asm__("sub_02071D6C");
undefined4 Party_GetMonByIndex();
undefined4 CopyU16StringArrayN();
undefined4 GetMonData();

void ov112_021F33D8(ushort *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined1 uVar2;
  ushort uVar3;
  short sVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  undefined4 uVar8;
  int iVar9;
  uint uVar10;
  uint uStack_4c;
  ushort *puStack_48;
  uint uStack_40;
  int iStack_3c;
  int iStack_34;
  undefined1 auStack_30 [24];
  undefined4 uStack_18;

  uStack_18 = param_4;
  iVar5 = Party_GetCount(param_2);
  iStack_3c = 0;
  iStack_34 = 0;
  if (0 < iVar5) {
    do {
      bVar1 = false;
      uVar6 = Party_GetMonByIndex(param_2,iStack_34);
      iVar7 = GetMonData(uVar6,3,0);
      if ((iVar7 == 0) && (iVar7 = GetMonData(uVar6,0x4c,0), iVar7 == 0)) {
        uVar3 = GetMonData(uVar6,5,0);
        *param_1 = uVar3 & 0x7ff | *param_1 & 0xf800;
        sVar4 = GetMonData(uVar6,0x70,0);
        *param_1 = sVar4 << 0xb | *param_1 & 0x7ff;
        if (((*param_1 & 0x7ff) == 0x1ec) && (*param_1 >> 0xb == 1)) {
          func_0x02071d6c(uVar6,0);
          *param_1 = *param_1 & 0x7ff;
          bVar1 = true;
        }
        uVar3 = GetMonData(uVar6,6,0);
        param_1[1] = uVar3;
        uVar8 = GetMonData(uVar6,7,0);
        *(undefined4 *)(param_1 + 6) = uVar8;
        uVar8 = GetMonData(uVar6,0,0);
        *(undefined4 *)(param_1 + 8) = uVar8;
        uVar2 = GetMonData(uVar6,0xc,0);
        *(undefined1 *)((int)param_1 + 0x1f) = uVar2;
        uVar2 = GetMonData(uVar6,10,0);
        *(undefined1 *)(param_1 + 0x10) = uVar2;
        uVar2 = GetMonData(uVar6,9,0);
        *(undefined1 *)((int)param_1 + 0x21) = uVar2;
        uVar2 = GetMonData(uVar6,0xa1,0);
        *(undefined1 *)(param_1 + 0x11) = uVar2;
        GetMonData(uVar6,0x75,auStack_30);
        CopyU16StringArrayN(param_1 + 0x12,auStack_30,10);
        iVar7 = 0;
        uStack_40 = 0;
        uVar10 = 0;
        puStack_48 = param_1;
        do {
          uVar3 = GetMonData(uVar6,iVar7 + 0x36,0);
          puStack_48[2] = uVar3;
          iVar9 = GetMonData(uVar6,iVar7 + 0x3e,0);
          iVar7 = iVar7 + 1;
          uStack_40 = uStack_40 | iVar9 << (uVar10 & 0xff);
          uVar10 = uVar10 + 2;
          puStack_48 = puStack_48 + 1;
        } while (iVar7 < 4);
        *(char *)(param_1 + 0xf) = (char)uStack_40;
        uStack_4c = 0;
        uVar10 = 0;
        iVar7 = 0;
        do {
          iVar9 = GetMonData(uVar6,iVar7 + 0x46,0);
          uStack_4c = uStack_4c | iVar9 << (uVar10 & 0xff);
          uVar2 = GetMonData(uVar6,iVar7 + 0xd,0);
          iVar9 = iVar7 + 1;
          uVar10 = uVar10 + 5;
          *(undefined1 *)((int)param_1 + iVar7 + 0x18) = uVar2;
          iVar7 = iVar9;
        } while (iVar9 < 6);
        *(uint *)(param_1 + 10) = uStack_4c;
        if (bVar1) {
          func_0x02071d6c(uVar6,1);
        }
        param_1 = param_1 + 0x1c;
        iStack_3c = iStack_3c + 1;
        if (5 < iStack_3c) {
          return;
        }
      }
      iStack_34 = iStack_34 + 1;
    } while (iStack_34 < iVar5);
  }
  return;
}

