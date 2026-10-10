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
undefined4 ov74_02235464();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 MessageFormat_New();
undefined4 MessageFormat_Delete();
undefined4 ov74_02235414();
undefined4 ov74_02235568();
undefined4 BufferIntegerAsString();
undefined4 ov74_0223546C();

void ov74_0222ACD8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_68 [20];
  undefined4 uStack_54;
  undefined4 uStack_14;

  iVar2 = param_1[0x99b];
  if (iVar2 == -1) {
    iVar2 = 0xb;
  }
  uStack_14 = param_4;
  GfGfx_EngineATogglePlanes(0x10,0);
  BgClearTilemapBufferAndCommit(*param_1,0);
  uVar1 = MessageFormat_New(0x54);
  BufferIntegerAsString(uVar1,0,param_1[0x99c],5,2,1);
  ov74_02235414(auStack_68,param_1 + 0x9a0,1,800,0x1f,3);
  ov74_02235464(auStack_68,0x18,0x10,100);
  ov74_0223546C(auStack_68,0,1);
  uStack_54 = uVar1;
  ov74_02235568(*param_1,auStack_68,4,4,iVar2);
  MessageFormat_Delete(uVar1);
  return;
}

