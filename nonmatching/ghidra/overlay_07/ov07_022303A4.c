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
typedef void code(void);
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
undefined4 ov07_02222BE4(undefined4, undefined4, undefined4);
undefined4 ov07_0221FAC8(undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_0221FAEC(undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221FAF8(undefined4, undefined4);
undefined4 ov07_0221FAE8(undefined4);
undefined4 ov07_0221C470(undefined4);
undefined4 Pokepic_SetAttr(undefined4, undefined4, undefined4);
undefined4 ov07_02222D90(void);
undefined4 ov07_022324D8(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_02222D88(undefined4, undefined4);
undefined4 ov07_02231924(undefined4, undefined4);
undefined4 func_0x0201bb68(undefined4, undefined4) __asm__("sub_0201BB68");
undefined4 ov07_0221BFD0(undefined4);

void ov07_022303A4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined1 uVar2;
  char cVar3;
  short sVar4;
  short sVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  int iVar8;
  undefined4 uVar9;
  int iVar10;
  
  puVar6 = (undefined4 *)ov07_022324D8(param_1,0x34,param_3,param_4,param_4);
  *puVar6 = param_1;
  uVar7 = ov07_0221C470(param_1);
  uVar7 = ov07_0221FA48(*puVar6,uVar7);
  puVar6[3] = uVar7;
  sVar4 = Pokepic_GetAttr(uVar7,0);
  sVar5 = Pokepic_GetAttr(puVar6[3],1);
  iVar8 = Pokepic_GetAttr(puVar6[3],0x29);
  iVar10 = (sVar5 - iVar8) * 0x10000 >> 0x10;
  uVar7 = ov07_0221C470(*puVar6);
  iVar8 = ov07_0221FAC8(*puVar6,uVar7);
  if (iVar8 == 0) {
    Pokepic_SetAttr(puVar6[3],6,1);
  }
  puVar6[5] = iVar10;
  iVar10 = iVar10 + -0x28;
  puVar6[4] = iVar10;
  uVar7 = ov07_02222D88(-((sVar4 + -0x28) * 0x10000 >> 0x10) & 0xffff,-iVar10 & 0xffff);
  puVar6[0xc] = uVar7;
  ov07_0221FAF8(*puVar6,1);
  uVar7 = ov07_02222D90();
  uVar9 = ov07_0221BFD0(*puVar6);
  uVar7 = ov07_02222BE4(uVar7,puVar6[0xc],uVar9);
  puVar6[1] = uVar7;
  puVar6[8] = 1;
  uVar7 = ov07_0221C470(param_1);
  iVar8 = ov07_02231924(*puVar6,uVar7);
  if (iVar8 - 3U < 2) {
    uVar1 = ov07_0221FAEC(*puVar6,1);
    uVar2 = ov07_0221FAE8(*puVar6);
    func_0x0201bb68(uVar1,uVar2);
    cVar3 = ov07_0221FAE8(*puVar6);
    func_0x0201bb68(0,cVar3 + '\x01');
  }
  ov07_0221C410(*puVar6,0x22302a9,puVar6);
  return;
}

