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
undefined4 ov07_022324D8();
undefined4 func_0x0200e0fc() __asm__("sub_0200E0FC");
undefined4 ov07_0221C468();
undefined4 ov07_0221BFC0();
undefined4 ov07_0221C410();
undefined4 func_0x0200dd54() __asm__("sub_0200DD54");
undefined4 ov07_0221FB04();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov07_0221C4E8();
undefined4 ov07_02231FE4();
undefined4 ov07_02231924();
undefined4 ov07_0221C470();
extern uint uRam04000000 __asm__("sub_04000000");
extern ushort uRam0400004a __asm__("sub_0400004A");

void ov07_0223174C(undefined4 param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  
  puVar1 = (undefined4 *)ov07_022324D8(param_1,0x44);
  ov07_02231FE4(param_1,puVar1 + 6);
  uVar4 = param_2[1];
  *puVar1 = *param_2;
  puVar1[1] = uVar4;
  uVar4 = param_2[3];
  puVar1[2] = param_2[2];
  puVar1[3] = uVar4;
  uVar4 = param_2[5];
  puVar1[4] = param_2[4];
  puVar1[5] = uVar4;
  uVar4 = ov07_0221C4E8(puVar1[7],0,puVar1 + 6);
  puVar1[0xd] = uVar4;
  uVar4 = ov07_0221C4E8(puVar1[7],1);
  puVar1[0xe] = uVar4;
  uVar4 = ov07_0221C4E8(puVar1[7],2);
  puVar1[0xf] = uVar4;
  ov07_0221FB04(puVar1[7],2);
  func_0x0200dd54(puVar1[0xd],2);
  func_0x0200dd54(puVar1[0xe],2);
  if (puVar1[2] == 0) {
    uVar4 = ov07_0221C468(param_1);
  }
  else {
    uVar4 = ov07_0221C470(param_1);
  }
  uVar2 = ov07_02231924(param_1,uVar4);
  iVar3 = ov07_0221BFC0(param_1);
  if (iVar3 == 1) {
    ManagedSprite_SetDrawFlag(puVar1[0xf],0);
    uVar4 = ov07_0221FB04(puVar1[7],2);
    func_0x0200dd54(puVar1[0xd],uVar4);
    func_0x0200dd54(puVar1[0xe],uVar4);
  }
  else if (uVar2 < 2) {
    ManagedSprite_SetDrawFlag(puVar1[0xf],0);
  }
  else if (uVar2 - 3 < 2) {
    func_0x0200dd54(puVar1[0xf],3);
  }
  else {
    func_0x0200dd54(puVar1[0xf],1);
  }
  uRam0400004a = uRam0400004a & 0xc0c0 | 0x363b;
  uRam04000000 = uRam04000000 & 0xffff1fff | 0x8000;
  func_0x0200e0fc(puVar1[0xe],2);
  *(undefined2 *)(puVar1 + 4) = 0;
  *(undefined2 *)((int)puVar1 + 0x12) = 0;
  ov07_0221C410(puVar1[7],0x22315c1,puVar1);
  return;
}

