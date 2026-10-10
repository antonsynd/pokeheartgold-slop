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
undefined4 ov48_0225A668();
undefined4 func_0x02024714() __asm__("sub_02024714");
undefined4 Sprite_SetAnimActiveFlag();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 GF_AssertFail();
undefined4 SpriteTransfer_CreateCharTransferTask_AllocAtEnd();
undefined4 CreateSpriteResourcesHeader();
undefined4 func_0x0200a480() __asm__("sub_0200A480");
undefined4 func_0x02024868() __asm__("sub_02024868");
undefined4 func_0x0200b00c() __asm__("sub_0200B00C");
undefined4 ov48_0225AD38();
undefined4 func_0x0200a540() __asm__("sub_0200A540");
undefined4 func_0x0200a740() __asm__("sub_0200A740");
undefined4 func_0x0200a3c8() __asm__("sub_0200A3C8");

void ov48_0225AAAC(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iStack_68;
  int iStack_64;
  int iStack_60;
  undefined4 uStack_5c;
  undefined1 *puStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined1 auStack_3c [36];
  undefined4 uStack_18;
  
  uStack_5c = 0;
  puStack_58 = (undefined1 *)0x0;
  uStack_54 = 0;
  uStack_50 = 0;
  uStack_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  uStack_40 = 0;
  uStack_18 = param_4;
  func_0x020e5b44(param_1,0,300);
  *(undefined2 *)(param_1 + 0x30) = 2;
  *(undefined2 *)(param_1 + 0x32) = 0x80;
  uStack_5c = *(undefined4 *)(param_2 + 4);
  puStack_58 = auStack_3c;
  uStack_48 = 0x40;
  uStack_44 = 2;
  uStack_40 = param_4;
  uVar1 = func_0x0200a480(*(undefined4 *)(param_2 + 0x134),*(undefined4 *)(param_2 + 0x144),0x14,0,0
                          ,2,0xc,param_4);
  *(undefined4 *)(param_1 + 0x70) = uVar1;
  iVar2 = func_0x0200b00c();
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  func_0x0200a740(*(undefined4 *)(param_1 + 0x70));
  iStack_60 = 0x15;
  iStack_64 = 0x16;
  iVar4 = 0;
  iStack_68 = 0x17;
  iVar2 = param_1;
  iVar5 = param_1;
  do {
    uVar1 = func_0x0200a3c8(*(undefined4 *)(param_2 + 0x130),*(undefined4 *)(param_2 + 0x144),
                            iStack_60,0,iVar4,2,param_4);
    *(undefined4 *)(iVar2 + 0x6c) = uVar1;
    uVar1 = func_0x0200a540(*(undefined4 *)(param_2 + 0x138),*(undefined4 *)(param_2 + 0x144),
                            iStack_64,0,iVar4,2,param_4);
    *(undefined4 *)(iVar2 + 0x74) = uVar1;
    uVar1 = func_0x0200a540(*(undefined4 *)(param_2 + 0x13c),*(undefined4 *)(param_2 + 0x144),
                            iStack_68,0,iVar4,3,param_4);
    *(undefined4 *)(iVar2 + 0x78) = uVar1;
    iVar3 = SpriteTransfer_CreateCharTransferTask_AllocAtEnd(*(undefined4 *)(iVar2 + 0x6c));
    if (iVar3 == 0) {
      GF_AssertFail();
    }
    func_0x0200a740(*(undefined4 *)(iVar2 + 0x6c));
    CreateSpriteResourcesHeader
              (auStack_3c,iVar4,0,iVar4,iVar4,0xffffffff,0xffffffff,0,1,
               *(undefined4 *)(param_2 + 0x130),*(undefined4 *)(param_2 + 0x134),
               *(undefined4 *)(param_2 + 0x138),*(undefined4 *)(param_2 + 0x13c),0,0);
    uVar1 = func_0x02024714(&uStack_5c);
    *(undefined4 *)(iVar5 + 0x3c) = uVar1;
    Sprite_SetAnimActiveFlag(uVar1,1);
    func_0x02024868(*(undefined4 *)(iVar5 + 0x3c),0x1000);
    iVar4 = iVar4 + 1;
    iStack_60 = iStack_60 + 3;
    iVar2 = iVar2 + 0x10;
    iStack_64 = iStack_64 + 3;
    iVar5 = iVar5 + 4;
    iStack_68 = iStack_68 + 3;
  } while (iVar4 < 0xc);
  ov48_0225AD38(param_1);
  ov48_0225A668(param_3,0,0);
  return;
}

