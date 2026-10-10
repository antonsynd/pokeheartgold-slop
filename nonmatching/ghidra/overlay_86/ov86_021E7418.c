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
undefined4 sub_020312C4();
undefined4 Heap_Free();
undefined4 sub_020312E0();
undefined4 ov86_021E73EC();
undefined4 Heap_Alloc();
undefined4 sub_0205C144();

void ov86_021E7418(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  uint uStack_24;
  uint uStack_1c;
  int iStack_18;
  
  iVar1 = sub_020312C4(*(undefined4 *)(param_1 + 0x224),0xb,&iStack_18);
  if (iStack_18 == 1) {
    uStack_24 = 0;
    do {
      iVar2 = ov86_021E73EC(uStack_24,&uStack_1c);
      iVar6 = param_1 + uStack_24 * 8;
      uVar3 = Heap_Alloc(0x79,uStack_1c << 1);
      *(undefined4 *)(iVar6 + 0x260) = uVar3;
      uVar5 = 0;
      if (uStack_1c != 0) {
        do {
          uVar3 = sub_0205C144(*(undefined1 *)(param_1 + 6));
          iVar4 = sub_020312E0(*(undefined4 *)(param_1 + 0x224),iVar1,uVar3,
                               *(undefined2 *)(iVar2 + uVar5 * 2));
          if (iVar4 != 0) {
            *(undefined2 *)(*(int *)(iVar6 + 0x260) + *(int *)(iVar6 + 0x264) * 2) =
                 *(undefined2 *)(iVar2 + uVar5 * 2);
            *(int *)(iVar6 + 0x264) = *(int *)(iVar6 + 0x264) + 1;
          }
          uVar5 = uVar5 + 1 & 0xffff;
        } while (uVar5 < uStack_1c);
      }
      Heap_Free(iVar2);
      uStack_24 = uStack_24 + 1 & 0xffff;
    } while (uStack_24 < 0x1a);
  }
  if (iVar1 != 0) {
    Heap_Free();
  }
  return;
}

