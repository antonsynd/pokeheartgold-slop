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
undefined4 GF_AssertFail(void);
undefined4 ov05_0221E9F8();
unsigned char AddTextPrinterParameterized(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, void *);
undefined4 sub_02037B38(unsigned char);
undefined4 ov05_0221E9C4();
undefined4 ReadMsgDataIntoString(void *, int, void *);
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 ScheduleBgTilemapBufferTransfer(void *, unsigned char);
undefined4 sub_02037AC0(unsigned char);

undefined4 ov05_0221CAB8(undefined4 *param_1)

{
  byte bVar1;
  int iVar2;

  if (*(char *)((int)param_1 + 0xb82) == '\0') {
    iVar2 = ov05_0221E9F8(param_1);
    if (iVar2 == 0) {
      GfGfx_EngineATogglePlanes(1,0);
    }
    ov05_0221E9C4((int)param_1);
    ReadMsgDataIntoString((undefined *)param_1[0x2eb],9,(undefined *)param_1[0x2ed]);
    bVar1 = AddTextPrinterParameterized
                      ((undefined *)(param_1 + 0x2e2),1,(undefined *)param_1[0x2ed],0,0,0,
                       (undefined *)0x0);
    param_1[0x2ee] = (uint)bVar1;
    sub_02037AC0(0x3e);
    if ((param_1[0x2f2] == 0) && (iVar2 = ov05_0221E9F8(param_1), iVar2 == 1)) {
      GfGfx_EngineATogglePlanes(1,1);
    }
    *(char *)((int)param_1 + 0xb82) = *(char *)((int)param_1 + 0xb82) + '\x01';
  }
  else if (*(char *)((int)param_1 + 0xb82) == '\x01') {
    iVar2 = sub_02037B38(0x3e);
    if (iVar2 != 0) {
      *(undefined1 *)((int)param_1 + 0xb82) = 0;
      return 1;
    }
  }
  else {
    GF_AssertFail();
  }
  ScheduleBgTilemapBufferTransfer((undefined *)param_1[3],0);
  return 0;
}

