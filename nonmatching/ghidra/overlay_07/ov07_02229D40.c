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
undefined4 SpriteSystem_DrawSprites();
undefined4 ov07_0221C448();
undefined4 func_0x0200dc0c() __asm__("sub_0200DC0C");
undefined4 Heap_Free();
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 Sprite_DeleteAndFreeResources();
extern undefined2 uRam04000052 __asm__("sub_04000052");

void ov07_02229D40(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  byte *pbVar1;
  int iVar2;
  char *pcVar3;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  if (*param_2 == '\0') {
    if ((byte)param_2[6] < 0xf) {
      param_2[6] = param_2[6] + 1;
    }
    if (param_2[7] != '\0') {
      param_2[7] = param_2[7] + -1;
    }
    uRam04000052 = *(undefined2 *)(param_2 + 6);
    iVar2 = 0;
    param_2[4] = param_2[4] + '\x01';
    if (param_2[5] != '\0') {
      pbVar1 = (byte *)0x2236778;
      pcVar3 = param_2;
      do {
        func_0x0200de44(*(undefined4 *)(pcVar3 + 0x14),(int)&uStack_18 + 2,&uStack_18);
        if (*pbVar1 <= (byte)param_2[4]) {
          param_2[iVar2 + 1] = param_2[iVar2 + 1] + '\x01';
          if (pbVar1[1] <= (byte)param_2[iVar2 + 1]) {
            param_2[iVar2 + 1] = '\0';
          }
        }
        iVar2 = iVar2 + 1;
        pcVar3 = pcVar3 + 4;
        pbVar1 = pbVar1 + 2;
      } while (iVar2 < (int)(uint)(byte)param_2[5]);
    }
    if (0x2c < (byte)param_2[4]) {
      *param_2 = *param_2 + '\x01';
    }
  }
  else {
    if (*param_2 != '\x01') {
      iVar2 = 0;
      pcVar3 = param_2;
      if (param_2[5] != '\0') {
        do {
          Sprite_DeleteAndFreeResources(*(undefined4 *)(pcVar3 + 0x14));
          iVar2 = iVar2 + 1;
          pcVar3 = pcVar3 + 4;
        } while (iVar2 < (int)(uint)(byte)param_2[5]);
      }
      ov07_0221C448(*(undefined4 *)(param_2 + 8),param_1);
      Heap_Free(param_2);
      return;
    }
    if (param_2[6] != '\0') {
      param_2[6] = param_2[6] + -1;
    }
    if ((byte)param_2[7] < 0xf) {
      param_2[7] = param_2[7] + 1;
    }
    if ((param_2[6] == '\0') && (param_2[7] == '\x0f')) {
      *param_2 = *param_2 + '\x01';
    }
    uRam04000052 = *(undefined2 *)(param_2 + 6);
  }
  iVar2 = 0;
  pcVar3 = param_2;
  if (param_2[5] != '\0') {
    do {
      func_0x0200dc0c(**(undefined4 **)(pcVar3 + 0x14));
      iVar2 = iVar2 + 1;
      pcVar3 = pcVar3 + 4;
    } while (iVar2 < (int)(uint)(byte)param_2[5]);
  }
  SpriteSystem_DrawSprites(*(undefined4 *)(param_2 + 0x10));
  return;
}

