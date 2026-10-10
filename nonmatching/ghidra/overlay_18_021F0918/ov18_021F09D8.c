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
undefined4 BufferString();
undefined4 String_Delete();
undefined4 ov18_021E590C();

int ov18_021F09D8(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  ushort uVar2;
  byte bVar3;
  undefined4 uVar4;

  uVar2 = *(ushort *)(param_1 + 0x18a2);
  if (uVar2 < 0x19e) {
    if (uVar2 < 0x19c) {
      if (uVar2 < 0xca) {
        if (200 < uVar2) {
          return 0x79;
        }
        if (uVar2 == 0xac) {
          bVar3 = *(byte *)(param_1 + param_2 + 0x18a4) ^ 0x80;
          if (bVar3 == 0) {
            return 0x72;
          }
          if (bVar3 != 1) {
            return 0xa6;
          }
          return 0x73;
        }
      }
      else if (uVar2 < 0x160) {
        if (uVar2 == 0x15f) {
          return (*(byte *)(param_1 + param_2 + 0x18a4) ^ 0x80) + 0xa0;
        }
      }
      else if (uVar2 == 0x182) {
        return (*(byte *)(param_1 + param_2 + 0x18a4) ^ 0x80) + 0x91;
      }
    }
    else if ((uVar2 == 0x19c) || (uVar2 == 0x19d)) {
      return (*(byte *)(param_1 + param_2 + 0x18a4) ^ 0x80) + 0x76;
    }
  }
  else if (uVar2 < 0x1e0) {
    if (0x1de < uVar2) {
      return (*(byte *)(param_1 + param_2 + 0x18a4) ^ 0x80) + 0x99;
    }
    if (uVar2 < 0x1a6) {
      if (uVar2 == 0x1a5) {
        return (*(byte *)(param_1 + param_2 + 0x18a4) ^ 0x80) + 0xa4;
      }
    }
    else if (((uVar2 < 0x1a8) && (0x1a5 < uVar2)) && ((uVar2 == 0x1a6 || (uVar2 == 0x1a7)))) {
      return (*(byte *)(param_1 + param_2 + 0x18a4) ^ 0x80) + 0x74;
    }
  }
  else if (uVar2 < 0x1e8) {
    if (uVar2 == 0x1e7) {
      return (*(byte *)(param_1 + param_2 + 0x18a4) ^ 0x80) + 0x97;
    }
  }
  else if (uVar2 == 0x1ec) {
    return (*(byte *)(param_1 + param_2 + 0x18a4) ^ 0x80) + 0x95;
  }
  cVar1 = *(char *)(param_1 + param_2 + 0x18a4);
  if (cVar1 == '\x01') {
    return 0x72;
  }
  if (cVar1 != '\x02') {
    uVar4 = ov18_021E590C(uVar2,2,0x25);
    BufferString(*(undefined4 *)(param_1 + 0x660),0,uVar4,2,1,2,param_4);
    String_Delete(uVar4);
    return 0x9f;
  }
  return 0x73;
}

