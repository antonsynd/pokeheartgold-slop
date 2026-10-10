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
undefined4 ov49_0225D494();
undefined4 ov49_0225D1C4();
undefined4 ov49_0225D214();
undefined4 GF_AssertFail();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 ov49_0225CC4C();
undefined4 ov49_0225EB00();
undefined4 ov49_0225CDEC();
undefined4 ov49_0225EE4C();
undefined4 ov49_0225D1EC();
undefined4 Heap_Alloc();
undefined4 ov49_022589D8();
undefined4 ov49_0225D098();
extern undefined ov49_02269A88;
extern undefined ov49_02269AAC;
undefined4 ov49_0225CF28();
undefined4 ov49_0225D040();

undefined4 *
ov49_0225DF18(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             undefined4 param_5)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  ushort *puVar4;
  undefined4 *puVar5;
  undefined2 *puVar6;
  undefined4 uStackY_4c;
  int iVar7;
  uint uStack_3c;
  undefined2 uStack_2c;
  undefined2 uStack_2a;
  short sStack_28;
  short sStack_26;
  short sStack_24;
  short sStack_22;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  puVar1 = (undefined4 *)Heap_Alloc(param_4,0x614);
  func_0x020e5b44(puVar1,0,0x614);
  *puVar1 = param_3;
  *(char *)(puVar1 + 0x184) = (char)param_1;
  *(char *)((int)puVar1 + 0x611) = (char)param_2;
  uVar2 = ov49_0225CC4C(9,0x80,param_4,param_5);
  puVar1[1] = uVar2;
  ov49_0225CDEC(puVar1[1],param_2,param_1,param_4,param_5);
  puVar4 = (ushort *)&ov49_02269AAC;
  uStack_3c = 0;
  do {
    iVar7 = 0;
    iVar3 = ov49_022589D8(*puVar1,*puVar4,&uStack_2a,&uStack_2c,0,param_4,0);
    while (iVar3 == 1) {
      uVar2 = ov49_0225D098(puVar1[1],puVar4[1],uStack_2a,uStack_2c);
      puVar1[*(byte *)((int)puVar1 + 0x612) + 2] = uVar2;
      switch(puVar4[1]) {
      case 0:
        ov49_0225D214(puVar1[1],puVar1[*(byte *)((int)puVar1 + 0x612) + 2],0,0);
        ov49_0225D214(puVar1[1],puVar1[*(byte *)((int)puVar1 + 0x612) + 2],1,0);
        ov49_0225D214(puVar1[1],puVar1[*(byte *)((int)puVar1 + 0x612) + 2],2,0);
        break;
      case 6:
      case 7:
      case 8:
        ov49_0225D214(puVar1[1],puVar1[*(byte *)((int)puVar1 + 0x612) + 2],0,0);
        puVar1[puVar4[1] + 0x85] = puVar1[*(byte *)((int)puVar1 + 0x612) + 2];
        break;
      case 10:
        ov49_0225D214(puVar1[1],puVar1[*(byte *)((int)puVar1 + 0x612) + 2],0,2);
        puVar1[*puVar4 + 0x45] = puVar1[*(byte *)((int)puVar1 + 0x612) + 2];
        break;
      case 0xb:
      case 0xc:
        ov49_0225D214(puVar1[1],puVar1[*(byte *)((int)puVar1 + 0x612) + 2],0,2);
        break;
      case 0xd:
        ov49_0225EB00(puVar1 + (uint)*(byte *)(puVar1 + 0x182) * 3 + 0x92,
                      puVar1[*(byte *)((int)puVar1 + 0x612) + 2]);
        *(char *)(puVar1 + 0x182) = *(char *)(puVar1 + 0x182) + '\x01';
        if (0x18 < *(byte *)(puVar1 + 0x182)) {
          GF_AssertFail();
        }
        ov49_0225D494(puVar1[*(byte *)((int)puVar1 + 0x612) + 2],0);
        if ((ushort)(*puVar4 - 0x5c) < 2) {
          ov49_0225EE4C(puVar1[*(byte *)((int)puVar1 + 0x612) + 2]);
        }
        break;
      case 0xe:
        ov49_0225EB00(puVar1 + (uint)*(byte *)((int)puVar1 + 0x609) * 3 + 0xda,
                      puVar1[*(byte *)((int)puVar1 + 0x612) + 2]);
        *(char *)((int)puVar1 + 0x609) = *(char *)((int)puVar1 + 0x609) + '\x01';
        if (0x18 < *(byte *)(puVar1 + 0x182)) {
          GF_AssertFail();
        }
        ov49_0225D494(puVar1[*(byte *)((int)puVar1 + 0x612) + 2],0);
        if ((ushort)(*puVar4 - 0x5c) < 2) {
          ov49_0225EE4C(puVar1[*(byte *)((int)puVar1 + 0x612) + 2]);
        }
        break;
      case 0xf:
        puVar1[*(byte *)((int)puVar1 + 0x60a) + 0x122] = puVar1[*(byte *)((int)puVar1 + 0x612) + 2];
        *(char *)((int)puVar1 + 0x60a) = *(char *)((int)puVar1 + 0x60a) + '\x01';
        if (0x18 < *(byte *)((int)puVar1 + 0x60a)) {
          GF_AssertFail();
        }
        ov49_0225D494(puVar1[*(byte *)((int)puVar1 + 0x612) + 2],0);
        break;
      case 0x10:
        ov49_0225EB00(puVar1 + (uint)*(byte *)((int)puVar1 + 0x60b) * 3 + 0x13a,
                      puVar1[*(byte *)((int)puVar1 + 0x612) + 2]);
        *(char *)((int)puVar1 + 0x60b) = *(char *)((int)puVar1 + 0x60b) + '\x01';
        if (0x18 < *(byte *)((int)puVar1 + 0x60b)) {
          GF_AssertFail();
        }
        ov49_0225D494(puVar1[*(byte *)((int)puVar1 + 0x612) + 2],0);
        uVar2 = ov49_0225D1EC(puVar1[*(byte *)((int)puVar1 + 0x612) + 2]);
        sStack_28 = (short)uVar2;
        sStack_26 = (short)((uint)uVar2 >> 0x10);
        sStack_24 = sStack_28 + 8;
        sStack_22 = sStack_26 + 0x14;
        uStackY_4c = CONCAT22(sStack_22,sStack_24);
        ov49_0225D1C4(puVar1[*(byte *)((int)puVar1 + 0x612) + 2],uStackY_4c);
      }
      *(char *)((int)puVar1 + 0x612) = *(char *)((int)puVar1 + 0x612) + '\x01';
      iVar7 = iVar7 + 1;
      iVar3 = ov49_022589D8(*puVar1,*puVar4,&uStack_2a,&uStack_2c,iVar7);
    }
    puVar4 = puVar4 + 2;
    uStack_3c = uStack_3c + 1;
  } while (uStack_3c < 0x23);
  iVar7 = 0;
  puVar6 = (undefined2 *)&ov49_02269A88;
  uStack_20 = 0;
  uStack_18 = 0x28000;
  uStack_1c = 0;
  puVar5 = puVar1;
  do {
    uVar2 = ov49_0225CF28(puVar1[1],*puVar6,puVar6[1],&uStack_20);
    puVar5[0x82] = uVar2;
    ov49_0225D040(puVar5[0x82],0);
    iVar7 = iVar7 + 1;
    puVar6 = puVar6 + 2;
    puVar5 = puVar5 + 1;
  } while (iVar7 < 9);
  *(undefined1 *)((int)puVar1 + 0x613) = 9;
  return puVar1;
}

