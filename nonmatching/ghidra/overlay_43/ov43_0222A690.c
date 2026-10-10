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
undefined4 GF_AssertFail(void);
void * AddCellOrAnimResObjFromOpenNarc(void *, void *, int, int, int, int, int);
undefined4 ObjCharTransfer_ClearBuffers(void);
undefined4 OamManager_Create(int, int, int, int, int, int, int, int, int);
undefined4 ObjPlttTransfer_Reset(void);
void * G2dRenderer_Init(int, void *, int);
undefined4 SpriteTransfer_CreatePlttTransferTask(void *);
undefined4 SpriteTransfer_CreateCharTransferTask_AllocAtEnd(void *);
undefined4 ObjPlttTransfer_Init(int, int);
void * AddPlttResObjFromOpenNarc(void *, void *, int, int, int, int, int, int);
undefined4 GF_CreateVramTransferManager(unsigned int, int);
void * AddCharResObjFromOpenNarc(void *, void *, int, int, int, int, int);
void * Create2DGfxResObjMan(int, int, int);
undefined4 NNS_G2dInitOamManagerModule(void);
undefined4 sub_0200A740(void *);
undefined4 ObjCharTransfer_InitEx(void *, int, int);
undefined4 sub_0200B27C(void *, void *, int, void *);
extern undefined ov43_0222F0FC;
undefined4 CreateSpriteResourcesHeader(void *, int, int, int, int, int, int, int, int, void *, void *, void *, void *, void *, void *);

void ov43_0222A690(int param_1,int param_2)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  int iStack_18;

  NNS_G2dInitOamManagerModule();
  GF_CreateVramTransferManager(0x10,param_2);
  OamManager_Create(0,0x7e,0,0x1e,0,0x7e,0,0x1e,param_2);
  uStack_24 = 0x40;
  uStack_20 = 0x14000;
  uStack_1c = 0;
  iStack_18 = param_2;
  ObjCharTransfer_InitEx((undefined *)&uStack_24,0x10,0x10);
  ObjPlttTransfer_Init(0x40,param_2);
  ObjCharTransfer_ClearBuffers();
  ObjPlttTransfer_Reset();
  puVar1 = G2dRenderer_Init(0x40,(undefined *)(param_1 + 0xbc),param_2);
  *(undefined **)(param_1 + 4) = puVar1;
  sub_0200B27C((undefined *)(param_1 + 8),&ov43_0222F0FC,1,(undefined *)(param_1 + 0xbc));
  iVar2 = 0;
  iVar3 = param_1;
  do {
    puVar1 = Create2DGfxResObjMan(0x40,iVar2,param_2);
    *(undefined **)(iVar3 + 0x1e4) = puVar1;
    iVar2 = iVar2 + 1;
    iVar3 = iVar3 + 4;
  } while (iVar2 < 4);
  puVar1 = AddCharResObjFromOpenNarc
                     (*(undefined **)(param_1 + 0x1e4),*(undefined **)(param_1 + 0x58),1,1,100,1,
                      param_2);
  *(undefined **)(param_1 + 0xac) = puVar1;
  puVar1 = AddPlttResObjFromOpenNarc
                     (*(undefined **)(param_1 + 0x1e8),*(undefined **)(param_1 + 0x58),0,0,100,1,5,
                      param_2);
  *(undefined **)(param_1 + 0xb0) = puVar1;
  puVar1 = AddCellOrAnimResObjFromOpenNarc
                     (*(undefined **)(param_1 + 0x1ec),*(undefined **)(param_1 + 0x58),2,1,100,2,
                      param_2);
  *(undefined **)(param_1 + 0xb4) = puVar1;
  puVar1 = AddCellOrAnimResObjFromOpenNarc
                     (*(undefined **)(param_1 + 0x1f0),*(undefined **)(param_1 + 0x58),3,1,100,3,
                      param_2);
  *(undefined **)(param_1 + 0xb8) = puVar1;
  iVar3 = SpriteTransfer_CreateCharTransferTask_AllocAtEnd(*(undefined **)(param_1 + 0xac));
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  iVar3 = SpriteTransfer_CreatePlttTransferTask(*(undefined **)(param_1 + 0xb0));
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  sub_0200A740(*(undefined **)(param_1 + 0xac));
  sub_0200A740(*(undefined **)(param_1 + 0xb0));
  CreateSpriteResourcesHeader
            ((undefined *)(param_1 + 0x88),100,100,100,100,-1,-1,0,0,
             *(undefined **)(param_1 + 0x1e4),*(undefined **)(param_1 + 0x1e8),
             *(undefined **)(param_1 + 0x1ec),*(undefined **)(param_1 + 0x1f0),(undefined *)0x0,
             (undefined *)0x0);
  return;
}

