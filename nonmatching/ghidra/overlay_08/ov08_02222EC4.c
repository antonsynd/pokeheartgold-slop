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
undefined4 ov08_02222D90();
undefined4 PlaySE();
undefined4 ov08_02223CD4();
undefined4 ov08_02222B8C();
undefined4 PaletteData_GetSelectedBuffersBitmask();
undefined4 ov08_02224938();
undefined4 func_0x0226bd50() __asm__("sub_0226BD50");
undefined4 ov08_02222D84();

undefined4 ov08_02222EC4(int *param_1)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 uVar3;

  iVar2 = PaletteData_GetSelectedBuffersBitmask(param_1[2]);
  if (iVar2 != 0) {
    return 0xc;
  }
  switch(*(undefined1 *)((int)param_1 + 0x1159)) {
  case 0:
    iVar2 = func_0x0226bd50(param_1[0xe]);
    if (iVar2 == 1) {
      PlaySE(0x5dd);
      *(undefined1 *)((int)param_1 + 0x114d) = 2;
      *(undefined1 *)((int)param_1 + 0x114b) = 0xc;
      ov08_02224938(param_1,2,0);
      *(undefined1 *)((int)param_1 + 0x115a) = 0;
      *(char *)((int)param_1 + 0x1159) = *(char *)((int)param_1 + 0x1159) + '\x01';
      return 0xb;
    }
    *(char *)((int)param_1 + 0x115a) = *(char *)((int)param_1 + 0x115a) + '\x01';
    break;
  case 1:
    ov08_02222D84(param_1);
    *(char *)((int)param_1 + 0x1159) = *(char *)((int)param_1 + 0x1159) + '\x01';
    break;
  case 2:
    iVar2 = func_0x0226bd50(param_1[0xe]);
    if (iVar2 == 1) {
      PlaySE(0x5dd);
      *(undefined1 *)(*param_1 + (uint)*(byte *)((int)param_1 + 0x114d) + 0x27) = 0;
      *(undefined1 *)((int)param_1 + 0x114b) = 0xc;
      ov08_02224938(param_1,6);
      *(undefined1 *)((int)param_1 + 0x115a) = 0;
      *(char *)((int)param_1 + 0x1159) = *(char *)((int)param_1 + 0x1159) + '\x01';
      return 0xb;
    }
    *(char *)((int)param_1 + 0x115a) = *(char *)((int)param_1 + 0x115a) + '\x01';
    break;
  case 3:
    ov08_02222D90(param_1);
    *(char *)((int)param_1 + 0x1159) = *(char *)((int)param_1 + 0x1159) + '\x01';
    break;
  case 4:
    iVar2 = func_0x0226bd50(param_1[0xe]);
    if (iVar2 == 1) {
      PlaySE(0x5dd);
      uVar1 = ov08_02223CD4(param_1,*(undefined1 *)
                                     (*param_1 + (uint)*(byte *)((int)param_1 + 0x114d) + 0x27));
      *(undefined2 *)(*param_1 + 0x1c) = uVar1;
      *(undefined1 *)(*param_1 + 0x1e) = *(undefined1 *)((int)param_1 + 0x114d);
      ov08_02224938(param_1,0xf,0);
      uVar3 = ov08_02222B8C(param_1);
      return uVar3;
    }
    *(char *)((int)param_1 + 0x115a) = *(char *)((int)param_1 + 0x115a) + '\x01';
  }
  return 0xc;
}

