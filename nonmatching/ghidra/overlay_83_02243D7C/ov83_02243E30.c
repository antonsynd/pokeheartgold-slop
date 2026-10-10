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
undefined4 String_Delete();
undefined4 ov83_02247A18();
undefined4 ov83_0224442C();
undefined4 FontID_Release();
undefined4 ov83_022471FC();
undefined4 MessageFormat_Delete();
undefined4 PaletteData_Free();
undefined4 ov83_0224791C();
undefined4 sub_0203A914();
undefined4 MessagePrinter_Delete();
undefined4 DestroyMsgData();
undefined4 ov83_02247858();
undefined4 PaletteData_FreeBuffers();
undefined4 NARC_Delete();
undefined4 func_0x02237b58() __asm__("sub_02237B58");
undefined4 ov83_02247CC4();
undefined4 ov83_0224753C();

void ov83_02243E30(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uStack_1c;

  ov83_02247858(param_1 + 0x604);
  ov83_02247CC4(*(undefined4 *)(param_1 + 0x5f4));
  ov83_02247A18(*(undefined4 *)(param_1 + 0x5f0));
  ov83_0224753C(*(undefined4 *)(param_1 + 0x508));
  ov83_0224753C(*(undefined4 *)(param_1 + 0x50c));
  ov83_0224753C(*(undefined4 *)(param_1 + 0x540));
  ov83_0224753C(*(undefined4 *)(param_1 + 0x544));
  uStack_1c = 0;
  iVar3 = param_1;
  do {
    iVar1 = 0;
    iVar2 = iVar3;
    do {
      ov83_0224753C(*(undefined4 *)(iVar2 + 0x520));
      iVar1 = iVar1 + 1;
      iVar2 = iVar2 + 4;
    } while (iVar1 < 2);
    iVar3 = iVar3 + 8;
    uStack_1c = uStack_1c + 1;
  } while (uStack_1c < 4);
  iVar2 = func_0x02237b58(*(undefined1 *)(param_1 + 9),1);
  iVar1 = 0;
  iVar3 = param_1;
  if (0 < iVar2) {
    do {
      ov83_0224753C(*(undefined4 *)(iVar3 + 0x4f4));
      ov83_0224753C(*(undefined4 *)(iVar3 + 0x4e4));
      ov83_0224753C(*(undefined4 *)(iVar3 + 0x510));
      iVar1 = iVar1 + 1;
      iVar3 = iVar3 + 4;
    } while (iVar1 < iVar2);
  }
  sub_0203A914();
  PaletteData_FreeBuffers(*(undefined4 *)(param_1 + 0x2b0),2);
  PaletteData_FreeBuffers(*(undefined4 *)(param_1 + 0x2b0),0);
  PaletteData_Free(*(undefined4 *)(param_1 + 0x2b0));
  *(undefined4 *)(param_1 + 0x2b0) = 0;
  ov83_022471FC(param_1 + 0x2c8);
  DestroyMsgData(*(undefined4 *)(param_1 + 0x20));
  MessageFormat_Delete(*(undefined4 *)(param_1 + 0x24));
  String_Delete(*(undefined4 *)(param_1 + 0x28));
  String_Delete(*(undefined4 *)(param_1 + 0x2c));
  MessagePrinter_Delete(*(undefined4 *)(param_1 + 0x2b4));
  FontID_Release(4);
  iVar2 = 0;
  iVar3 = param_1;
  do {
    String_Delete(*(undefined4 *)(iVar3 + 0x30));
    iVar2 = iVar2 + 1;
    iVar3 = iVar3 + 4;
  } while (iVar2 < 3);
  ov83_0224791C(param_1 + 0x50,1);
  ov83_0224442C(*(undefined4 *)(param_1 + 0x4c));
  NARC_Delete(*(undefined4 *)(param_1 + 0x560));
  return;
}

