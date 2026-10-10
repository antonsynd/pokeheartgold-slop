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
undefined4 ov07_02222CCC();
undefined4 ov07_02222268();
undefined4 ov07_0221FAEC();
undefined4 ov07_02222004();
undefined4 ov07_0221BFD0();
void * Heap_Alloc(int, unsigned int);
undefined4 SysTask_GetPriority(void *);
undefined4 Pokepic_GetAttr(void *, int);
undefined4 ov07_0221C410();
undefined4 SetBgPriority(unsigned char, unsigned short);
undefined4 ov07_02222D88();
undefined4 ov07_0221C468();
undefined4 ov07_0222C918();
void * memset(void *, int, unsigned int);
undefined4 ov07_0221FAE8();
undefined4 ov07_0221FA48();
undefined4 ov07_0221FAF8();
undefined4 Pokepic_SetAttr(void *, int, int);
undefined4 ov07_02231924();

void ov07_0222CA8C(undefined4 param_1)

{
  byte bVar1;
  ushort uVar2;
  short sVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined *puVar6;
  undefined4 uVar7;
  undefined *puVar8;
  uint uVar9;
  undefined4 uVar10;
  undefined4 uVar11;

  iVar4 = ov07_0221BFD0();
  puVar5 = (undefined4 *)Heap_Alloc(iVar4,0x68);
  memset((undefined *)puVar5,0,0x68);
  *puVar5 = param_1;
  puVar6 = (undefined *)ov07_0221C410(param_1,0x222c919,puVar5);
  uVar7 = ov07_0221C468(*puVar5);
  puVar8 = (undefined *)ov07_0221FA48(*puVar5,uVar7);
  puVar5[3] = puVar8;
  iVar4 = Pokepic_GetAttr(puVar8,0);
  *(short *)(puVar5 + 4) = (short)iVar4;
  iVar4 = Pokepic_GetAttr((undefined *)puVar5[3],1);
  *(short *)((int)puVar5 + 0x12) = (short)iVar4;
  iVar4 = Pokepic_GetAttr((undefined *)puVar5[3],0x29);
  *(short *)((int)puVar5 + 0x12) = *(short *)((int)puVar5 + 0x12) - (short)iVar4;
  *(short *)(puVar5 + 4) = *(short *)(puVar5 + 4) + -0x28;
  *(short *)((int)puVar5 + 0x12) = *(short *)((int)puVar5 + 0x12) + -0x28;
  Pokepic_SetAttr((undefined *)puVar5[3],6,1);
  uVar7 = ov07_0221C468(*puVar5);
  iVar4 = ov07_02222004(*puVar5,uVar7);
  *(short *)(puVar5 + 5) = *(short *)((int)puVar5 + 0x12) + -8;
  *(short *)((int)puVar5 + 0x16) = *(short *)((int)puVar5 + 0x12) + 0x58;
  if (*(short *)(puVar5 + 5) < 0) {
    *(undefined2 *)(puVar5 + 5) = 0;
  }
  if (0xbf < *(short *)((int)puVar5 + 0x16)) {
    *(undefined2 *)((int)puVar5 + 0x16) = 0xbf;
  }
  uVar7 = ov07_0221FAF8(param_1,1);
  uVar9 = SysTask_GetPriority(puVar6);
  uVar10 = ov07_02222D88(*(undefined2 *)(puVar5 + 4),*(undefined2 *)((int)puVar5 + 0x12));
  uVar11 = ov07_0221BFD0(param_1);
  uVar7 = ov07_02222CCC(*(ushort *)(puVar5 + 5) & 0xff,*(ushort *)((int)puVar5 + 0x16) & 0xff,0x38e,
                        iVar4 << 0xf,0x50,uVar7,uVar9 + 1,uVar10,uVar11);
  puVar5[6] = uVar7;
  ov07_02222268(puVar5 + 7,0,0x50,0,0x28,0x18);
  puVar5[9] = iVar4 * puVar5[9];
  uVar7 = ov07_0221C468(param_1);
  iVar4 = ov07_02231924(*puVar5,uVar7);
  if (iVar4 - 3U < 2) {
    bVar1 = ov07_0221FAEC(*puVar5,1);
    uVar2 = ov07_0221FAE8(*puVar5);
    SetBgPriority(bVar1,uVar2 & 0xff);
    sVar3 = ov07_0221FAE8(*puVar5);
    SetBgPriority(0,sVar3 + 1U & 0xff);
  }
  ov07_0222C918(puVar6,puVar5);
  return;
}

