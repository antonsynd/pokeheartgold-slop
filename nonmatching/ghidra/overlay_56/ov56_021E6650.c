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
undefined4 NNS_G2dGetUnpackedPaletteData();
undefined4 LoadUserFrameGfx2(void *, int, unsigned short, unsigned char, unsigned char, int);
void * PaletteData_Init(int);
undefined4 PaletteData_LoadNarc(void *, int, int, int, int, unsigned int, unsigned short);
undefined4 Heap_Free(void *);
undefined4 BG_LoadCharTilesData(void *, unsigned char, void *, unsigned int, unsigned int);
undefined4 PaletteData_LoadPalette(void *, void *, int, unsigned short, unsigned short);
undefined4 NARC_GetMemberSize(void *, unsigned int);
undefined4 LoadUserFrameGfx1(void *, int, unsigned short, unsigned char, unsigned char, int);
void * Heap_Alloc(int, unsigned int);
undefined4 BG_LoadPlttData(unsigned int, void *, unsigned short, unsigned short);
undefined4 PaletteData_BlendPalette(void *, int, unsigned short, unsigned short, unsigned char, unsigned short);
undefined4 PaletteData_AllocBuffers(void *, int, unsigned int, int);
void * NARC_New(int, int);
undefined4 PaletteData_SetAutoTransparent(void *, int);
undefined4 NARC_ReadWholeMember(void *, unsigned int, void *);
void * Heap_AllocAtEnd(int, unsigned int);
undefined4 NNS_G2dGetUnpackedCharacterData(void *, void *);
undefined4 PaletteData_PushTransparentBuffers(void *);
undefined4 CopyToBgTilemapRect(void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, void *, unsigned char, unsigned char, unsigned char, unsigned char);
undefined4 ScheduleBgTilemapBufferTransfer(void *, unsigned char);
undefined4 NARC_Delete(void *);
undefined4 NNS_G2dGetUnpackedScreenData(void *, void *);
void * SysTask_CreateOnMainQueue(void *, void *, unsigned int);
undefined4 FillBgTilemapRect(void *, unsigned char, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char);

void ov56_021E6650(int *param_1)

{
  undefined *puVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  ushort *puVar5;
  uint uVar6;
  int iStack_1c;
  int iStack_18;
  
  uVar6 = (uint)*(byte *)(param_1[7] + 0x13);
  puVar1 = NARC_New(0x4f,*param_1);
  LoadUserFrameGfx1((undefined *)param_1[6],0,1,4,0,*param_1);
  LoadUserFrameGfx2((undefined *)param_1[6],0,10,6,*(byte *)((int)param_1 + 0xb),*param_1);
  uVar2 = NARC_GetMemberSize(puVar1,uVar6 + 0xc);
  puVar3 = Heap_AllocAtEnd(*param_1,uVar2);
  NARC_ReadWholeMember(puVar1,uVar6 + 0xc,puVar3);
  NNS_G2dGetUnpackedCharacterData(puVar3,(undefined *)&iStack_18);
  BG_LoadCharTilesData
            ((undefined *)param_1[6],1,*(undefined **)(iStack_18 + 0x14),*(uint *)(iStack_18 + 0x10)
             ,0);
  BG_LoadCharTilesData
            ((undefined *)param_1[6],4,*(undefined **)(iStack_18 + 0x14),*(uint *)(iStack_18 + 0x10)
             ,0);
  Heap_Free(puVar3);
  uVar2 = NARC_GetMemberSize(puVar1,uVar6);
  puVar3 = Heap_AllocAtEnd(*param_1,uVar2);
  NARC_ReadWholeMember(puVar1,uVar6,puVar3);
  NNS_G2dGetUnpackedPaletteData(puVar3,(undefined *)&iStack_1c);
  BG_LoadPlttData(4,*(undefined **)(iStack_1c + 0xc),(ushort)*(undefined4 *)(iStack_1c + 8),0);
  puVar4 = PaletteData_Init(*param_1);
  param_1[0xc] = (int)puVar4;
  PaletteData_AllocBuffers(puVar4,0,0xe0,*param_1);
  PaletteData_AllocBuffers((undefined *)param_1[0xc],2,0x60,*param_1);
  PaletteData_LoadPalette((undefined *)param_1[0xc],*(undefined **)(iStack_1c + 0xc),0,0,0x60);
  if ((char)param_1[3] == '\x01') {
    PaletteData_LoadPalette
              ((undefined *)param_1[0xc],(undefined *)(*(int *)(iStack_1c + 0xc) + 0x60),0,0x10,0x20
              );
  }
  PaletteData_LoadNarc((undefined *)param_1[0xc],0x14,0,*param_1,2,0x60,0);
  PaletteData_LoadNarc((undefined *)param_1[0xc],0x10,7,*param_1,0,0x20,0x30);
  PaletteData_LoadNarc((undefined *)param_1[0xc],0x10,8,*param_1,0,0x20,0x50);
  PaletteData_LoadNarc((undefined *)param_1[0xc],0x26,0x19,*param_1,0,0x20,0x40);
  PaletteData_LoadNarc
            ((undefined *)param_1[0xc],0x26,*(byte *)((int)param_1 + 0xb) + 0x1a,*param_1,0,0x20,
             0x60);
  PaletteData_BlendPalette((undefined *)param_1[0xc],0,0,0x70,0x10,0);
  PaletteData_BlendPalette((undefined *)param_1[0xc],2,0,0x30,0x10,0);
  PaletteData_SetAutoTransparent((undefined *)param_1[0xc],1);
  PaletteData_PushTransparentBuffers((undefined *)param_1[0xc]);
  Heap_Free(puVar3);
  uVar2 = NARC_GetMemberSize(puVar1,uVar6 + 0x18);
  puVar3 = Heap_Alloc(*param_1,uVar2);
  param_1[0xf] = (int)puVar3;
  NARC_ReadWholeMember(puVar1,uVar6 + 0x18,(undefined *)param_1[0xf]);
  NNS_G2dGetUnpackedScreenData((undefined *)param_1[0xf],(undefined *)(param_1 + 0x11));
  uVar2 = NARC_GetMemberSize(puVar1,0x24);
  puVar3 = Heap_Alloc(*param_1,uVar2);
  param_1[0x10] = (int)puVar3;
  NARC_ReadWholeMember(puVar1,0x24,(undefined *)param_1[0x10]);
  NNS_G2dGetUnpackedScreenData((undefined *)param_1[0x10],(undefined *)(param_1 + 0x12));
  NARC_Delete(puVar1);
  FillBgTilemapRect((undefined *)param_1[6],4,0x2001,0,0,0x20,0x20,0x11);
  puVar5 = (ushort *)param_1[0x11];
  CopyToBgTilemapRect((undefined *)param_1[6],3,0,0,0x20,0x18,(undefined *)(puVar5 + 6),0,0,
                      (byte)((*puVar5 & 0x7ff) >> 3),(byte)((puVar5[1] & 0x7ff) >> 3));
  ScheduleBgTilemapBufferTransfer((undefined *)param_1[6],3);
  ScheduleBgTilemapBufferTransfer((undefined *)param_1[6],4);
  if ((char)param_1[3] != '\0') {
    puVar5 = (ushort *)param_1[0x12];
    CopyToBgTilemapRect((undefined *)param_1[6],2,0,0,0x20,0x18,(undefined *)(puVar5 + 6),0,0,
                        (byte)((*puVar5 & 0x7ff) >> 3),(byte)((puVar5[1] & 0x7ff) >> 3));
    ScheduleBgTilemapBufferTransfer((undefined *)param_1[6],2);
    *(undefined1 *)(param_1 + 5) = 0;
    *(undefined1 *)((int)param_1 + 0x15) = 0;
    SysTask_CreateOnMainQueue((undefined *)0x21e63fd,(undefined *)param_1,0);
    param_1[0xd] = 0x21e5d41;
    param_1[0xe] = 0x21e5d35;
  }
  return;
}

