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
undefined4 BufferIntegerAsString();
undefined4 NewString_ReadMsgData();
undefined4 String_Delete();
undefined4 BufferString();
undefined4 StringExpandPlaceholders();
undefined4 func_0x0200c74c() __asm__("sub_0200C74C");

undefined4
ov45_0222E200(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             undefined4 param_5)

{
  int iVar1;
  undefined4 uVar2;

  uVar2 = param_4;
  func_0x0200c74c(param_3,0,*(undefined4 *)(param_1 + 4));
  if (*(int *)(param_1 + 0xc) == 1) {
    iVar1 = *(int *)(param_1 + 8);
    if (iVar1 == 2) {
      BufferString(param_3,1,*(undefined4 *)(param_1 + 0x10),0,1,2,uVar2);
      BufferString(param_3,2,*(undefined4 *)(param_1 + 0x14),0,1,2);
      uVar2 = 0x13;
    }
    else if (iVar1 == 3) {
      BufferString(param_3,1,*(undefined4 *)(param_1 + 0x10),0,1,2,uVar2);
      BufferString(param_3,2,*(undefined4 *)(param_1 + 0x14),0,1,2);
      BufferString(param_3,3,*(undefined4 *)(param_1 + 0x18),0,1,2);
      uVar2 = 0x12;
    }
    else {
      if (iVar1 != 4) {
        return 0;
      }
      BufferString(param_3,1,*(undefined4 *)(param_1 + 0x10),0,1,2,uVar2);
      BufferString(param_3,2,*(undefined4 *)(param_1 + 0x14),0,1,2);
      BufferString(param_3,3,*(undefined4 *)(param_1 + 0x18),0,1,2);
      BufferString(param_3,4,*(undefined4 *)(param_1 + 0x1c),0,1,2);
      uVar2 = 6;
    }
    uVar2 = NewString_ReadMsgData(param_4,uVar2);
  }
  else {
    BufferString(param_3,1,*(undefined4 *)(param_1 + 0x10),0,1,2,uVar2);
    BufferIntegerAsString(param_3,2,4 - *(int *)(param_1 + 8),1,1,1);
    uVar2 = NewString_ReadMsgData(param_4,5);
  }
  StringExpandPlaceholders(param_3,param_5,uVar2);
  String_Delete(uVar2);
  return 1;
}

