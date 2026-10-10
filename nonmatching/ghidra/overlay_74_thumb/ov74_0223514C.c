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
undefined4 func_0x020e138c() __asm__("sub_020E138C");
undefined4 CRYPTO_SetAllocator();
undefined4 CRYPTO_VerifySignature();
undefined4 func_0x020e1058() __asm__("sub_020E1058");
undefined4 func_0x020e1678() __asm__("sub_020E1678");
extern undefined UNK_0223b690 __asm__("sub_0223B690");
extern undefined ov74_0223CE9C;

undefined4 ov74_0223514C(void)

{
  uint uVar1;
  int iVar2;
  undefined4 in_r3;
  uint uVar3;
  uint *puVar4;
  undefined1 auStack_540 [128];
  undefined1 auStack_4c0 [1192];
  undefined4 uStack_18;

  uStack_18 = in_r3;
  uVar1 = func_0x020e1058();
  uVar3 = 0;
  puVar4 = (uint *)&ov74_0223CE9C;
  do {
    if ((uVar1 >> 0x18 | (uVar1 >> 8 & 0xff) << 0x10 | uVar1 << 0x18 | (uVar1 >> 0x10 & 0xff) << 8)
        == *puVar4) {
      func_0x020e1678(1);
      func_0x020e138c(0x8100000,auStack_4c0,0x4a8);
      func_0x020e138c(0x8020000,auStack_540,0x80);
      func_0x020e1678(0);
      CRYPTO_SetAllocator(0x2235139,0x201ab0d);
      iVar2 = CRYPTO_VerifySignature(auStack_4c0,0x4a8,auStack_540,&UNK_0223b690);
      if (iVar2 != 0) {
        return 1;
      }
    }
    puVar4 = puVar4 + 1;
    uVar3 = uVar3 + 1;
  } while (uVar3 < *puVar4);
  return 0;
}

