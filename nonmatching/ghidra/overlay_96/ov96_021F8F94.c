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
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetMatrix();
undefined4 ov96_021EB52C();
undefined4 ov96_021EB5B8();
undefined4 TextOBJ_SetSpritesDrawFlag();
undefined4 ov96_021EB408();
undefined4 PokeathlonCourse_GetPlayerProfileFromData();
undefined4 PlayerProfile_GetPlayerName_NewString();
undefined4 ov96_021F9134();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_SetDrawPriority();
undefined4 Sprite_SetPalIndexRespectVramOffset();
undefined4 String_Delete();
undefined4 ov96_021EB4F4();

void ov96_021F8F94(undefined4 *param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  int iStack_40;
  int iStack_34;
  int iStack_30;
  undefined4 *puStack_2c;
  undefined4 *puStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  iStack_24 = 0;
  iStack_30 = 0;
  iStack_34 = 8;
  do {
    uVar1 = ov96_021EB408(param_1[1],0,2,0x68,3);
    uStack_18 = 0;
    iStack_20 = iStack_30 << 0xc;
    iStack_1c = (param_3 + 0x10) * 0x1000;
    Sprite_SetMatrix(uVar1,&iStack_20);
    Sprite_SetAnimActiveFlag(uVar1,1);
    Sprite_SetAnimCtrlSeq(uVar1,0);
    Sprite_SetPalIndexRespectVramOffset(uVar1,iStack_24);
    Sprite_SetDrawPriority(uVar1,2);
    iVar5 = 0;
    iVar4 = iStack_34;
    do {
      uVar1 = ov96_021EB408(param_1[1],0,2,0x68,4);
      uStack_18 = 0;
      iStack_20 = iVar4 << 0xc;
      iStack_1c = (param_3 + 0x18) * 0x1000;
      Sprite_SetMatrix(uVar1,&iStack_20);
      Sprite_SetAnimActiveFlag(uVar1,1);
      Sprite_SetAnimCtrlSeq(uVar1,1);
      Sprite_SetDrawPriority(uVar1,1);
      iVar5 = iVar5 + 1;
      iVar4 = iVar4 + 0x10;
    } while (iVar5 < 3);
    iStack_30 = iStack_30 + 0x40;
    iStack_34 = iStack_34 + 0x40;
    iStack_24 = iStack_24 + 1;
  } while (iStack_24 < 4);
  iStack_40 = 0;
  puStack_28 = param_1 + 9;
  puStack_2c = param_1 + 0xd;
  puVar6 = param_1;
  do {
    uVar1 = ov96_021EB4F4(param_1[1],0x68,3);
    *puStack_28 = uVar1;
    ov96_021EB52C(uVar1,1,1);
    iVar4 = 0;
    puVar3 = puStack_28;
    do {
      uVar1 = ov96_021EB4F4(param_1[1],0x68,4);
      puVar3[1] = uVar1;
      ov96_021EB52C(uVar1,1,1);
      iVar4 = iVar4 + 1;
      puVar3 = puVar3 + 1;
    } while (iVar4 < 3);
    uVar1 = PokeathlonCourse_GetPlayerProfileFromData(param_2,iStack_40);
    uVar1 = PlayerProfile_GetPlayerName_NewString(uVar1,*param_1);
    uVar2 = ov96_021EB5B8(puVar6[9]);
    ov96_021F9134(param_1,param_1 + 3,uVar1,2,0,0xfffffff0,uVar2,puStack_2c);
    String_Delete(uVar1);
    TextOBJ_SetSpritesDrawFlag(puVar6[0xd],1);
    puVar6[0x12] = param_3 + 0x10;
    puVar6 = puVar6 + 10;
    puStack_28 = puStack_28 + 10;
    puStack_2c = puStack_2c + 10;
    iStack_40 = iStack_40 + 1;
  } while (iStack_40 < 4);
  return;
}

