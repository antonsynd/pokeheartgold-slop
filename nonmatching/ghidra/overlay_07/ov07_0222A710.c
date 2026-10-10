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
undefined4 ov07_0221EC7C();
undefined4 ov07_02222D3C();
undefined4 ov07_0221C468();
undefined4 ov07_02222CCC();
undefined4 Heap_Free();
undefined4 ov07_02222D88();
undefined4 ov07_02222AC4();
undefined4 SpriteSystem_DrawSprites();
undefined4 ov07_0221C448();
undefined4 ov07_0221BFD0();
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
undefined4 Pokepic_SetAttr();
undefined4 ov07_0221FA48();
undefined4 ov07_02222AF4();
undefined4 ov07_0221FAF8();
extern uint uRam04000000 __asm__("sub_04000000");

void ov07_0222A710(undefined4 param_1,int *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  switch((char)param_2[1]) {
  case '\0':
    uVar4 = ov07_0221C468(param_2[2]);
    uVar4 = ov07_0221FA48(param_2[2],uVar4);
    Pokepic_SetAttr(uVar4,6,1);
    *(char *)(param_2 + 1) = (char)param_2[1] + '\x01';
    break;
  case '\x01':
    iVar3 = ov07_02222AF4(param_2 + 0xb);
    if (iVar3 != 0) {
      *param_2 = 0;
      uVar4 = ov07_0221FAF8(param_2[2],1);
      uVar1 = ov07_02222D88(0,0);
      uVar2 = ov07_0221BFD0(param_2[2]);
      iVar3 = ov07_02222CCC(0,0xa0,0x16c,0xc000,200,uVar4,0,uVar1,uVar2);
      param_2[10] = iVar3;
      *(char *)(param_2 + 1) = (char)param_2[1] + '\x01';
    }
    break;
  case '\x02':
    iVar3 = *param_2;
    *param_2 = iVar3 + 1;
    if (0x77 < iVar3 + 1) {
      ov07_02222D3C(param_2[10]);
      ov07_02222AC4(param_2 + 0xb,2,0x10,0x10,2,0x10);
      *(char *)(param_2 + 1) = (char)param_2[1] + '\x01';
    }
    break;
  case '\x03':
    iVar3 = ov07_02222AF4(param_2 + 0xb);
    if (iVar3 != 0) {
      uVar4 = ov07_0221C468(param_2[2]);
      uVar4 = ov07_0221FA48(param_2[2],uVar4);
      Pokepic_SetAttr(uVar4,6,0);
      *(char *)(param_2 + 1) = (char)param_2[1] + '\x01';
    }
    break;
  default:
    uRam04000000 = uRam04000000 & 0xffff1fff;
    ov07_0221EC7C(param_2[2],2);
    ov07_0221C448(param_2[2],param_1);
    Heap_Free(param_2);
    return;
  }
  func_0x0200dc18(param_2[9]);
  func_0x0200dc18(param_2[8]);
  SpriteSystem_DrawSprites(param_2[4]);
  return;
}

