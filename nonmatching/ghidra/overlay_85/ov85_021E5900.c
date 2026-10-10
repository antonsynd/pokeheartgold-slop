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
undefined4 OverlayManager_GetArgs();
undefined4 sub_02021148(int);
void * OverlayManager_CreateAndGetData(void *, unsigned int, int);
void * NARC_New(int, int);
undefined4 sub_020210BC(void);
undefined4 HBlankInterruptDisable(void);
void * SaveArray_Party_Get(void *);
undefined4 sub_020398D4(signed char, signed char);
undefined4 ov85_021E752C();
undefined4 ov85_021E7650();
undefined4 Heap_Create(int, int, unsigned int);
undefined4 Main_SetVBlankIntrCB(void *, void *);
undefined4 sub_0201A728(int);
void * func_0x020e5b44(void *, int, unsigned int) __asm__("sub_020E5B44");
undefined4 GF_CreateVramTransferManager(unsigned int, int);
unsigned short func_0x02004a90(void) __asm__("sub_02004A90");
undefined4 ov85_021E678C();
unsigned short sub_0203769C(void);
extern undefined ov85_021EA788;
undefined4 ov85_021E80E0();
undefined4 ov85_021E7F74();
undefined4 ov85_021E82F8();
undefined4 ov85_021E7E3C();
undefined4 ov85_021E83E0();
undefined4 ov85_021E7D08();
undefined4 BeginNormalPaletteFade(int, int, int, unsigned short, int, int, int);

undefined4 ov85_021E5900(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  
  iVar1 = OverlayManager_GetArgs();
  sub_020398D4(1,1);
  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  sub_0201A728(2);
  Heap_Create(3,0x66,0x80000);
  iVar2 = OverlayManager_CreateAndGetData(param_1,0xdcc,0x66);
  func_0x020e5b44(iVar2,0,0xdcc);
  *(int *)(iVar1 + 0x34) = iVar2;
  *(int *)(iVar2 + 0xcc) = iVar1;
  *(undefined4 *)(iVar2 + 0xd0) = *(undefined4 *)(iVar1 + 0x30);
  uVar3 = SaveArray_Party_Get(*(undefined4 *)(*(int *)(iVar2 + 0xcc) + 0x1c));
  *(undefined4 *)(iVar2 + 0x24) = uVar3;
  uVar3 = NARC_New(0xbb,0x66);
  *(undefined4 *)(iVar2 + 0xd80) = uVar3;
  GF_CreateVramTransferManager(8,0x66);
  sub_020210BC();
  sub_02021148(4);
  ov85_021E678C(iVar2);
  Main_SetVBlankIntrCB(0x21e6765,iVar2);
  ov85_021E752C(iVar2);
  ov85_021E7650(iVar2);
  uVar5 = 0;
  iVar1 = 0;
  uVar4 = sub_0203769C();
  do {
    if ((1 << (uVar5 & 0xff) & *(uint *)(*(int *)(iVar2 + 0xcc) + 0xc)) != 0) {
      if (uVar5 == uVar4) break;
      iVar1 = iVar1 + 1;
    }
    uVar5 = uVar5 + 1;
  } while ((int)uVar5 < 5);
  *(uint *)(iVar2 + 0x114) =
       (uint)*(ushort *)(&ov85_021EA788 + iVar1 * 2 + *(int *)(*(int *)(iVar2 + 0xcc) + 8) * 10) <<
       0xc;
  uVar3 = func_0x02004a90();
  *(undefined4 *)(iVar2 + 0x1c) = uVar3;
  ov85_021E7D08(iVar2);
  ov85_021E7E3C(iVar2);
  ov85_021E7F74(iVar2);
  ov85_021E80E0(iVar2);
  ov85_021E82F8(iVar2);
  ov85_021E83E0(iVar2);
  BeginNormalPaletteFade(0,1,1,0,8,1,0x66);
  return 1;
}

