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
undefined4 SpriteTransfer_DeleteCharTransferTask();
undefined4 String_Delete();
undefined4 DestroySingle2DGfxResObj();
undefined4 func_0x020139c8() __asm__("sub_020139C8");
undefined4 SpriteTransfer_DeletePlttTransferTask();
undefined4 Sprite_Delete();
undefined4 func_0x02013938() __asm__("sub_02013938");
undefined4 func_0x02021b5c() __asm__("sub_02021B5C");

void ov91_02261790(undefined4 *param_1,int param_2)

{
  func_0x020139c8(param_1[0x12]);
  SpriteTransfer_DeletePlttTransferTask(param_1[0x18]);
  DestroySingle2DGfxResObj(*(undefined4 *)(param_2 + 0x14c),param_1[0x18]);
  func_0x02021b5c(param_1 + 0x14);
  func_0x02013938(param_1[0x13]);
  String_Delete(param_1[0x17]);
  Sprite_Delete(param_1[0xd]);
  SpriteTransfer_DeleteCharTransferTask(*param_1);
  SpriteTransfer_DeletePlttTransferTask(param_1[1]);
  DestroySingle2DGfxResObj(*(undefined4 *)(param_2 + 0x148),*param_1);
  DestroySingle2DGfxResObj(*(undefined4 *)(param_2 + 0x14c),param_1[1]);
  DestroySingle2DGfxResObj(*(undefined4 *)(param_2 + 0x150),param_1[2]);
  DestroySingle2DGfxResObj(*(undefined4 *)(param_2 + 0x154),param_1[3]);
  return;
}

