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
undefined4 ov74_0222B1F4();
undefined4 ov74_0222B2C4();
undefined4 PlaySE(unsigned short);
undefined4 Sprite_GetDrawFlag(void *);
undefined4 ov74_0222BF2C();
undefined4 ov74_0222B30C();
undefined4 ov74_0222BFA0();
undefined4 ov74_0222B19C();
undefined4 ov74_0222C014();
undefined4 ov74_0222B344();
undefined4 ov74_0222BF18();
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 ov74_0222B5F8();
undefined4 Sprite_TryChangeAnimSeq(void *, int);
void * Sprite_GetMatrixPtr(void *);
undefined4 Sprite_SetDrawFlag(void *, int);
undefined4 SysTask_Destroy(void *);
undefined4 ov74_0222B224();
undefined4 ov74_0222B20C();
undefined4 ov74_0222B374();
undefined4 ov74_0222B760();
undefined4 Heap_Free(void *);

void ov74_0222C04C(undefined *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  undefined4 *puVar5;
  int iVar6;
  
  switch(*param_2) {
  case 0:
    ov74_0222C014(param_2);
    *param_2 = 1;
    break;
  case 1:
    iVar4 = ov74_0222BF2C(param_2,1,2,param_4,param_4);
    if (iVar4 != 0) {
      *param_2 = 2;
    }
    break;
  case 2:
    iVar6 = 0;
    bVar1 = true;
    iVar4 = 0;
    puVar5 = param_2;
    do {
      if (puVar5[0x24] == 0) {
        bVar1 = false;
      }
      else {
        iVar6 = iVar6 + 1;
      }
      iVar4 = iVar4 + 1;
      puVar5 = puVar5 + 0x13;
    } while (iVar4 < 0x50);
    if (iVar6 < 0x33) {
      if (iVar6 < 0x1f) {
        if (7 < iVar6) {
          Sprite_SetDrawFlag((undefined *)param_2[0xc05],1);
        }
      }
      else {
        Sprite_TryChangeAnimSeq((undefined *)param_2[0xc05],3);
      }
    }
    else {
      Sprite_TryChangeAnimSeq((undefined *)param_2[0xc05],4);
    }
    if ((bVar1) || (iVar6 == 0x4f)) {
      *param_2 = 3;
      ov74_0222B344(param_2);
    }
    break;
  case 3:
    if (*(int *)param_2[0xc28] == 2) {
      ov74_0222B2C4(param_2);
      ov74_0222B5F8(param_2);
      GfGfx_EngineATogglePlanes(2,0);
      ov74_0222BF18();
      *param_2 = 4;
    }
    break;
  case 4:
    iVar6 = 0;
    bVar1 = true;
    iVar4 = 0;
    puVar5 = param_2;
    do {
      if (puVar5[0x25] != 0) {
        if (puVar5[0x24] == 0) {
          bVar1 = false;
        }
        else {
          iVar6 = iVar6 + 1;
        }
      }
      iVar4 = iVar4 + 1;
      puVar5 = puVar5 + 0x13;
    } while (iVar4 < 0x50);
    ov74_0222BFA0(param_2,2,2);
    if ((bVar1) || (iVar6 == 0x13)) {
      PlaySE(0x61a);
      *param_2 = 5;
      ov74_0222B344(param_2);
      ov74_0222B19C(param_2);
    }
    break;
  case 5:
    iVar4 = ov74_0222BFA0(param_2,2,2);
    if (iVar4 != 0) {
      ov74_0222BFA0(param_2,1,2);
      *param_2 = 6;
    }
    break;
  case 6:
    iVar4 = ov74_0222BFA0(param_2,1,2);
    if (iVar4 != 0) {
      puVar2 = Sprite_GetMatrixPtr((undefined *)param_2[0xc05]);
      puVar3 = Sprite_GetMatrixPtr((undefined *)param_2[0xc18]);
      if (*(int *)(puVar2 + 4) < 0xe0000) {
        *(int *)(puVar2 + 4) = *(int *)(puVar2 + 4) + 0x8000;
      }
      if (0 < *(int *)(puVar2 + 4) + -0xc0000) {
        if (*(int *)(puVar3 + 4) < 0x180000) {
          *(int *)(puVar3 + 4) = *(int *)(puVar3 + 4) + 0x8000;
          iVar4 = Sprite_GetDrawFlag((undefined *)param_2[0xc18]);
          if (iVar4 == 0) {
            Sprite_SetDrawFlag((undefined *)param_2[0xc18],1);
          }
        }
        else {
          *param_2 = 7;
          ov74_0222B1F4(param_2);
          ov74_0222B30C(param_2);
          ov74_0222B760(param_2);
          GfGfx_EngineATogglePlanes(2,1);
        }
      }
    }
    break;
  case 7:
    iVar6 = 0;
    bVar1 = true;
    iVar4 = 0;
    puVar5 = param_2;
    do {
      if (puVar5[0x614] == 0) {
        bVar1 = false;
      }
      else {
        iVar6 = iVar6 + 1;
      }
      iVar4 = iVar4 + 1;
      puVar5 = puVar5 + 0x13;
    } while (iVar4 < 0x50);
    if (7 < iVar6) {
      ov74_0222BF2C(param_2,2,1,puVar5,param_4);
    }
    if (iVar6 < 0x33) {
      if (iVar6 < 0x1f) {
        if (7 < iVar6) {
          Sprite_TryChangeAnimSeq((undefined *)param_2[0xc18],3);
        }
      }
      else {
        Sprite_TryChangeAnimSeq((undefined *)param_2[0xc18],2);
      }
    }
    else {
      Sprite_SetDrawFlag((undefined *)param_2[0xc18],0);
    }
    if (bVar1) {
      *param_2 = 8;
      ov74_0222B374(param_2);
      ov74_0222B20C(param_2);
    }
    break;
  case 8:
    iVar4 = ov74_0222BF2C(param_2,2,1,param_4,param_4);
    if (iVar4 != 0) {
      *param_2 = 9;
    }
    break;
  case 9:
    iVar4 = ov74_0222BF2C(param_2,0,2,param_4,param_4);
    if (iVar4 != 0) {
      *param_2 = 0xff;
    }
    break;
  default:
    *(undefined4 *)param_2[0xc28] = 0;
    SysTask_Destroy(param_1);
    Heap_Free((undefined *)param_2);
    return;
  }
  ov74_0222B224(param_2);
  return;
}

