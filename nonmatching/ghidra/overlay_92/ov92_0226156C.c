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
undefined4 ManagedSprite_SetPositionXY();
undefined4 SysTask_CreateOnMainQueue();
undefined4 func_0x0200de44() __asm__("sub_0200DE44");

void ov92_0226156C(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined1 auStack_18 [2];
  short sStack_16;
  undefined1 auStack_14 [2];
  short sStack_12;

  iVar6 = 0;
  *(undefined4 *)(param_1 + 0x248c) = *(undefined4 *)(param_1 + 0x14);
  *(int *)(param_1 + 0x222c) = param_1 + 0x2ae8;
  *(undefined4 *)(param_1 + 0x2228) = **(undefined4 **)(param_1 + 0x222c);
  puVar5 = (undefined4 *)(param_1 + 0x2230);
  do {
    iVar2 = 0;
    *puVar5 = 0;
    puVar5[1] = 0;
    switch(iVar6) {
    case 0:
      puVar5[2] = param_1 + 0x944;
      puVar5[3] = param_1 + 0x108;
      puVar5[5] = param_1 + 0x10c;
      puVar5[4] = *(undefined4 *)(*(int *)(param_1 + 0x14) + 0x14);
      break;
    case 1:
      puVar5[2] = *(undefined4 *)(param_1 + 0xd0);
      puVar5[3] = *(undefined4 *)(param_1 + 0xd4);
      puVar5[4] = 0;
      puVar5[5] = 0;
      func_0x0200de44(*(undefined4 *)(param_1 + 0xd0),&sStack_12,auStack_14);
      ManagedSprite_SetPositionXY(*(undefined4 *)(param_1 + 0xd0),(int)sStack_12,0xe0);
      func_0x0200de44(*(undefined4 *)(param_1 + 0xd4),&sStack_12,auStack_14);
      ManagedSprite_SetPositionXY(*(undefined4 *)(param_1 + 0xd4),(int)sStack_12,0xe0);
      break;
    case 2:
      iVar3 = param_1 + 0xb50;
      puVar4 = puVar5;
      do {
        iVar2 = iVar2 + 1;
        puVar4[2] = iVar3;
        iVar3 = iVar3 + 0x20c;
        puVar4 = puVar4 + 1;
      } while (iVar2 < 8);
      break;
    case 3:
      puVar5[2] = 0;
      puVar5[3] = 0;
      puVar5[4] = *(undefined4 *)(param_1 + 0xd8);
      puVar5[5] = *(undefined4 *)(param_1 + 0xdc);
      func_0x0200de44(*(undefined4 *)(param_1 + 0xd8),&sStack_16,auStack_18);
      ManagedSprite_SetPositionXY(*(undefined4 *)(param_1 + 0xd8),(int)sStack_16,0xe0);
      func_0x0200de44(*(undefined4 *)(param_1 + 0xdc),&sStack_16,auStack_18);
      ManagedSprite_SetPositionXY(*(undefined4 *)(param_1 + 0xdc),(int)sStack_16,0xe0);
      break;
    case 4:
      puVar5[2] = param_1;
    }
    iVar6 = iVar6 + 1;
    puVar5 = puVar5 + 0x1e;
  } while (iVar6 < 5);
  uVar1 = SysTask_CreateOnMainQueue(0x2261449,param_1 + 0x2228,0x1000);
  *(undefined4 *)(param_1 + 0x2488) = uVar1;
  return;
}

