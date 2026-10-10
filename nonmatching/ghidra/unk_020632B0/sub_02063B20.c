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
undefined4 sub_0205F3BC();
undefined4 sub_02063AC8();
undefined4 sub_02063A94();
undefined4 MapObject_CheckSingleMovement();

undefined4 sub_02063B20(undefined4 param_1)

{
  char *pcVar1;
  int iVar2;
  
  pcVar1 = (char *)sub_0205F3BC();
  switch(*pcVar1) {
  case '\0':
    iVar2 = sub_02063A94(param_1);
    if (iVar2 == 1) {
      *pcVar1 = *pcVar1 + '\x01';
    }
    break;
  case '\x01':
    iVar2 = sub_02063AC8(param_1);
    if (iVar2 == 0) {
      return 0;
    }
    pcVar1[2] = pcVar1[2] + '\x01';
    if (pcVar1[2] < pcVar1[3]) {
      *pcVar1 = '\0';
      return 0;
    }
    *pcVar1 = *pcVar1 + '\x01';
  case '\x02':
    iVar2 = MapObject_CheckSingleMovement(param_1);
    if (iVar2 != 1) {
      *pcVar1 = *pcVar1 + '\x01';
      pcVar1[2] = '\0';
      pcVar1[1] = '\0';
code_r0x02063b94:
      return 1;
    }
    break;
  case '\x03':
    goto code_r0x02063b94;
  }
  return 0;
}

