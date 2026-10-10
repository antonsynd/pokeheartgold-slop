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
undefined4 ov07_0222212C(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 func_0x0200e0fc(undefined4, undefined4) __asm__("sub_0200E0FC");
undefined4 ov07_0221F9E8(undefined4, undefined4);
undefined4 ov07_02222494(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_02231E08(undefined4, undefined4, undefined4);
undefined4 ov07_02222004(undefined4, undefined4);
undefined4 func_0x0200dd68(undefined4, undefined4) __asm__("sub_0200DD68");
undefined4 ov07_0222C18C(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_02221F80(undefined4, undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 func_0x0200dd54(undefined4, undefined4) __asm__("sub_0200DD54");
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_0221BFD0(void);

void ov07_0222C4C0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined2 uStack_4c;
  undefined2 uStack_4a;
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar2 = ov07_0221BFD0();
  puVar3 = (undefined4 *)Heap_Alloc(uVar2,0x100);
  *puVar3 = param_1;
  puVar3[1] = param_2;
  puVar3[2] = param_3;
  puVar3[0x3d] = 8;
  puVar3[0x3e] = 0;
  puVar3[0x3c] = 0;
  uVar2 = ov07_0221C468(param_1);
  iVar4 = ov07_02222004(param_1,uVar2);
  puVar3[3] = param_4;
  puVar3[0x14] = 0;
  ov07_0222212C(puVar3 + 4,0x3fff,0xbfff,0x3fff,0xbfff,iVar4 * -0x20000,0xffff8000,0x71c);
  ov07_02222494(puVar3 + 0xd,0,0xffff,0xfffff000,puVar3[5]);
  *(short *)(puVar3 + 0x12) = (short)puVar3[10];
  puVar3[0x15] = 1;
  uVar1 = ov07_02221F80(param_1,uVar2,0);
  *(undefined2 *)((int)puVar3 + 0x4a) = uVar1;
  uVar1 = ov07_02221F80(param_1,uVar2,1);
  *(undefined2 *)(puVar3 + 0x13) = uVar1;
  ManagedSprite_SetPositionXY
            (puVar3[3],(int)*(short *)((int)puVar3 + 0x4a),(int)*(short *)(puVar3 + 0x13));
  func_0x0200dd68(puVar3[3],100);
  func_0x0200dd54(puVar3[3],1);
  ov07_0221F9E8(&uStack_4c,*puVar3);
  uStack_4c = *(undefined2 *)((int)puVar3 + 0x4a);
  uStack_4a = *(undefined2 *)(puVar3 + 0x13);
  iVar4 = 0;
  puVar5 = puVar3 + 0x16;
  do {
    ov07_0222C18C(puVar5,puVar3[1],puVar3[2],&uStack_4c,puVar3 + 3);
    iVar4 = iVar4 + 1;
    puVar5 = puVar5 + 0x13;
  } while (iVar4 < 2);
  puVar3[0x3f] = 0;
  ov07_02231E08(*puVar3,0,0x1f);
  func_0x0200e0fc(puVar3[3],1);
  iVar4 = 0;
  puVar5 = puVar3;
  do {
    func_0x0200e0fc(puVar5[0x16],1);
    iVar4 = iVar4 + 1;
    puVar5 = puVar5 + 0x13;
  } while (iVar4 < 2);
  ov07_0221C410(*puVar3,0x222c2d5,puVar3);
  return;
}

