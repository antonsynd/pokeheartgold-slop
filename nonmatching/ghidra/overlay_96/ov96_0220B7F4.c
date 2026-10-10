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
undefined4 ov96_021E5F24();
undefined4 ov96_021E60D8();
undefined4 ReadWholeNarcMemberByIdPair();
undefined4 ov96_0220C844();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov96_0220BE28();
undefined4 Heap_Alloc();

undefined4 *
ov96_0220B7F4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             undefined4 param_5)

{
  uint uVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  undefined4 *puVar5;
  uint uVar6;
  undefined4 *puStack_68;
  undefined4 auStack_60 [3];
  undefined1 auStack_54 [20];
  undefined4 auStack_40 [10];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  uVar1 = ov96_021E5F24(param_4);
  ReadWholeNarcMemberByIdPair(auStack_54,0xaa,5);
  puVar2 = (undefined4 *)Heap_Alloc(param_1,200);
  func_0x020d4994(puVar2,0,200);
  *puVar2 = param_1;
  puVar2[1] = param_2;
  puVar2[2] = param_3;
  puVar2[3] = param_4;
  puVar2[4] = param_5;
  ov96_0220C844(param_5,uVar1 & 0xff);
  uVar6 = 0;
  puStack_68 = puVar2 + 5;
  do {
    if (uVar6 != (uVar1 & 0xff)) {
      iVar4 = 0;
      puVar5 = auStack_60;
      do {
        iVar3 = ov96_021E60D8(param_4,uVar6,iVar4);
        iVar4 = iVar4 + 1;
        *puVar5 = auStack_40[*(byte *)(iVar3 + 3)];
        puVar5 = puVar5 + 1;
      } while (iVar4 < 3);
      ov96_0220BE28(puStack_68,param_2,param_3,puVar2[4],uVar6 & 0xff,param_4,auStack_60);
      puStack_68 = puStack_68 + 0xf;
    }
    uVar6 = uVar6 + 1;
  } while ((int)uVar6 < 4);
  return puVar2;
}

