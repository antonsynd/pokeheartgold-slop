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
undefined4 func_0x0200dd24() __asm__("sub_0200DD24");
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
undefined4 SpriteSystem_NewSprite();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov40_0222D294();
undefined4 ov40_0222D288();
extern undefined ov40_02244DC0;

void ov40_0222CCAC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  int iVar7;
  byte *pbVar8;
  int iVar9;
  int iStack_58;
  short sStack_50;
  short sStack_4e;
  short sStack_4c;
  short sStack_4a;
  undefined2 uStack_48;
  undefined2 uStack_46;
  uint uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  puVar6 = (undefined4 *)(param_1 + 0x534);
  uVar2 = *(undefined4 *)(param_1 + 0x18);
  uVar3 = *(undefined4 *)(param_1 + 0x1c);
  uVar4 = *(undefined4 *)(param_1 + 0x28);
  sStack_4c = 0x2a;
  sVar1 = 5 - (short)*(undefined4 *)(param_1 + 0x6e0);
  if (*(int *)(param_1 + 0x6e0) == 2) {
    sVar1 = 2;
  }
  sStack_4a = sVar1 * 0x10 + 0xc9;
  iStack_58 = 0;
  uStack_48 = 0;
  uStack_46 = 0;
  uStack_1c = 0;
  uStack_20 = 3;
  pbVar8 = &ov40_02244DC0;
  iVar9 = 0;
  uStack_40 = 1;
  uStack_28 = 0xffffffff;
  uStack_24 = 0xffffffff;
  uStack_18 = param_4;
  do {
    uStack_3c = 2;
    uStack_38 = 0x2712;
    uStack_34 = 10000;
    uStack_30 = 0x2712;
    uStack_2c = 0x2712;
    uStack_44 = (uint)pbVar8[5];
    uVar5 = SpriteSystem_NewSprite(uVar2,uVar3,&sStack_4c);
    *puVar6 = uVar5;
    func_0x0200dc18();
    ManagedSprite_SetDrawFlag(*puVar6,1);
    ov40_0222D288(*puVar6,(sStack_4c + 8) * 0x10000 >> 0x10,(int)sStack_4a);
    uStack_3c = 1;
    uStack_38 = 0x2711;
    uStack_34 = 9999;
    uStack_30 = 0x2711;
    uStack_2c = 0x2711;
    uStack_44 = (uint)*pbVar8;
    uVar5 = SpriteSystem_NewSprite(uVar2,uVar3,&sStack_4c);
    puVar6[0x32] = uVar5;
    func_0x0200dc18(puVar6[0x32]);
    ov40_0222D288(puVar6[0x32],(int)sStack_4c,(int)sStack_4a);
    ManagedSprite_SetDrawFlag(puVar6[0x32],*(undefined4 *)(*(int *)(param_1 + 0x818) + iVar9));
    pbVar8 = pbVar8 + 1;
    iStack_58 = iStack_58 + 1;
    puVar6 = puVar6 + 10;
    iVar9 = iVar9 + 0x24;
  } while (iStack_58 < 5);
  iVar7 = 0;
  iVar9 = param_1;
  do {
    if (*(int *)(param_1 + 0x6d8) == 0) break;
    ov40_0222D294(*(undefined4 *)(iVar9 + 0x534),&sStack_4e,&sStack_50);
    if (*(int *)(param_1 + 0x6d8) + -1 == iVar7) {
      sStack_50 = 0xa9;
      func_0x0200dd24(*(undefined4 *)(iVar9 + 0x534),1);
    }
    else {
      sStack_4e = sStack_4e + ((short)*(int *)(param_1 + 0x6d8) - (short)iVar7) * -4;
      sStack_50 = ((short)*(undefined4 *)(param_1 + 0x6d8) - (short)iVar7) * -0x14 + 0xbd;
      func_0x0200dd24(*(undefined4 *)(iVar9 + 0x534),2);
    }
    ov40_0222D288(*(undefined4 *)(iVar9 + 0x534),(int)sStack_4e,(int)sStack_50);
    iVar7 = iVar7 + 1;
    iVar9 = iVar9 + 0x28;
  } while (iVar7 < *(int *)(param_1 + 0x6d8));
  func_0x02003ea4(uVar4,2,0xc,0x10,*(uint *)(param_1 + 0x58) & 0xffff);
  return;
}

