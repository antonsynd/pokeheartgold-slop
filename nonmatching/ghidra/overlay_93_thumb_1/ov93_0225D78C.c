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
undefined4 NewString_ReadMsgData();
undefined4 SpriteSystem_LoadPaletteBufferFromOpenNarc();
undefined4 ov93_02262250();
undefined4 ov93_02261EB8();
undefined4 ov93_02262230();
undefined4 FontID_String_GetWidth();
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc();
undefined4 func_0x0200d4a4() __asm__("sub_0200D4A4");
undefined4 ov93_02262344();
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc();
undefined4 func_0x0200d704() __asm__("sub_0200D704");
undefined4 ov93_02261FC8();
undefined4 func_0x0200d644() __asm__("sub_0200D644");
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc();
undefined4 String_Delete();
undefined4 func_0x0200d6d4() __asm__("sub_0200D6D4");

void ov93_0225D78C(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uStack_1c;

  SpriteSystem_LoadPaletteBufferFromOpenNarc
            (*(undefined4 *)(param_1 + 0x8c),2,*(undefined4 *)(param_1 + 0x24),
             *(undefined4 *)(param_1 + 0x28),param_2,0x1b,0,1,1,0x2713);
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x80),2);
  iVar2 = FontID_String_GetWidth(0,uVar1,0);
  uVar3 = 0x1eU - iVar2 >> 1;
  ov93_02261EB8(*(undefined4 *)(param_1 + 0x2c),*(undefined4 *)(param_1 + 0x28),
                *(undefined4 *)(param_1 + 0x90),param_1 + 0x169c,uVar1,0,0xe0f00,0,0x2713,
                uVar3 + 0x2a,0xa8,0,1,0xc,2);
  String_Delete(uVar1);
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x80),0);
  uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x80),1);
  uStack_1c = 0;
  iVar5 = param_1 + 0x15ac;
  iVar2 = param_1 + 0x15c0;
  do {
    uVar3 = uVar3 + 6;
    ov93_02261EB8(*(undefined4 *)(param_1 + 0x2c),*(undefined4 *)(param_1 + 0x28),
                  *(undefined4 *)(param_1 + 0x90),iVar5,uVar1,0,0xe0f00,0,0x2713,uVar3,0xa8,0,3,0xc,
                  10);
    ov93_02261EB8(*(undefined4 *)(param_1 + 0x2c),*(undefined4 *)(param_1 + 0x28),
                  *(undefined4 *)(param_1 + 0x90),iVar2,uVar4,0,0xe0f00,0,0x2713,uVar3,0xa8,0,3,0xc,
                  10);
    uStack_1c = uStack_1c + 1;
    iVar5 = iVar5 + 0x28;
    iVar2 = iVar2 + 0x28;
  } while (uStack_1c < 6);
  String_Delete(uVar1);
  String_Delete(uVar4);
  ov93_02261FC8(param_1 + 0x15a8);
  ov93_02262250(param_1);
  SpriteSystem_LoadPaletteBufferFromOpenNarc
            (*(undefined4 *)(param_1 + 0x8c),2,*(undefined4 *)(param_1 + 0x24),
             *(undefined4 *)(param_1 + 0x28),param_2,0x1b,0,1,1,0x2714);
  SpriteSystem_LoadCharResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),param_2,0x18,0,1,0x2712
            );
  SpriteSystem_LoadCellResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),param_2,0x1a,0,0x2712);
  SpriteSystem_LoadAnimResObjFromOpenNarc
            (*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),param_2,0x19,0,0x2712);
  uVar1 = ov93_02262230(param_1);
  *(undefined4 *)(param_1 + 0x15a8) = uVar1;
  func_0x0200d644(*(undefined4 *)(param_1 + 0x8c),2,*(undefined4 *)(param_1 + 0x24),
                  *(undefined4 *)(param_1 + 0x28),200,0x14,0,1,1,0x2712);
  func_0x0200d4a4(*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),200,0x15,0,1,
                  0x2711);
  func_0x0200d6d4(*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),200,0x16,0,0x2711)
  ;
  func_0x0200d704(*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),200,0x17,0,0x2711)
  ;
  uVar1 = ov93_02262344(param_1);
  *(undefined4 *)(param_1 + 0x174c) = uVar1;
  return;
}

