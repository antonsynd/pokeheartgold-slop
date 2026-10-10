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
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc(void *, int, void *, int, unsigned int, unsigned int, int, int);
undefined4 SpriteSystem_LoadCellResObj(void *, void *, int, int, int, int);
unsigned char SpriteSystem_LoadPaletteBuffer(void *, int, void *, void *, int, int, int, int, int, int);
undefined4 SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(void *, void *, int, int, int, int, int);
undefined4 ov40_0222DB30();
undefined4 SpriteSystem_LoadAnimResObj(void *, void *, int, int, int, int);
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc(void *, void *, void *, int, int, int, int);
unsigned char sub_020315D0(void *);
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc(void *, void *, void *, int, int, int);
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc(void *, int, void *, int, unsigned int, unsigned int, int, int);
unsigned char SpriteSystem_LoadPaletteBufferFromOpenNarc(void *, int, void *, void *, void *, int, int, int, int, int);
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc(void *, void *, void *, int, int, int);

void ov40_02233238(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  undefined *puVar2;
  int iVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  int iVar8;
  int *piStack_4c;
  int *piStack_48;
  int aiStack_40 [11];

  puVar5 = *(undefined **)(param_1 + 0x24);
  puVar7 = *(undefined **)(param_1 + 0x14);
  puVar6 = *(undefined **)(param_1 + 0x18);
  puVar4 = *(undefined **)(param_1 + 0x1c);
  puVar2 = *(undefined **)(param_1 + 0x28);
  aiStack_40[10] = param_4;
  GfGfxLoader_LoadCharDataFromOpenNarc(puVar7,0x3e,puVar5,6,0,0,0,0x6d);
  GfGfxLoader_LoadScrnDataFromOpenNarc(puVar7,0x44,puVar5,6,0,0,0,0x6d);
  iVar3 = ov40_0222DB30(param_1,0);
  SpriteSystem_LoadPaletteBufferFromOpenNarc(puVar2,3,puVar6,puVar4,puVar7,iVar3,0,1,2,0x726c);
  SpriteSystem_LoadCharResObjFromOpenNarc(puVar6,puVar4,puVar7,0x42,0,2,0x726c);
  SpriteSystem_LoadCellResObjFromOpenNarc(puVar6,puVar4,puVar7,0x47,0,0x726c);
  SpriteSystem_LoadAnimResObjFromOpenNarc(puVar6,puVar4,puVar7,0x48,0,0x726c);
  iVar3 = ov40_0222DB30(param_1,1);
  SpriteSystem_LoadPaletteBufferFromOpenNarc(puVar2,2,puVar6,puVar4,puVar7,iVar3,0,6,1,0x6e7a);
  SpriteSystem_LoadCharResObjFromOpenNarc(puVar6,puVar4,puVar7,0x40,0,1,0x6e7a);
  SpriteSystem_LoadCellResObjFromOpenNarc(puVar6,puVar4,puVar7,0x26,0,0x6e7a);
  SpriteSystem_LoadAnimResObjFromOpenNarc(puVar6,puVar4,puVar7,0x27,0,0x6e7a);
  piStack_48 = aiStack_40 + 5;
  aiStack_40[5] = 0x7d;
  aiStack_40[6] = 0x123;
  aiStack_40[7] = 0x129;
  aiStack_40[8] = 0x127;
  aiStack_40[9] = 0x125;
  piStack_4c = aiStack_40;
  aiStack_40[0] = 0x7e;
  aiStack_40[1] = 0x124;
  aiStack_40[2] = 0x12a;
  aiStack_40[3] = 0x128;
  iVar3 = 0;
  aiStack_40[4] = 0x126;
  do {
    if (iVar3 == 3) {
      SpriteSystem_LoadPaletteBufferFromOpenNarc(puVar2,2,puVar6,puVar4,puVar7,0x5c,0,1,1,0x4708);
      SpriteSystem_LoadCharResObjFromOpenNarc(puVar6,puVar4,puVar7,0x5b,0,1,0x4708);
    }
    else {
      SpriteSystem_LoadPaletteBuffer(puVar2,2,puVar6,puVar4,0xb3,*piStack_48,0,1,1,iVar3 + 0x4705);
      SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType
                (puVar6,puVar4,0xb3,*piStack_4c,0,1,iVar3 + 0x4705);
    }
    iVar3 = iVar3 + 1;
    piStack_48 = piStack_48 + 1;
    piStack_4c = piStack_4c + 1;
  } while (iVar3 < 5);
  SpriteSystem_LoadCellResObj(puVar6,puVar4,0xb3,9,0,0x4705);
  SpriteSystem_LoadAnimResObj(puVar6,puVar4,0xb3,10,0,0x4705);
  SpriteSystem_LoadCellResObjFromOpenNarc(puVar6,puVar4,puVar7,0x59,0,0x4706);
  SpriteSystem_LoadAnimResObjFromOpenNarc(puVar6,puVar4,puVar7,0x5a,0,0x4706);
  iVar3 = 0xd;
  iVar8 = 0xe;
  bVar1 = sub_020315D0(*(undefined **)(param_1 + 0x88c));
  puVar2 = *(undefined **)(param_1 + 0x18);
  puVar4 = *(undefined **)(param_1 + 0x1c);
  if (bVar1 != 0) {
    iVar3 = 0xf;
    iVar8 = 0x10;
  }
  SpriteSystem_LoadPaletteBuffer
            (*(undefined **)(param_1 + 0x28),2,puVar2,puVar4,0xb3,iVar3,0,1,1,0x2869f);
  SpriteSystem_LoadCellResObj(puVar2,puVar4,0xb3,9,0,0x2869f);
  SpriteSystem_LoadAnimResObj(puVar2,puVar4,0xb3,10,0,0x2869f);
  SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(puVar2,puVar4,0xb3,iVar8,0,1,0x2869f);
  return;
}

