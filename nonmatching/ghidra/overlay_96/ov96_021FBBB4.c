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
unsigned short LCRandom(void);
undefined4 GF_AssertFail(void);
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
unsigned char PokeathlonCourse_GetParticipantCount(void *);
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x020f1cc8() __asm__("sub_020F1CC8");
undefined4 ov96_021E60D8();
undefined4 func_0x020f2178() __asm__("sub_020F2178");

void ov96_021FBBB4(undefined4 param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 extraout_r1;
  int iVar6;
  uint uVar7;
  
  iVar1 = PokeathlonCourse_GetHeapAllocPtr4();
  uVar2 = PokeathlonCourse_GetParticipantCount(param_1);
  for (uVar5 = uVar2; uVar5 < 4; uVar5 = uVar5 + 1 & 0xff) {
    uVar7 = 0;
    do {
      iVar6 = iVar1 + 0x238 + (uVar7 + (uVar5 - uVar2) * 3 & 0xff) * 0x28;
      iVar3 = ov96_021E60D8(param_1,uVar5,uVar7);
      uVar4 = func_0x020f2178(*(undefined4 *)(param_2 + (uint)*(byte *)(iVar3 + 1) * 4 + 0x3c));
      uVar4 = func_0x020f1cc8(uVar4,0x41200000);
      *(undefined4 *)(iVar6 + 0x10) = uVar4;
      uVar4 = func_0x020f2178(*(undefined4 *)(param_2 + (uint)*(byte *)(iVar3 + 4) * 4 + 0x28));
      uVar4 = func_0x020f1cc8(uVar4,0x42c80000);
      *(undefined4 *)(iVar6 + 0x14) = uVar4;
      uVar4 = LCRandom();
      func_0x020f2998(uVar4,6); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
      switch(extraout_r1) {
      case 0:
        *(undefined1 *)(iVar6 + 3) = 10;
        *(undefined1 *)(iVar6 + 4) = 0x32;
        break;
      case 1:
        *(undefined1 *)(iVar6 + 3) = 0x14;
        *(undefined1 *)(iVar6 + 4) = 0x32;
        break;
      case 2:
        *(undefined1 *)(iVar6 + 3) = 0x1e;
        *(undefined1 *)(iVar6 + 4) = 0x3c;
        break;
      case 3:
        *(undefined1 *)(iVar6 + 3) = 0x14;
        *(undefined1 *)(iVar6 + 4) = 0x46;
        break;
      case 4:
        *(undefined1 *)(iVar6 + 3) = 0x1e;
        *(undefined1 *)(iVar6 + 4) = 0x46;
        break;
      case 5:
        *(undefined1 *)(iVar6 + 3) = 0x28;
        *(undefined1 *)(iVar6 + 4) = 0x50;
        break;
      default:
        GF_AssertFail();
      }
      uVar7 = uVar7 + 1 & 0xff;
    } while (uVar7 < 3);
  }
  return;
}

