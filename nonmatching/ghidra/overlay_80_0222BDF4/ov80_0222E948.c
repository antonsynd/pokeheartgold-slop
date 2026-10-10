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
void * ListMenuInit(void *, unsigned short, unsigned short, int);
undefined4 ov80_0222EB54();
void * SysTask_CreateOnMainQueue(void *, void *, unsigned int);
undefined4 AddWindowParameterized(void *, void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, unsigned short);
undefined4 ov80_0222EE7C();
undefined4 ov80_0222EB14();
undefined4 DrawFrameAndWindow1(void *, int, unsigned short, unsigned char);
void * FrontierSystem_GetFrontierMap(void *);

void ov80_0222E948(int *param_1)

{
  undefined4 *puVar1;
  uint uVar2;
  undefined *puVar3;
  byte bVar4;

  puVar1 = (undefined4 *)FrontierSystem_GetFrontierMap((undefined *)*param_1);
  uVar2 = ov80_0222EB14(param_1);
  if ((uVar2 & 7) == 0) {
    bVar4 = (byte)(uVar2 >> 3);
  }
  else {
    bVar4 = (char)(uVar2 >> 3) + 1;
  }
  if ((int)((uint)*(byte *)((int)param_1 + 0x97) << 0x19) < 0) {
    *(byte *)(param_1 + 0x26) = (char)param_1[0x26] - bVar4;
  }
  if (*(byte *)((int)param_1 + 0x9b) < 9) {
    if ((int)((uint)*(byte *)((int)param_1 + 0x97) << 0x18) < 0) {
      *(byte *)((int)param_1 + 0x99) =
           *(char *)((int)param_1 + 0x99) + *(byte *)((int)param_1 + 0x9b) * -2;
    }
    AddWindowParameterized
              ((undefined *)*puVar1,(undefined *)(param_1 + 2),1,*(byte *)(param_1 + 0x26),
               *(byte *)((int)param_1 + 0x99),bVar4,*(char *)((int)param_1 + 0x9b) << 1,0xe,1);
  }
  else {
    if ((int)((uint)*(byte *)((int)param_1 + 0x97) << 0x18) < 0) {
      *(char *)((int)param_1 + 0x99) = *(char *)((int)param_1 + 0x99) + -0x10;
    }
    AddWindowParameterized
              ((undefined *)*puVar1,(undefined *)(param_1 + 2),1,*(byte *)(param_1 + 0x26),
               *(byte *)((int)param_1 + 0x99),bVar4,0x10,0xe,1);
  }
  DrawFrameAndWindow1((undefined *)(param_1 + 2),1,0x3d9,0xc);
  ov80_0222EB54(param_1);
  puVar3 = ListMenuInit((undefined *)(param_1 + 0x65),0,(ushort)*(byte *)((int)param_1 + 0x96),
                        *(uint *)(*param_1 + 0x34) & 0xff);
  param_1[0x6d] = (int)puVar3;
  ov80_0222EE7C(param_1);
  puVar3 = SysTask_CreateOnMainQueue((undefined *)0x222ec91,(undefined *)param_1,0);
  param_1[1] = (int)puVar3;
  return;
}

