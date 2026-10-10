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
undefined4 Sprite_SetPaletteOverride(void *, unsigned char, ...);
undefined4 Sprite_SetAnimCtrlSeq(void *, int);
undefined4 ov96_021FC248();
void * Heap_AllocAtEnd(int, unsigned int);
undefined4 Heap_Free(void *);
undefined4 ov96_021FC5E0();
undefined4 GetMonIconNaixEx(unsigned short, int, unsigned int, ...);
undefined4 Sprite_SetDrawFlag(void *, int);
void * NARC_New(int, int);
undefined4 func_0x020d2894(void *, unsigned int) __asm__("sub_020D2894");
undefined4 func_0x020b70f4(void *, void *) __asm__("sub_020B70F4");
void * Sprite_CreateAffine(void *);
undefined4 Sprite_SetDrawPriority(void *, unsigned int);
undefined4 func_0x020cfecc(void *, unsigned int, unsigned int) __asm__("sub_020CFECC");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 NARC_ReadWholeMember(void *, unsigned int, void *);
undefined4 Sprite_SetAnimActiveFlag(void *, int);
unsigned char GetMonIconPaletteEx(unsigned short, unsigned int, unsigned int, ...);
undefined4 NARC_Delete(void *);

void ov96_021FC450(undefined4 *param_1,short *param_2)

{
  ushort uVar1;
  short sVar2;
  char cVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  undefined4 *puVar9;
  int iStack_64;
  int iStack_60;
  int iStack_48;
  undefined1 auStack_44 [48];

  uVar4 = NARC_New(0x14,*param_1);
  uVar5 = Heap_AllocAtEnd(*param_1,0x1000);
  ov96_021FC5E0(auStack_44,param_1,param_1 + 0x58,2);
  iStack_60 = 0x200;
  iStack_64 = 0x10;
  iVar8 = 0;
  puVar9 = param_1;
  do {
    uVar6 = Sprite_CreateAffine(auStack_44);
    puVar9[0x61] = uVar6;
    Sprite_SetAnimActiveFlag(puVar9[0x61],1);
    Sprite_SetAnimCtrlSeq(puVar9[0x61],iVar8);
    uVar6 = Sprite_CreateAffine(auStack_44);
    puVar9[0x62] = uVar6;
    iVar7 = func_0x020f2998(iVar8,3);
    Sprite_SetAnimCtrlSeq(puVar9[0x62],iVar7 + 0xc);
    uVar6 = Sprite_CreateAffine(auStack_44);
    puVar9[99] = uVar6;
    if (iVar8 < 8) {
      Sprite_SetAnimCtrlSeq(puVar9[99],iVar8 + 0x10);
    }
    uVar1 = param_2[1];
    sVar2 = *param_2;
    if (sVar2 == 0) {
      Sprite_SetDrawFlag(puVar9[0x61],0);
      Sprite_SetDrawFlag(puVar9[0x62],0);
      Sprite_SetDrawFlag(puVar9[99],0);
    }
    Sprite_SetDrawPriority(puVar9[0x61],2);
    Sprite_SetDrawPriority(puVar9[0x62],3);
    Sprite_SetDrawPriority(puVar9[99],1);
    ov96_021FC248(param_1,iVar8,iStack_64);
    Sprite_SetDrawFlag(puVar9[99],1);
    uVar6 = GetMonIconNaixEx(sVar2,0,uVar1 & 0xff);
    NARC_ReadWholeMember(uVar4,uVar6,uVar5);
    func_0x020b70f4(uVar5,&iStack_48);
    cVar3 = GetMonIconPaletteEx(sVar2,uVar1 & 0xff,0);
    func_0x020d2894(*(undefined4 *)(iStack_48 + 0x14),0x200);
    func_0x020cfecc(*(undefined4 *)(iStack_48 + 0x14),iStack_60,0x200);
    Sprite_SetPaletteOverride(puVar9[0x61],cVar3 + '\x03');
    iStack_60 = iStack_60 + 0x200;
    iVar8 = iVar8 + 1;
    iStack_64 = iStack_64 + 0x20;
    puVar9 = puVar9 + 4;
    param_2 = param_2 + 2;
  } while (iVar8 < 0xc);
  Heap_Free(uVar5);
  NARC_Delete(uVar4);
  return;
}

