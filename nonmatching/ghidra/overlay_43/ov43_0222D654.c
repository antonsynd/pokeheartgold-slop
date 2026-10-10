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
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 func_0x0201bb68() __asm__("sub_0201BB68");
undefined4 ov43_0222A9F4();
undefined4 ov43_0222DB94();
undefined4 ov43_0222AD00();
undefined4 ov43_0222DAE8();
undefined4 ov43_0222AD98();
undefined4 LoadRectToBgTilemapRect();
undefined4 ov43_0222D8B8();
undefined4 ov43_0222AD40();
undefined4 ov43_0222AB20();

void ov43_0222D654(short *param_1,int param_2,undefined4 *param_3,undefined4 param_4)

{
  ushort *puVar1;
  
  ov43_0222AB20(param_3,*(undefined4 *)(param_2 + 4),
                *(undefined1 *)(param_2 + *(char *)(param_2 + 0xb) + 0x18));
  ov43_0222A9F4(param_3,param_1 + 0x94,0xd);
  puVar1 = *(ushort **)(param_1 + 0x8a);
  LoadRectToBgTilemapRect(*param_3,5,puVar1 + 6,0,0,(*puVar1 & 0x7ff) >> 3,(puVar1[1] & 0x7ff) >> 3)
  ;
  ScheduleBgTilemapBufferTransfer(*param_3,5);
  puVar1 = *(ushort **)(param_1 + 0x7e);
  LoadRectToBgTilemapRect(*param_3,0,puVar1 + 6,0,0,(*puVar1 & 0x7ff) >> 3,(puVar1[1] & 0x7ff) >> 3)
  ;
  ScheduleBgTilemapBufferTransfer(*param_3,0);
  puVar1 = *(ushort **)(param_1 + 0x82);
  LoadRectToBgTilemapRect(*param_3,2,puVar1 + 6,0,0,(*puVar1 & 0x7ff) >> 3,(puVar1[1] & 0x7ff) >> 3)
  ;
  ScheduleBgTilemapBufferTransfer(*param_3,2);
  ov43_0222D8B8(param_1,param_2,param_3,param_4);
  ov43_0222AD98(param_3,0,0);
  ov43_0222DAE8(param_1,param_2,param_3,0,(int)*param_1,param_4);
  ov43_0222DB94(param_1,param_3,0xff);
  Sprite_SetPositionXY(param_3[0x7d],0xf4,0x18);
  ov43_0222AD40(param_3,2,0);
  Sprite_SetPositionXY(param_3[0x7e],0xf4,0x88);
  ov43_0222AD40(param_3,3,0);
  ov43_0222AD00(param_3,1);
  func_0x0201bb68(2,0);
  return;
}

