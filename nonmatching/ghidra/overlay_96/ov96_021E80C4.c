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
void * PokeathlonSave_GetRecordsSolo2(void *);
undefined4 ov96_021E7D30();
void * Save_Pokeathlon_Get(void *);
extern undefined2 ov96_0221A894;
extern undefined1 DAT_0221a7d8 __asm__("sub_0221A7D8");

undefined4 ov96_021E80C4(int param_1)

{
  undefined *puVar1;
  int iVar2;
  uint uVar3;

  puVar1 = Save_Pokeathlon_Get((undefined *)**(undefined4 **)(param_1 + 0x1f8));
  puVar1 = PokeathlonSave_GetRecordsSolo2(puVar1);
  uVar3 = 0;
  while( true ) {
    if (*(ushort *)(puVar1 + uVar3 * 0x2c) == 0xffff) {
      return 0;
    }
    iVar2 = ov96_021E7D30((uint)(ushort)(&ov96_0221A894)[uVar3],
                          (uint)*(ushort *)(puVar1 + uVar3 * 0x2c),
                          (uint)(byte)(&DAT_0221a7d8)[uVar3]);
    if (iVar2 == 0) break;
    uVar3 = uVar3 + 1 & 0xff;
    if (9 < uVar3) {
      return 1;
    }
  }
  return 0;
}

