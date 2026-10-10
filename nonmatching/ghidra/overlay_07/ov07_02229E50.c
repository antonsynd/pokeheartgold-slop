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
undefined4 ov07_02231E08();
undefined4 ManagedSprite_SetAnim();
undefined4 ov07_0221C468();
undefined4 ov07_0223192C();
undefined4 ov07_0221F9E8();
undefined4 ManagedSprite_SetPositionXY();
undefined4 ov07_0221C4A8();
undefined4 Heap_Alloc();
undefined4 ov07_0221BFD0();
undefined4 func_0x0200df98() __asm__("sub_0200DF98");
undefined4 SpriteSystem_NewSprite();
undefined4 ov07_0221C470();
undefined4 GF_AssertFail();
extern undefined2 uRam04000052 __asm__("sub_04000052");
undefined4 func_0x0200e024() __asm__("sub_0200E024");
undefined4 func_0x0200e0fc() __asm__("sub_0200E0FC");
undefined4 ov07_0221BFC0();
undefined4 ov07_0221C3F4();

void ov07_02229E50(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  int iVar4;
  undefined1 *puVar5;
  int iVar6;
  undefined1 auStack_4c [52];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  uVar2 = ov07_0221BFD0();
  puVar3 = (undefined1 *)Heap_Alloc(uVar2,0x44);
  if (puVar3 == (undefined1 *)0x0) {
    GF_AssertFail();
  }
  puVar3[4] = 0;
  *puVar3 = 0;
  *(undefined4 *)(puVar3 + 0xc) = param_2;
  *(undefined4 *)(puVar3 + 0x10) = param_3;
  *(undefined4 *)(puVar3 + 8) = param_1;
  ov07_0221F9E8(auStack_4c,param_1);
  ov07_02231E08(*(undefined4 *)(puVar3 + 8),0xffffffff,0xffffffff);
  uVar1 = ov07_0221C4A8(*(undefined4 *)(puVar3 + 8),0);
  puVar3[5] = uVar1;
  puVar3[6] = 0;
  puVar3[7] = 0xf;
  uRam04000052 = *(undefined2 *)(puVar3 + 6);
  iVar6 = 1;
  *(undefined4 *)(puVar3 + 0x14) = param_4;
  puVar5 = puVar3;
  if (1 < (byte)puVar3[5]) {
    do {
      uVar2 = SpriteSystem_NewSprite
                        (*(undefined4 *)(puVar3 + 0xc),*(undefined4 *)(puVar3 + 0x10),auStack_4c);
      *(undefined4 *)(puVar5 + 0x18) = uVar2;
      iVar6 = iVar6 + 1;
      puVar5 = puVar5 + 4;
    } while (iVar6 < (int)(uint)(byte)puVar3[5]);
  }
  uVar2 = ov07_0221C470(param_1);
  iVar6 = ov07_0223192C(param_1,uVar2);
  if (iVar6 != 3) {
    uVar2 = ov07_0221C470(param_1);
    iVar6 = ov07_0223192C(param_1,uVar2);
    if (iVar6 == 4) {
      uVar2 = ov07_0221C468(param_1);
      iVar6 = ov07_0223192C(param_1,uVar2);
      if (iVar6 != 4) goto LAB_02229f52;
      ManagedSprite_SetAnim(*(undefined4 *)(puVar3 + 0x14),1);
    }
    else {
LAB_02229f52:
      ManagedSprite_SetAnim(*(undefined4 *)(puVar3 + 0x14),0);
    }
    ManagedSprite_SetPositionXY(*(undefined4 *)(puVar3 + 0x14),0x80,0x50);
    goto LAB_02229f64;
  }
  uVar2 = ov07_0221C470(param_1);
  iVar6 = ov07_0223192C(param_1,uVar2);
  if (iVar6 == 3) {
    uVar2 = ov07_0221C468(param_1);
    iVar6 = ov07_0223192C(param_1,uVar2);
    if (iVar6 != 3) goto LAB_02229f10;
    ManagedSprite_SetAnim(*(undefined4 *)(puVar3 + 0x14),0);
  }
  else {
LAB_02229f10:
    ManagedSprite_SetAnim(*(undefined4 *)(puVar3 + 0x14),1);
  }
  ManagedSprite_SetPositionXY(*(undefined4 *)(puVar3 + 0x14),0x80,0x50);
LAB_02229f64:
  iVar6 = 0;
  puVar5 = puVar3;
  if (puVar3[5] != '\0') {
    do {
      puVar3[iVar6 + 1] = 0;
      func_0x0200df98(*(undefined4 *)(puVar5 + 0x14),2);
      func_0x0200e0fc(*(undefined4 *)(puVar5 + 0x14),1);
      iVar4 = ov07_0221BFC0(*(undefined4 *)(puVar3 + 8));
      if (iVar4 == 1) {
        func_0x0200e024(*(undefined4 *)(puVar5 + 0x14),0xbf800000,0x3f800000);
      }
      iVar6 = iVar6 + 1;
      puVar5 = puVar5 + 4;
    } while (iVar6 < (int)(uint)(byte)puVar3[5]);
  }
  ov07_0221C3F4(param_1,0x2229d41,puVar3,0x44c);
  return;
}

