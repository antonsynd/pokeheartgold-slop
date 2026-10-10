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
undefined4 func_0x0200e0fc() __asm__("sub_0200E0FC");
undefined4 ov07_022226FC();
undefined4 ManagedSprite_SetPositionXY();
undefined4 func_0x020f22dc() __asm__("sub_020F22DC");
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 ov07_02222590();
undefined4 ov07_0222260C();
undefined4 Pokepic_SetAttr();
undefined4 func_0x0200e024() __asm__("sub_0200E024");
undefined4 ov07_02222644();
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
undefined4 SpriteSystem_DrawSprites();
undefined4 ov07_0221C448();
undefined4 Heap_Free();

void ov07_02228834(undefined4 param_1,char *param_2)

{
  int iVar1;
  undefined4 uVar2;
  char *pcVar3;
  char *pcVar4;
  byte *pbVar5;
  int iVar6;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  undefined1 auStack_28 [2];
  short sStack_26;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  switch(*param_2) {
  case '\0':
    Pokepic_SetAttr(*(undefined4 *)(param_2 + 0xc),0xe,1);
    *param_2 = *param_2 + '\x01';
    break;
  case '\x01':
    pbVar5 = (byte *)0x22366c8;
    iStack_30 = 0;
    iStack_2c = 0;
    pcVar4 = param_2 + 0x20;
    pcVar3 = param_2;
    do {
      if (pcVar3[0x18] == '\0') {
        pcVar3[0x19] = pcVar3[0x19] + '\x01';
        if (*pbVar5 <= (byte)pcVar3[0x19]) {
          ov07_02222590(pcVar4,100,5,100,5,100,5);
          pcVar3[0x18] = pcVar3[0x18] + '\x01';
        }
      }
      else if (pcVar3[0x18] == '\x01') {
        iVar6 = ov07_0222260C(pcVar4);
        if (iVar6 == 0) {
          pcVar3[0x18] = pcVar3[0x18] + '\x01';
        }
        else {
          ov07_02222644(pcVar4,&uStack_18,&uStack_1c);
          uVar2 = func_0x020f2178((int)param_2[8]);
          uVar2 = func_0x020f22dc(uStack_18,uVar2);
          func_0x0200e024(*(undefined4 *)(pcVar3 + 0x1c),uVar2,uStack_1c);
          ov07_022226FC(*(undefined4 *)(pcVar3 + 0x1c),(int)*(short *)(param_2 + 2),
                        (int)(short)*(undefined4 *)(param_2 + 4),*(undefined4 *)(pcVar3 + 0x34),0);
        }
      }
      else {
        iStack_30 = iStack_30 + 1;
      }
      func_0x0200dc18(*(undefined4 *)(pcVar3 + 0x1c));
      pcVar3 = pcVar3 + 0x2c;
      iStack_2c = iStack_2c + 1;
      pbVar5 = pbVar5 + 1;
      pcVar4 = pcVar4 + 0x2c;
    } while (iStack_2c < 3);
    if (2 < iStack_30) {
      param_2[1] = param_2[1] + '\x01';
      if ((byte)param_2[1] < 3) {
        iVar6 = 0;
        pcVar3 = param_2;
        do {
          func_0x0200de44(*(undefined4 *)(pcVar3 + 0x1c),&sStack_26,auStack_28);
          ManagedSprite_SetPositionXY
                    (*(undefined4 *)(pcVar3 + 0x1c),(int)sStack_26,(int)*(short *)(param_2 + 2));
          uVar2 = func_0x020f2178((int)param_2[8]);
          func_0x0200e024(*(undefined4 *)(pcVar3 + 0x1c),uVar2,0x3f800000);
          pcVar3[0x18] = '\0';
          pcVar3[0x19] = '\0';
          iVar6 = iVar6 + 1;
          pcVar3 = pcVar3 + 0x2c;
        } while (iVar6 < 3);
        *param_2 = *param_2 + -1;
      }
      else {
        *param_2 = *param_2 + '\x01';
      }
    }
    break;
  case '\x02':
    iVar6 = 0;
    pcVar4 = param_2 + 0x20;
    pcVar3 = param_2;
    do {
      func_0x0200e0fc(*(undefined4 *)(pcVar3 + 0x1c),0);
      ov07_02222590(pcVar4,5,100,5,100,100,5);
      iVar6 = iVar6 + 1;
      pcVar3 = pcVar3 + 0x2c;
      pcVar4 = pcVar4 + 0x2c;
    } while (iVar6 < 3);
    *param_2 = *param_2 + '\x01';
    break;
  case '\x03':
    iVar6 = 0;
    iStack_34 = 0;
    pcVar4 = param_2 + 0x20;
    pcVar3 = param_2;
    do {
      iVar1 = ov07_0222260C(pcVar4);
      if (iVar1 == 0) {
        iVar6 = iVar6 + 1;
      }
      else {
        ov07_02222644(pcVar4,&uStack_20,&uStack_24);
        uVar2 = func_0x020f2178((int)param_2[8]);
        uVar2 = func_0x020f22dc(uStack_20,uVar2);
        func_0x0200e024(*(undefined4 *)(pcVar3 + 0x1c),uVar2,uStack_24);
        ov07_022226FC(*(undefined4 *)(pcVar3 + 0x1c),(int)*(short *)(param_2 + 2),
                      (int)(short)*(undefined4 *)(param_2 + 4),*(undefined4 *)(pcVar3 + 0x34),0);
      }
      pcVar4 = pcVar4 + 0x2c;
      iStack_34 = iStack_34 + 1;
      pcVar3 = pcVar3 + 0x2c;
    } while (iStack_34 < 3);
    if (2 < iVar6) {
      *param_2 = *param_2 + '\x01';
    }
    break;
  default:
    Pokepic_SetAttr(*(undefined4 *)(param_2 + 0xc),0xe,0);
    ov07_0221C448(*(undefined4 *)(param_2 + 0x10),param_1);
    Heap_Free(param_2);
    return;
  }
  SpriteSystem_DrawSprites(*(undefined4 *)(param_2 + 0x14));
  return;
}

