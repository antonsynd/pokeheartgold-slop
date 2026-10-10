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
undefined4 Sprite_SetDrawFlag();
undefined4 ReadMsgDataIntoString();
undefined4 ov65_0221D5FC();
undefined4 String_Delete();
undefined4 Party_GetMonByIndex();
undefined4 FillWindowPixelBuffer();
undefined4 func_0x02026464() __asm__("sub_02026464");
undefined4 ov65_0221F748();
undefined4 func_0x0207083c() __asm__("sub_0207083C");
undefined4 GetMonData();
undefined4 ov65_0221D648();
undefined4 ov65_0221CA64();
undefined4 Sprite_SetFlipMode();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov65_0221FB4C();
undefined4 String_New();
extern undefined ov65_0221FEA8;
extern undefined ov65_0221FEA4;
undefined4 func_0x02077d40() __asm__("sub_02077D40");
undefined4 ClearWindowTilemapAndCopyToVram();

void ov65_0221D674(int param_1,int param_2,undefined4 param_3,int param_4,int param_5)

{
  undefined2 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 *puVar6;

  uVar2 = Party_GetMonByIndex(param_3,param_4);
  iVar3 = func_0x0207083c(uVar2,2);
  puVar6 = (undefined4 *)(param_5 + 0x40c);
  Sprite_SetDrawFlag(puVar6[param_2],1);
  ov65_0221F748(puVar6[param_2],*(undefined4 *)(&ov65_0221FEA4 + param_2 * 0xc),
                iVar3 + *(int *)(&ov65_0221FEA8 + param_2 * 0xc) + 0xc0);
  if (param_2 == 0) {
    Sprite_SetFlipMode(*puVar6,*(undefined2 *)(param_5 + param_4 * 0x10 + 0x6a6));
  }
  ov65_0221CA64(param_5,param_2 + 2,*(undefined1 *)(param_5 + param_4 * 0x10 + 0x6a0));
  Sprite_SetDrawFlag(*(undefined4 *)(param_5 + (param_2 + 2) * 4 + 0x40c),1);
  ov65_0221D5FC(param_1 + (param_2 + 0x1a) * 0x10,param_3,param_4,9,6);
  iVar3 = (param_4 + param_2 * 6) * 0x10;
  iVar4 = ov65_0221D648(param_5 + 0x69c + iVar3,param_3,param_4,
                        *(undefined2 *)(param_5 + iVar3 + 0x6a4));
  if (*(char *)(param_5 + 0x6a1 + iVar3) != '\0') {
    iVar4 = 2;
  }
  if (iVar4 == 0) {
    iVar4 = (param_2 + 4) * 4;
    Sprite_SetDrawFlag(*(undefined4 *)(param_5 + 0x40c + iVar4),1);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_5 + 0x40c + iVar4),7);
  }
  else if (iVar4 == 1) {
    iVar4 = (param_2 + 4) * 4;
    Sprite_SetDrawFlag(*(undefined4 *)(param_5 + 0x40c + iVar4),1);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_5 + 0x40c + iVar4),6);
  }
  else if (iVar4 == 2) {
    Sprite_SetDrawFlag(*(undefined4 *)(param_5 + (param_2 + 4) * 4 + 0x40c),0);
  }
  if (*(char *)(param_5 + 0x6a1 + iVar3) == '\0') {
    uVar2 = String_New(10,0x1a);
    iVar3 = (param_2 + 0x1c) * 0x10;
    FillWindowPixelBuffer(param_1 + iVar3,0);
    ReadMsgDataIntoString(*(undefined4 *)(param_5 + 400),0x29,uVar2);
    ov65_0221FB4C(param_1 + iVar3,uVar2,9,0xff,6,0);
    uVar5 = Party_GetMonByIndex(param_3,param_4);
    uVar1 = GetMonData(uVar5,0xa1,0);
    func_0x02026464(uVar2,uVar1,3,0,1);
    ov65_0221FB4C(param_1 + iVar3,uVar2,9,0,0x1e,0);
    String_Delete(uVar2);
  }
  else {
    ClearWindowTilemapAndCopyToVram(param_1 + (param_2 + 0x1c) * 0x10);
  }
  ov65_0221FB4C(param_1 + (param_2 + 0x1e) * 0x10,*(undefined4 *)(param_5 + 0x19c),7,0,3,0);
  uVar2 = Party_GetMonByIndex(param_3,param_4);
  uVar1 = GetMonData(uVar2,6,0);
  iVar3 = (param_2 + 0x20) * 0x10;
  FillWindowPixelBuffer(param_1 + iVar3,0);
  uVar2 = String_New(0x14,0x1a);
  func_0x02077d40(uVar2,uVar1,0x1a);
  ov65_0221FB4C(param_1 + iVar3,uVar2,9,0,3,0);
  String_Delete(uVar2);
  return;
}

