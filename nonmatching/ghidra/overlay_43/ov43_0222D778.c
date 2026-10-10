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
undefined4 Sprite_SetPositionXY();
undefined4 ov43_0222DB84();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 ov43_0222DACC();
undefined4 func_0x0201bb68() __asm__("sub_0201BB68");
undefined4 ov43_0222DF90();
undefined4 ov43_0222AD00();
undefined4 ov43_0222DC7C();
undefined4 LoadRectToBgTilemapRect();
undefined4 ov43_0222AD40();
undefined4 ov43_0222AA70();
undefined4 FillBgTilemapRect();

void ov43_0222D778(int param_1,undefined4 *param_2)

{
  ushort *puVar1;
  int iVar2;
  int iVar3;

  ov43_0222AD00(param_2,0);
  Sprite_SetPositionXY(param_2[0x7d],8,0x62);
  ov43_0222AD40(param_2,0,0);
  Sprite_SetPositionXY(param_2[0x7e],0xf8,0x62);
  ov43_0222AD40(param_2,1,0);
  iVar3 = 0;
  iVar2 = param_1 + 0x14;
  do {
    ov43_0222DF90(iVar2,param_2);
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 0x4c;
  } while (iVar3 < 3);
  ov43_0222DC7C(param_1,param_2);
  ov43_0222DB84(param_1,param_2);
  ov43_0222DACC(param_1);
  FillBgTilemapRect(*param_2,5,0,0,0,0x20,0x20,0);
  FillBgTilemapRect(*param_2,4,0,0,0,0x20,0x20,0);
  FillBgTilemapRect(*param_2,2,0,0,0,0x20,0x20,0);
  ScheduleBgTilemapBufferTransfer(*param_2,5);
  ScheduleBgTilemapBufferTransfer(*param_2,4);
  ScheduleBgTilemapBufferTransfer(*param_2,2);
  puVar1 = *(ushort **)(param_1 + 0x10c);
  LoadRectToBgTilemapRect(*param_2,0,puVar1 + 6,0,0,(*puVar1 & 0x7ff) >> 3,(puVar1[1] & 0x7ff) >> 3)
  ;
  ScheduleBgTilemapBufferTransfer(*param_2,0);
  ov43_0222AA70(param_2);
  func_0x0201bb68(2,2);
  return;
}

