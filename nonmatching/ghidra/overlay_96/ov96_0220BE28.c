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
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 ov96_0220D13C();
undefined4 ov96_021EAA04();
undefined4 ManagedSprite_SetAffineOverwriteMode(void *, unsigned char);
undefined4 ManagedSprite_SetAffineScale(void *, float, float);
undefined4 ManagedSprite_SetDrawFlag(void *, int);
void * ov96_021E8A20(void *);
undefined4 MI_CpuFill8(void *, unsigned char, unsigned int);
undefined4 ov96_021E5F24(void *);

void ov96_0220BE28(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  byte param_5,undefined *param_6,uint *param_7)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined *puVar4;
  uint *puVar5;
  uint uVar6;
  undefined4 *puVar7;
  int iVar8;
  
  MI_CpuFill8((undefined *)param_1,0,0x3c);
  uVar1 = (uint)param_5;
  param_1[0xe] = (uVar1 & 3) << 0x19 | param_1[0xe] & 0xf9ffffff;
  *param_1 = param_6;
  param_1[0xe] = (uVar1 & 3) << 0x1b | param_1[0xe] & 0xe7ffffff;
  uVar2 = ov96_021E5F24(param_6);
  uVar6 = param_1[0xe];
  if (uVar2 < (uVar6 & 0x7ffffff) >> 0x19) {
    param_1[0xe] = (((uVar6 & 0x1fffffff) >> 0x1b) - 1 & 3) << 0x1b | uVar6 & 0xe7ffffff;
  }
  iVar8 = 0;
  puVar7 = param_1;
  puVar5 = param_7;
  do {
    uVar3 = ov96_021EAA04(param_4,iVar8 + ((param_1[0xe] & 0x1fffffff) >> 0x1b) * 3 & 0xff);
    puVar7[1] = uVar3;
    iVar8 = iVar8 + 1;
    puVar7[4] = *puVar5;
    puVar7 = puVar7 + 1;
    puVar5 = puVar5 + 1;
  } while (iVar8 < 3);
  puVar4 = PokeathlonCourse_GetDataCopyArea(param_6);
  puVar5 = (uint *)ov96_021E8A20(puVar4 + uVar1 * 0x28 + 0x50);
  *puVar5 = (*param_7 & 0xff) << 8 | *puVar5 & 0xffff00ff;
  iVar8 = ((param_1[0xe] & 0x1fffffff) >> 0x1b) * 0x40 + 0x48;
  uVar3 = ov96_0220D13C(param_2,param_3,iVar8 * 0x10000 >> 0x10,0x38,0xc,0x1d);
  param_1[7] = uVar3;
  puVar4 = (undefined *)ov96_0220D13C(param_2,param_3,iVar8 * 0x10000 >> 0x10,0x38,5,0x1c);
  param_1[8] = puVar4;
  ManagedSprite_SetDrawFlag(puVar4,0);
  puVar4 = (undefined *)ov96_0220D13C(param_2,param_3,iVar8 * 0x10000 >> 0x10,0x28,0x10,0x1f);
  param_1[10] = puVar4;
  ManagedSprite_SetAffineOverwriteMode(puVar4,1);
  ManagedSprite_SetAffineScale((undefined *)param_1[10],0.7,0.7);
  ManagedSprite_SetDrawFlag((undefined *)param_1[10],0);
  puVar4 = (undefined *)ov96_0220D13C(param_2,param_3,iVar8 * 0x10000 >> 0x10,0x28,0x18,0x1f);
  param_1[9] = puVar4;
  ManagedSprite_SetDrawFlag(puVar4,0);
  puVar4 = (undefined *)ov96_0220D13C(param_2,param_3,iVar8 * 0x10000 >> 0x10,0x28,0xe,0x1e);
  param_1[0xb] = puVar4;
  ManagedSprite_SetDrawFlag(puVar4,0);
  puVar4 = (undefined *)ov96_0220D13C(param_2,param_3,iVar8 * 0x10000 >> 0x10,0x28,0x1b,0x1e);
  param_1[0xc] = puVar4;
  ManagedSprite_SetDrawFlag(puVar4,0);
  return;
}

