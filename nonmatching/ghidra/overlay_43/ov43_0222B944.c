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
undefined4 func_0x02227060() __asm__("sub_02227060");
undefined4 String_Delete();
undefined4 func_0x02014918() __asm__("sub_02014918");
undefined4 NewString_ReadMsgData();
undefined4 func_0x02014960() __asm__("sub_02014960");
undefined4 func_0x02227228() __asm__("sub_02227228");
undefined4 Sprite_SetDrawFlag();
undefined4 String_New();
undefined4 ov43_0222C788();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 ov43_0222A24C();
undefined4 Sprite_CreateAffine();
extern undefined ov43_0222EEB0;
extern undefined ov43_0222EEE0;

void ov43_0222B944(int param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 **ppuVar4;
  int iVar5;
  undefined4 *puVar6;
  code *pcVar7;
  int iVar8;
  int iStack_50;
  undefined4 *puStack_4c;
  int iStack_48;
  undefined4 *apuStack_44 [11];
  undefined4 uStack_18;

  pcVar7 = (code *)0x222ed74;
  iVar8 = 0x222ee08;
  iStack_48 = 0;
  iVar5 = param_1 + 8;
  do {
    ov43_0222C788(iVar5,param_3,iVar8,*(undefined2 *)pcVar7,param_4);
    pcVar7 = pcVar7 + 2;
    iStack_48 = iStack_48 + 1;
    iVar8 = iVar8 + 6;
    iVar5 = iVar5 + 0x38;
  } while (iStack_48 < 3);
  uVar1 = func_0x02227060(param_3[1],0,0x10,param_4);
  *(undefined4 *)(param_1 + 0xb4) = uVar1;
  func_0x02227228(*(undefined4 *)(param_1 + 0xb4),1,2,param_4);
  ov43_0222A24C(*param_3,param_1 + 0xb8,1,0x15,0x15,9,2,0xb,0x14f,0);
  uVar1 = NewString_ReadMsgData(param_3[0x15],7);
  AddTextPrinterParameterizedWithColor(param_1 + 0xb8,4,uVar1,0,0,0xff,0x10f00,0);
  String_Delete(uVar1);
  iStack_50 = 0;
  puStack_4c = (undefined4 *)&ov43_0222EEE0;
  iVar5 = param_1;
  do {
    uVar1 = func_0x02014918(4,param_4);
    *(undefined4 *)(iVar5 + 0xe4) = uVar1;
    iVar8 = 0;
    puVar6 = puStack_4c;
    do {
      func_0x02014960(*(undefined4 *)(iVar5 + 0xe4),param_3[0x15],*puVar6,puVar6[1]);
      iVar8 = iVar8 + 1;
      puVar6 = puVar6 + 2;
    } while (iVar8 < 4);
    iVar5 = iVar5 + 4;
    puStack_4c = puStack_4c + 8;
    iStack_50 = iStack_50 + 1;
  } while (iStack_50 < 2);
  ov43_0222A24C(*param_3,param_1 + 200,1,2,0x13,0x1b,4,0xb,0x161,0xf);
  uVar1 = String_New(0x80,param_4);
  puVar6 = (undefined4 *)&ov43_0222EEB0;
  *(undefined4 *)(param_1 + 0xd8) = uVar1;
  ppuVar4 = apuStack_44;
  iVar5 = 6;
  do {
    puVar2 = (undefined4 *)*puVar6;
    puVar3 = (undefined4 *)puVar6[1];
    puVar6 = puVar6 + 2;
    *ppuVar4 = puVar2;
    ppuVar4[1] = puVar3;
    ppuVar4 = ppuVar4 + 2;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  apuStack_44[0] = (undefined4 *)param_3[1];
  apuStack_44[1] = param_3 + 0x22;
  uStack_18 = param_4;
  uVar1 = Sprite_CreateAffine(apuStack_44);
  *(undefined4 *)(param_1 + 0xf8) = uVar1;
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0xf8),0);
  return;
}

