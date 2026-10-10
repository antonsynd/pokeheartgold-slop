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
undefined4 ov95_021E5E90();
undefined4 Sound_SetSceneAndPlayBGM();
undefined4 ov95_021E623C();
undefined4 ov95_021E70BC();
undefined4 ov95_021E6838();
undefined4 Sound_Stop();
undefined4 ov95_021E6000();
undefined4 ov95_021E68A8();
undefined4 ov95_021E5C44();
undefined4 ov95_021E62A4();
undefined4 ov95_021E6900();
undefined4 ov95_021E6964();
undefined4 ov95_021E5BBC();
undefined4 ov95_021E67F0();
undefined4 ov95_021E5EF8();
undefined4 IsPaletteFadeFinished();
undefined4 ov95_021E5D44();
undefined4 ov95_021E62F0();
undefined4 ov95_021E5B7C();
undefined4 ov95_021E6184();
undefined4 TextPrinterCheckActive();
undefined4 IsFanfarePlaying();
undefined4 ov95_021E5B9C();
undefined4 SpriteSystem_DrawSprites();
undefined4 GetMonData();
undefined4 ov95_021E5E40();
undefined4 ov95_021E62E4();
undefined4 ov95_021E7208();
undefined4 ov95_021E5CAC();
undefined4 PlayFanfare();
undefined4 PlayCry();
undefined4 ov95_021E5EF0();
undefined4 Pokepic_IsAnimFinished();
undefined4 sub_02017068();
undefined4 ov95_021E5D34();
undefined4 IsCryFinished();
undefined4 ov95_021E7258();

undefined4 ov95_021E6314(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined2 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  iVar3 = param_1[0x18];
  uVar4 = 1;
  uStack_14 = param_4;
  switch(iVar3) {
  case 0:
    ov95_021E5D44(param_1[1],param_1[2]);
    ov95_021E5BBC(param_1[1],param_1[2],param_1[5]);
    ov95_021E5C44(param_1[1],param_1 + 6,1,2,0x13,0x1b,4,0x3b,0xe);
    ov95_021E5EF8(param_1);
    ov95_021E6000(param_1);
    ov95_021E70BC(param_1[0x22],param_1[2],21000,0x5209,0x520a,0x520b);
    ov95_021E623C(param_1);
    ov95_021E62F0(param_1,1);
    uStack_1c = 0x46;
    uStack_18 = 0;
    iVar3 = ov95_021E5E90(&uStack_1c);
    param_1[0x11] = iVar3;
    param_1[0x18] = param_1[0x18] + 1;
    break;
  case 1:
    ov95_021E5B7C();
    param_1[0x18] = param_1[0x18] + 1;
  case 2:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 == 1) {
      Sound_Stop();
      Sound_SetSceneAndPlayBGM(0xd,0x3f3,1);
      param_1[0x18] = param_1[0x18] + 1;
    }
    break;
  case 3:
    iVar3 = ov95_021E67F0();
    if (iVar3 == 0) {
      param_1[0x18] = param_1[0x18] + 1;
    }
    break;
  case 4:
    iVar3 = ov95_021E6838();
    if (iVar3 == 0) {
      param_1[0x18] = param_1[0x18] + 1;
    }
    break;
  case 5:
    iVar3 = ov95_021E68A8();
    if (iVar3 == 0) {
      param_1[0x18] = param_1[0x18] + 1;
    }
    break;
  case 6:
    iVar3 = ov95_021E6900();
    if (iVar3 == 0) {
      param_1[0x18] = param_1[0x18] + 1;
    }
    break;
  case 7:
    iVar3 = ov95_021E6964();
    if (iVar3 == 0) {
      ov95_021E62A4(param_1);
      uVar2 = GetMonData(*(undefined4 *)(*param_1 + 0xc),5,0);
      uVar1 = GetMonData(*(undefined4 *)(*param_1 + 0xc),0x70,0);
      PlayCry(uVar2,uVar1);
      iVar3 = ov95_021E5CAC(param_1 + 6,0,*(undefined4 *)(*param_1 + 0xc),param_1[4]);
      param_1[3] = iVar3;
      param_1[0x18] = param_1[0x18] + 1;
    }
    break;
  case 8:
    iVar3 = IsCryFinished();
    if (iVar3 != 0) break;
    PlayFanfare(0x4a4);
    param_1[0x18] = param_1[0x18] + 1;
  case 9:
    iVar3 = IsFanfarePlaying();
    if (iVar3 == 0) {
      param_1[0x18] = param_1[0x18] + 1;
code_r0x021e64ae:
      iVar3 = TextPrinterCheckActive(param_1[3] & 0xff);
      if (iVar3 == 0) {
        iVar3 = ov95_021E5CAC(param_1 + 6,1,*(undefined4 *)(*param_1 + 0xc),param_1[4]);
        param_1[3] = iVar3;
        param_1[0x18] = param_1[0x18] + 1;
code_r0x021e64d4:
        iVar3 = TextPrinterCheckActive(param_1[3] & 0xff);
        if (((iVar3 == 0) && (iVar3 = sub_02017068(param_1[0x16],0), iVar3 == 1)) &&
           (iVar3 = Pokepic_IsAnimFinished(param_1[0x1c]), iVar3 == 0)) {
          ov95_021E7208(param_1[0x22],2,3);
          param_1[0x18] = param_1[0x18] + 1;
        }
      }
    }
    break;
  case 10:
    goto code_r0x021e64ae;
  case 0xb:
    goto code_r0x021e64d4;
  case 0xc:
    iVar3 = ov95_021E7258(param_1[0x22]);
    if (iVar3 == 1) {
      *(undefined4 *)(*param_1 + 4) = 1;
      param_1[0x18] = param_1[0x18] + 1;
    }
    else if (iVar3 == 2) {
      *(undefined4 *)(*param_1 + 4) = 0;
      param_1[0x18] = param_1[0x18] + 1;
    }
    break;
  case 0xd:
    param_1[0x18] = iVar3 + 1;
    break;
  case 0xe:
    param_1[0x18] = iVar3 + 1;
    break;
  case 0xf:
    ov95_021E5B9C();
    param_1[0x18] = param_1[0x18] + 1;
  case 0x10:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 == 1) {
      param_1[0x18] = param_1[0x18] + 1;
    }
    break;
  default:
    ov95_021E62E4(param_1);
    ov95_021E6184(param_1);
    ov95_021E5D34(param_1 + 6);
    ov95_021E5E40(*(undefined4 *)(param_1[0x11] + 0xc));
    ov95_021E5EF0(param_1[0x11]);
    uVar4 = 0;
  }
  SpriteSystem_DrawSprites(param_1[0x14]);
  return uVar4;
}

