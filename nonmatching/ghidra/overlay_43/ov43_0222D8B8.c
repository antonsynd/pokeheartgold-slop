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
undefined4 ov43_0222AB5C();
undefined4 GfGfxLoader_GXLoadPal();
undefined4 FillWindowPixelBuffer();
undefined4 ov43_0222AB94();
undefined4 BufferIntegerAsString();
undefined4 ov43_0222ECD4();
undefined4 ScheduleWindowCopyToVram();
undefined4 GetUnionRoomAvatarAttrBySprite();
undefined4 sub_020141C4();
undefined4 Heap_Alloc();
undefined4 Heap_Free();
undefined4 BgTilemapRectChangePalette();
undefined4 func_0x02070d84() __asm__("sub_02070D84");
undefined4 sub_0202C090();
undefined4 func_0x0201d9d8() __asm__("sub_0201D9D8");
undefined4 sub_0202C6F4();
undefined4 ov43_0222AB20();

void ov43_0222D8B8(int param_1,int param_2,undefined4 *param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 auStack_30 [2];
  undefined4 uStack_28;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  uVar1 = sub_0202C6F4(*(undefined4 *)(param_2 + 4));
  iVar2 = sub_0202C090(uVar1,*(undefined1 *)(param_2 + *(char *)(param_2 + 0xb) + 0x18),8);
  uVar5 = 0;
  iVar3 = param_1 + 0x118;
  do {
    FillWindowPixelBuffer(iVar3,0);
    uVar5 = uVar5 + 1;
    iVar3 = iVar3 + 0x10;
  } while (uVar5 < 8);
  BufferIntegerAsString
            (param_3[0x14],0,*(byte *)(param_2 + *(char *)(param_2 + 0xb) + 0x38) + 1,2,0,1);
  BufferIntegerAsString(param_3[0x14],1,*(undefined4 *)(param_2 + 0x14),2,0,1);
  ov43_0222ECD4(param_1 + 0x118,param_2,param_3,0x12,0,0,0xf0200);
  if (iVar2 == 0) {
    uVar4 = 0x50600;
  }
  else if (iVar2 == 1) {
    uVar4 = 0x30400;
  }
  else {
    uVar4 = 0x10200;
  }
  ov43_0222AB20(param_3,*(undefined4 *)(param_2 + 4),
                *(undefined1 *)(param_2 + *(char *)(param_2 + 0xb) + 0x18),param_4);
  ov43_0222ECD4(param_1 + 0x138,param_2,param_3,0x11,0,0,uVar4);
  ov43_0222ECD4(param_1 + 0x178,param_2,param_3,0xf,0,0,0xf0200);
  ov43_0222AB5C(param_3,*(undefined4 *)(param_2 + 4),
                *(undefined1 *)(param_2 + *(char *)(param_2 + 0xb) + 0x18),param_4);
  ov43_0222ECD4(param_1 + 0x148,param_2,param_3,0x10,0,0,0x10200);
  ov43_0222ECD4(param_1 + 0x188,param_2,param_3,0x1b,0,0,0xf0200);
  iVar3 = ov43_0222AB94(param_3,*(undefined4 *)(param_2 + 4),
                        *(undefined1 *)(param_2 + *(char *)(param_2 + 0xb) + 0x18));
  if (iVar3 != 0) {
    ov43_0222ECD4(param_1 + 0x158,param_2,param_3,0x1c,0,0,0x10200);
  }
  uVar1 = sub_0202C090(uVar1,*(undefined1 *)(param_2 + *(char *)(param_2 + 0xb) + 0x18),7);
  uVar1 = GetUnionRoomAvatarAttrBySprite(iVar2,uVar1,1);
  func_0x02070d84(uVar1,2,auStack_30);
  uVar1 = Heap_Alloc(param_4,0xc80);
  sub_020141C4(auStack_30[0],uStack_1c,param_4,0,0,10,10,uVar1);
  func_0x0201d9d8(param_1 + 0x168,uVar1,0,0,0x50,0x50,0,0,0x50,0x50);
  Heap_Free(uVar1);
  GfGfxLoader_GXLoadPal(auStack_30[0],uStack_28,4,0x1e0,0x20,param_4);
  BgTilemapRectChangePalette(*param_3,4,4,4,10,10,0xf);
  uVar5 = 0;
  param_1 = param_1 + 0x118;
  do {
    ScheduleWindowCopyToVram(param_1);
    uVar5 = uVar5 + 1;
    param_1 = param_1 + 0x10;
  } while (uVar5 < 8);
  return;
}

