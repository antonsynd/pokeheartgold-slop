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
undefined4 ov08_0221F1B0();
undefined4 ov08_0221E2E8();
undefined4 String_Delete(void *);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 ScheduleWindowCopyToVram(void *);
undefined4 ov08_0221F07C();
undefined4 FillWindowPixelBuffer(void *, unsigned char);
undefined4 ov08_0221E244(void *, int, int, int, short, unsigned short, int, ...);
undefined4 ov08_0221DDCC(void *, int, int, int, unsigned char, unsigned char, ...);
undefined4 GetMoveAttr(unsigned short, int);
void * NewString_ReadMsgData(void *, int);
extern undefined4 ov08_02224FE0;

void ov08_02220084(int *param_1)

{
  int iVar1;
  undefined *puVar2;
  int iVar3;
  uint uVar4;
  
  FillWindowPixelBuffer((undefined *)param_1[0x81c],0);
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + 0x20),0);
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + 0x30),0);
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + 0x10),0);
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + 0x40),0);
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + 0x50),0);
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + 0x60),0);
  ov08_0221DDCC(param_1,0,0,(uint)*(byte *)(*param_1 + 0x11),0,0);
  ov08_0221E2E8((int)param_1,2,0,0);
  puVar2 = NewString_ReadMsgData((undefined *)param_1[0x7ea],0x39);
  AddTextPrinterParameterizedWithColor
            ((undefined *)(param_1[0x81c] + 0x40),0,puVar2,0,0,0xff,0xf0e00,(undefined *)0x0);
  String_Delete(puVar2);
  ScheduleWindowCopyToVram((undefined *)(param_1[0x81c] + 0x40));
  iVar3 = *param_1;
  uVar4 = (uint)*(byte *)(iVar3 + 0x34);
  if (uVar4 < 4) {
    iVar1 = uVar4 * 8 + (uint)*(byte *)(iVar3 + 0x11) * 0x50 + 0x34;
    ov08_0221E244(param_1,(uint)*(ushort *)
                                 (param_1 + (uint)*(byte *)(iVar3 + 0x11) * 0x14 + uVar4 * 2 + 0xd),
                  1,(&ov08_02224FE0)[uVar4],0,0,0xf0e00);
    ov08_0221F07C(param_1,3,(uint)*(byte *)((int)param_1 + iVar1 + 2),
                  (uint)*(byte *)((int)param_1 + iVar1 + 3));
  }
  else {
    uVar4 = GetMoveAttr(*(ushort *)(iVar3 + 0x24),5);
    ov08_0221E244(param_1,(uint)*(ushort *)(*param_1 + 0x24),1,0x49,0,0,0xf0e00);
    ov08_0221F07C(param_1,3,uVar4,uVar4);
  }
  ov08_0221F1B0(param_1,6);
  return;
}

