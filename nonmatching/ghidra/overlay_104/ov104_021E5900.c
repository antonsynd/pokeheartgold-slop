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
undefined4 ov104_021E5CC8();
undefined4 Heap_Create();
undefined4 OverlayManager_GetArgs();
undefined4 func_0x020bf0a8() __asm__("sub_020BF0A8");
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 Camera_New();
undefined4 func_0x020bf070() __asm__("sub_020BF070");
undefined4 func_0x020bf084() __asm__("sub_020BF084");
undefined4 func_0x020bf0cc() __asm__("sub_020BF0CC");
undefined4 func_0x020bf034() __asm__("sub_020BF034");
undefined4 BeginNormalPaletteFade();
undefined4 ov104_021E5BEC();
undefined4 OverlayManager_CreateAndGetData();
undefined4 ov104_021E5B88();

undefined4 ov104_021E5900(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined1 *puVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;

  Heap_Create(3,0x95,0x31000);
  puVar1 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x170,0x95);
  func_0x020e5b44(puVar1,0,0x170);
  puVar2 = (undefined1 *)OverlayManager_GetArgs(param_1);
  *(undefined1 *)(puVar1 + 0x59) = *puVar2;
  *(undefined1 *)((int)puVar1 + 0x165) = puVar2[1];
  *(undefined1 *)((int)puVar1 + 0x166) = puVar2[2];
  *(undefined1 *)((int)puVar1 + 0x167) = 0;
  uVar3 = Camera_New(0x95);
  *puVar1 = uVar3;
  ov104_021E5B88();
  ov104_021E5CC8(puVar1);
  ov104_021E5BEC(puVar1);
  uVar5 = 0;
  do {
    iVar4 = *(int *)(puVar2 + 4) + uVar5 * 6;
    func_0x020bf034(uVar5,(int)*(short *)(*(int *)(puVar2 + 4) + uVar5 * 6),
                    (int)*(short *)(iVar4 + 2),(int)*(short *)(iVar4 + 4));
    func_0x020bf070(uVar5,*(undefined2 *)(*(int *)(puVar2 + 4) + uVar5 * 2 + 0x18));
    uVar5 = uVar5 + 1 & 0xff;
  } while (uVar5 < 4);
  iVar4 = *(int *)(puVar2 + 4);
  func_0x020bf084(*(undefined2 *)(iVar4 + 0x20),*(undefined2 *)(iVar4 + 0x22),
                  *(undefined4 *)(iVar4 + 0x28));
  iVar4 = *(int *)(puVar2 + 4);
  func_0x020bf0a8(*(undefined2 *)(iVar4 + 0x24),*(undefined2 *)(iVar4 + 0x26),
                  *(undefined4 *)(iVar4 + 0x2c));
  iVar4 = *(int *)(puVar2 + 4);
  func_0x020bf0cc(*(undefined4 *)(iVar4 + 0x30),*(undefined4 *)(iVar4 + 0x34),
                  *(undefined4 *)(iVar4 + 0x38),*(undefined4 *)(iVar4 + 0x3c),
                  *(undefined4 *)(iVar4 + 0x40),*(undefined4 *)(iVar4 + 0x44));
  BeginNormalPaletteFade(3,1,1,0,6,1,0x95);
  return 1;
}

