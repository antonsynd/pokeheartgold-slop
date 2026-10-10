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
undefined4 ov85_021E7644();
undefined4 ov85_021E8558();
undefined4 ov85_021E750C();
undefined4 ov85_021E8150();
undefined4 sub_02096D4C();
undefined4 ov85_021E834C();
undefined4 ov85_021E8128();
undefined4 ov85_021E8570();
undefined4 ov85_021E8358();
undefined4 ov85_021E8144();

undefined4 ov85_021E60F0(undefined4 *param_1)

{
  int iVar1;
  
  if (param_1[0xf] == 1) {
    param_1[0x44] = (uint)*(ushort *)((int)param_1 + 0x5e) << 0xc;
    param_1[0x47] = (int)*(short *)(param_1 + 0x17) << 0xc;
    param_1[2] = (uint)*(ushort *)((int)param_1 + 0x5a);
  }
  iVar1 = ov85_021E8570(param_1);
  if ((iVar1 == 1) && (iVar1 = ov85_021E8150(param_1), iVar1 == 0)) {
    *param_1 = 0x1d;
    return 1;
  }
  if ((param_1[0xd] != 0) && (iVar1 = ov85_021E8150(param_1), iVar1 == 0)) {
    ov85_021E8128(param_1);
  }
  iVar1 = ov85_021E834C(param_1);
  if ((iVar1 == 0) && (iVar1 = ov85_021E750C(param_1), iVar1 == 1)) {
    iVar1 = ov85_021E8150(param_1);
    if (iVar1 == 0) {
      ov85_021E8128(param_1);
      param_1[0xe] = 1;
    }
    ov85_021E8358(param_1);
  }
  if ((param_1[0xe] != 0) &&
     (iVar1 = sub_02096D4C(*(undefined4 *)(param_1[0x33] + 0x30),10,param_1 + 0xe,1), iVar1 == 1)) {
    param_1[0xe] = 0;
  }
  iVar1 = ov85_021E8144(param_1);
  if (iVar1 == 1) {
    ov85_021E7644(param_1 + 0x35,param_1[0x47] << 1);
  }
  else {
    ov85_021E8558(param_1,param_1[0x47]);
  }
  return 0;
}

