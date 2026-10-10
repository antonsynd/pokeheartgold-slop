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
void * SpriteSystem_GetRenderer(void *);
undefined4 ScheduleSetBgPosText(void *, unsigned char, int, int);
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 GF_AssertFail(void);
undefined4 SysTask_Destroy(void *);
undefined4 G2dRenderer_SetMainSurfaceCoords(void *, int, int);

void ov96_02215710(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int extraout_r1;
  int iVar3;

  if (param_2[6] == 0) {
    iVar2 = 1;
  }
  else {
    iVar2 = -1;
  }
  iVar2 = iVar2 * ((int)param_2[3] >> 0xc);
  iVar3 = iVar2 / 2;
  func_0x020f2998((int)*(char *)(param_2 + 5),3,param_3,param_4,param_4); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
  if (extraout_r1 == 0) {
    iVar3 = -iVar3;
  }
  else if (extraout_r1 == 1) {
    iVar3 = 0;
  }
  else if (extraout_r1 != 2) {
    GF_AssertFail();
  }
  ScheduleSetBgPosText(param_2[1],0,0,iVar3);
  ScheduleSetBgPosText(param_2[1],1,0,iVar3);
  ScheduleSetBgPosText(param_2[1],2,0,iVar3);
  ScheduleSetBgPosText(param_2[1],3,0,iVar3);
  ScheduleSetBgPosText(param_2[1],0,3,iVar2);
  ScheduleSetBgPosText(param_2[1],1,3,iVar2);
  ScheduleSetBgPosText(param_2[1],2,3,iVar2);
  ScheduleSetBgPosText(param_2[1],3,3,iVar2);
  uVar1 = SpriteSystem_GetRenderer(*param_2);
  G2dRenderer_SetMainSurfaceCoords(uVar1,iVar3 << 0xc,iVar2 * 0x1000);
  param_2[3] = param_2[3] - param_2[4];
  param_2[6] = param_2[6] ^ 1;
  *(char *)(param_2 + 5) = *(char *)(param_2 + 5) + '\x01';
  if ((int)(uint)*(byte *)((int)param_2 + 0x15) <= (int)*(char *)(param_2 + 5)) {
    ScheduleSetBgPosText(param_2[1],0,0,0);
    ScheduleSetBgPosText(param_2[1],1,0,0);
    ScheduleSetBgPosText(param_2[1],2,0,0);
    ScheduleSetBgPosText(param_2[1],3,0,0);
    ScheduleSetBgPosText(param_2[1],0,3,0);
    ScheduleSetBgPosText(param_2[1],1,3,0);
    ScheduleSetBgPosText(param_2[1],2,3,0);
    ScheduleSetBgPosText(param_2[1],3,3,0);
    uVar1 = SpriteSystem_GetRenderer(*param_2);
    G2dRenderer_SetMainSurfaceCoords(uVar1,0,0);
    param_2[2] = 0;
    SysTask_Destroy(param_1);
  }
  return;
}

