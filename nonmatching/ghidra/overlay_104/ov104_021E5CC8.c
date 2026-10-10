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
undefined4 func_0x020c2b7c() __asm__("sub_020C2B7C");
undefined4 func_0x020c2bac() __asm__("sub_020C2BAC");
undefined4 NNS_G3dRenderObjAddAnmObj();
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");
undefined4 HeapExp_FndInitAllocator();
undefined4 func_0x0201f51c() __asm__("sub_0201F51C");
undefined4 NARC_New();
undefined4 func_0x0200771c() __asm__("sub_0200771C");
undefined4 func_0x020c3b90() __asm__("sub_020C3B90");
undefined4 func_0x020be008() __asm__("sub_020BE008");
extern undefined4 ov104_021E6090;
extern undefined UNK_021e5ef0 __asm__("sub_021E5EF0");
extern undefined ov104_021E5F08;
extern undefined4 ov104_021E60A8;
extern undefined4 ov104_021E6078;
extern undefined4 ov104_021E60C0;
extern undefined4 ov104_021E60F0;
extern undefined4 ov104_021E60D8;
extern undefined4 ov104_021E6108;
undefined4 NARC_Delete();

void ov104_021E5CC8(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  undefined1 *puStack_20;
  uint uStack_1c;
  
  uVar1 = NARC_New(0xeb,0x95);
  HeapExp_FndInitAllocator(param_1 + 0x148,0x95,4);
  if (*(char *)(param_1 + 0x164) == '\0') {
    if (*(char *)(param_1 + 0x166) == '\0') {
      if (*(char *)(param_1 + 0x165) == '\0') {
        puStack_20 = &ov104_021E60C0;
      }
      else {
        puStack_20 = &ov104_021E60D8;
      }
    }
    else if (*(char *)(param_1 + 0x165) == '\0') {
      puStack_20 = &ov104_021E6090;
    }
    else {
      puStack_20 = &ov104_021E60F0;
    }
    *(undefined **)(param_1 + 0x16c) = &UNK_021e5ef0;
  }
  else {
    if (*(char *)(param_1 + 0x166) == '\0') {
      if (*(char *)(param_1 + 0x165) == '\0') {
        puStack_20 = (undefined1 *)0x21e6060;
      }
      else {
        puStack_20 = &ov104_021E60A8;
      }
    }
    else if (*(char *)(param_1 + 0x165) == '\0') {
      puStack_20 = &ov104_021E6078;
    }
    else {
      puStack_20 = &ov104_021E6108;
    }
    *(undefined **)(param_1 + 0x16c) = &ov104_021E5F08;
  }
  uStack_1c = 0;
  do {
    iVar6 = param_1 + 4 + uStack_1c * 0x6c;
    uVar2 = func_0x0200771c(uVar1,*(undefined4 *)(puStack_20 + uStack_1c * 8),0x95);
    *(undefined4 *)(iVar6 + 0x58) = uVar2;
    func_0x0201f51c(iVar6,iVar6 + 0x54,iVar6 + 0x58);
    uVar2 = func_0x020c3b50(*(undefined4 *)(param_1 + uStack_1c * 0x6c + 0x5c));
    if (uStack_1c == 2) {
      func_0x020c2bac(*(undefined4 *)(iVar6 + 0x54),0,0x40);
      func_0x020c2bac(*(undefined4 *)(iVar6 + 0x54),0,0x80);
      func_0x020c2bac(*(undefined4 *)(iVar6 + 0x54),0,0x200);
      func_0x020c2bac(*(undefined4 *)(iVar6 + 0x54),0,0x400);
    }
    uVar5 = 0;
    do {
      iVar7 = iVar6 + uVar5 * 4;
      uVar3 = func_0x0200771c(uVar1,*(undefined2 *)(puStack_20 + uVar5 * 2 + uStack_1c * 8 + 4),0x95
                             );
      *(undefined4 *)(iVar7 + 0x5c) = uVar3;
      uVar3 = func_0x020c3b90(uVar3,0);
      uVar4 = func_0x020c2b7c(param_1 + 0x148,uVar3,*(undefined4 *)(iVar6 + 0x54));
      *(undefined4 *)(iVar7 + 100) = uVar4;
      func_0x020be008(uVar4,uVar3,*(undefined4 *)(iVar6 + 0x54),uVar2);
      NNS_G3dRenderObjAddAnmObj(iVar6,*(undefined4 *)(iVar7 + 100));
      uVar5 = uVar5 + 1 & 0xff;
    } while (uVar5 < 2);
    uStack_1c = uStack_1c + 1 & 0xff;
  } while (uStack_1c < 3);
  NARC_Delete(uVar1);
  return;
}

