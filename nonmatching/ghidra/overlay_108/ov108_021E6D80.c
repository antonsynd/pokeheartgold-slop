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
undefined4 NARC_New();
undefined4 func_0x0208820c() __asm__("sub_0208820C");
undefined4 NARC_Delete();
undefined4 GfGfxLoader_GetScrnDataFromOpenNarc();
undefined4 ov108_021E7BB4();
undefined4 ov108_021E7ADC();
undefined4 ScheduleBgTilemapBufferTransfer();

void ov108_021E6D80(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  uVar1 = NARC_New(0xa6,*param_1);
  func_0x0208820c(param_1[0xd0],*param_1,uVar1,0xa6,6,3,0,0,0);
  func_0x0208820c(param_1[0xd0],*param_1,uVar1,0xa6,6,4,0,0,0);
  func_0x0208820c(param_1[0xd0],*param_1,uVar1,0xa6,1,7,0,0,0);
  func_0x0208820c(param_1[0xd0],*param_1,uVar1,0xa6,5,3,2,0,0);
  func_0x0208820c(param_1[0xd0],*param_1,uVar1,0xa6,0,7,2,0,0);
  func_0x0208820c(param_1[0xd0],*param_1,uVar1,0xa6,10,2,1,0,0);
  func_0x0208820c(param_1[0xd0],*param_1,uVar1,0xa6,7,3,1,0,0);
  func_0x0208820c(param_1[0xd0],*param_1,uVar1,0xa6,4,6,1,0,0);
  func_0x0208820c(param_1[0xd0],*param_1,uVar1,0xa6,
                  (*(char *)((int)param_1 + 0x184e3) == '\0') + '\x02',7,1,0,0);
  uVar2 = GfGfxLoader_GetScrnDataFromOpenNarc(uVar1,8,0,param_1 + 0x136,*param_1);
  param_1[0x134] = uVar2;
  uVar2 = GfGfxLoader_GetScrnDataFromOpenNarc(uVar1,9,0,param_1 + 0x135,*param_1);
  param_1[0x133] = uVar2;
  NARC_Delete(uVar1);
  ov108_021E7ADC(param_1);
  ov108_021E7BB4(param_1,0xff,0);
  ScheduleBgTilemapBufferTransfer(param_1[0xd0],0);
  ScheduleBgTilemapBufferTransfer(param_1[0xd0],2);
  ScheduleBgTilemapBufferTransfer(param_1[0xd0],3);
  ScheduleBgTilemapBufferTransfer(param_1[0xd0],6);
  ScheduleBgTilemapBufferTransfer(param_1[0xd0],7);
  return;
}

