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
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 func_0x0221efa4() __asm__("sub_0221EFA4");
undefined4 func_0x0221efb4() __asm__("sub_0221EFB4");

void ov99_021E92EC(int param_1,undefined2 *param_2,undefined2 *param_3)

{
  undefined2 uVar1;
  int iVar2;
  undefined2 *puVar3;
  undefined2 *puVar4;
  int iVar5;
  int iStack_40;
  undefined2 *puStack_3c;
  undefined2 *puStack_38;
  uint uStack_34;
  undefined2 uStack_1a;
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  func_0x020d4a50(param_2,param_3,0x1b8);
  uStack_34 = 0;
  iStack_40 = param_1;
  puStack_3c = param_2;
  puStack_38 = param_3;
  do {
    iVar5 = 0;
    puVar3 = puStack_3c;
    do {
      iVar2 = func_0x0221efb4(uStack_34 & 0xff,0,*puVar3);
      if (iVar2 == 0) break;
      iVar5 = iVar5 + 1;
      puVar3 = puVar3 + 4;
    } while (iVar5 < 5);
    if (iVar5 == 0) {
      *(undefined4 *)(iStack_40 + 0xbc) = 1;
    }
    iVar2 = 0;
    puVar3 = puStack_38;
    puVar4 = puStack_3c;
    do {
      if (iVar2 == iVar5) {
        uStack_1a = 0x98;
        uStack_18 = 0x9b;
        uStack_16 = 0x9e;
        func_0x020d4a50(&uStack_1a,puVar3 + 1,6);
        uVar1 = func_0x0221efa4(uStack_34 & 0xffff,0);
        *puVar3 = uVar1;
      }
      else if (iVar5 < iVar2) {
        *puVar3 = puVar4[-4];
        puVar3[1] = puVar4[-3];
        puVar3[2] = puVar4[-2];
        puVar3[3] = puVar4[-1];
      }
      iVar2 = iVar2 + 1;
      puVar3 = puVar3 + 4;
      puVar4 = puVar4 + 4;
    } while (iVar2 < 5);
    puStack_3c = puStack_3c + 0x16;
    iStack_40 = iStack_40 + 4;
    puStack_38 = puStack_38 + 0x16;
    uStack_34 = uStack_34 + 1;
    if (9 < (int)uStack_34) {
      return;
    }
  } while( true );
}

