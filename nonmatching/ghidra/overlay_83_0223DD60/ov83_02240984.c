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
undefined4 ov83_022479E4();
undefined4 ov83_02241DD8();
undefined4 ov83_02240C48();
undefined4 GetWindowWidth();
undefined4 BufferBoxMonNickname();
undefined4 ScheduleWindowCopyToVram();
undefined4 FillWindowPixelBuffer();
undefined4 BufferItemName();
undefined4 Mon_GetBoxMon();

void ov83_02240984(int param_1)

{
  byte bVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  
  uVar4 = 0x3e;
  iVar3 = param_1 + 0x430;
  do {
    FillWindowPixelBuffer(iVar3,0);
    uVar4 = uVar4 + 1;
    iVar3 = iVar3 + 0x10;
  } while (uVar4 < 0x46);
  ov83_022479E4(param_1 + 0x450,*(undefined4 *)(param_1 + 0x20),0x58,0,0,0,0x10200,0);
  ov83_022479E4(param_1 + 0x490,*(undefined4 *)(param_1 + 0x20),0x46,0,0,0,0x10200,0);
  ov83_022479E4(param_1 + 0x470,*(undefined4 *)(param_1 + 0x20),0x59,0,0,0,0x10200,0);
  ov83_02240C48(param_1,0,*(undefined2 *)(param_1 + 0x818),3,0);
  ov83_02240C48(param_1,1,*(undefined2 *)(param_1 + 0x81a),3,0);
  iVar3 = GetWindowWidth(param_1 + 0x480);
  ov83_02241DD8(param_1,param_1 + 0x480,*(undefined4 *)(param_1 + 0x20),0x5f,(iVar3 * 8) / 2,0,0,
                0x10200,2);
  uVar2 = Mon_GetBoxMon(*(undefined4 *)(param_1 + 0x804));
  BufferBoxMonNickname(*(undefined4 *)(param_1 + 0x24),0,uVar2);
  ov83_02241DD8(param_1,param_1 + 0x430,*(undefined4 *)(param_1 + 0x20),0x5b,0,0,0,0x10200,0);
  bVar1 = *(byte *)(param_1 + 0x80e);
  if (-1 < (int)((uint)bVar1 << 0x18)) {
    if ((bVar1 & 0x7f) == 0) {
      ov83_022479E4(param_1 + 0x440,*(undefined4 *)(param_1 + 0x20),0x56,0,0,0,0x50600,0);
    }
    else if ((bVar1 & 0x7f) == 1) {
      ov83_022479E4(param_1 + 0x440,*(undefined4 *)(param_1 + 0x20),0x57,0,0,0,0x30400,0);
    }
  }
  ov83_02240C48(param_1,0,*(undefined1 *)(param_1 + 0x80f),3,0);
  ov83_02241DD8(param_1,param_1 + 0x460,*(undefined4 *)(param_1 + 0x20),0x5e,0,0,0,0x10200,0);
  BufferItemName(*(undefined4 *)(param_1 + 0x24),0,*(undefined2 *)(param_1 + 0x812));
  ov83_02241DD8(param_1,param_1 + 0x4a0,*(undefined4 *)(param_1 + 0x20),0x47,0,0,0,0x10200,0);
  uVar4 = 0x3e;
  param_1 = param_1 + 0x430;
  do {
    ScheduleWindowCopyToVram(param_1);
    uVar4 = uVar4 + 1;
    param_1 = param_1 + 0x10;
  } while (uVar4 < 0x46);
  return;
}

