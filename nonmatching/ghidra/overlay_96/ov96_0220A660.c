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
undefined4 SysTask_Destroy();
undefined4 ScheduleSetBgPosText();
undefined4 SpriteSystem_GetRenderer();
undefined4 G2dRenderer_SetMainSurfaceCoords();

void ov96_0220A660(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  
  if (*(char *)(param_2 + 0x26e) == '\0') {
    iVar2 = -1;
  }
  else {
    iVar2 = 1;
  }
  iVar2 = iVar2 * *(char *)(param_2 + 0x26c);
  ScheduleSetBgPosText(*(undefined4 *)(param_2 + 4),0,3,iVar2);
  ScheduleSetBgPosText(*(undefined4 *)(param_2 + 4),1,3,iVar2);
  uVar1 = SpriteSystem_GetRenderer(*(undefined4 *)(param_2 + 8));
  G2dRenderer_SetMainSurfaceCoords(uVar1,0,iVar2 * -0x1000);
  *(char *)(param_2 + 0x26c) = *(char *)(param_2 + 0x26c) - *(char *)(param_2 + 0x26d);
  *(byte *)(param_2 + 0x26e) = *(byte *)(param_2 + 0x26e) ^ 1;
  if (*(char *)(param_2 + 0x26c) < '\x01') {
    ScheduleSetBgPosText(*(undefined4 *)(param_2 + 4),0,3,0x10);
    ScheduleSetBgPosText(*(undefined4 *)(param_2 + 4),1,3,0);
    uVar1 = SpriteSystem_GetRenderer(*(undefined4 *)(param_2 + 8));
    G2dRenderer_SetMainSurfaceCoords(uVar1,0,0);
    *(undefined4 *)(param_2 + 0x268) = 0;
    SysTask_Destroy(param_1);
  }
  return;
}

