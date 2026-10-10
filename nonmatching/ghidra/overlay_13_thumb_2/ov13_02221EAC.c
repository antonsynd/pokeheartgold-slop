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
typedef void code(void);
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
undefined4 ov13_02222A84();
undefined4 ov13_02222968();

undefined4 ov13_02221EAC(int param_1,int param_2)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  byte *pbVar4;
  
  pbVar4 = (byte *)(param_1 + 6);
  do {
    uVar2 = ov13_02222A84(*(undefined2 *)(pbVar4 + 2));
    bVar1 = *pbVar4;
    if (bVar1 < 0x36) {
      if (bVar1 < 0x35) {
        if (bVar1 == 0x30) {
LAB_02221ee6:
          if (0x40 < uVar2) {
            return 0xffffffff;
          }
        }
      }
      else {
LAB_02221ef2:
        if (0x21 < uVar2) {
          return 0xffffffff;
        }
      }
    }
    else if (bVar1 < 0x41) {
      if (bVar1 == 0x40) goto LAB_02221ee6;
    }
    else if (bVar1 == 0x45) goto LAB_02221ef2;
    if (bVar1 < 0x36) {
      if (bVar1 < 0x35) {
        if (bVar1 != 0x30) {
          return 0xffffffff;
        }
        goto LAB_02221f18;
      }
LAB_02221f26:
      if ((uVar2 != 0) && (pbVar4[uVar2 + 5] != 0)) {
        return 0xffffffff;
      }
      ov13_02222968(param_2 + 8,pbVar4 + 6,uVar2);
    }
    else {
      if (0x40 < bVar1) {
        if (bVar1 != 0x45) {
          return 0xffffffff;
        }
        goto LAB_02221f26;
      }
      if (bVar1 != 0x40) {
        return 0xffffffff;
      }
LAB_02221f18:
      ov13_02222968(param_2 + 0x30,pbVar4 + 6,uVar2);
      *(uint *)(param_2 + 4) = uVar2;
    }
    if (*(short *)(pbVar4 + 4) == 0) {
      return 0;
    }
    iVar3 = ov13_02222A84();
    pbVar4 = (byte *)(param_1 + 6) + iVar3;
  } while( true );
}

