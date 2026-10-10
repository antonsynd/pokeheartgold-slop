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
undefined4 FillWindowPixelBuffer(void *, unsigned char);
undefined4 ov08_0221E244(void *, int, int, int, short, unsigned short, int, ...);
undefined4 ov08_0221E3A4();
undefined4 ov08_0221DDCC(void *, int, int, int, unsigned char, unsigned char, ...);
undefined4 ov08_0221F284();
undefined4 ScheduleWindowCopyToVram(void *);
extern undefined4 ov08_02224FE0;

void ov08_0221F7C0(int *param_1)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;

  uVar7 = (uint)*(byte *)((int)param_1 + 0x2075) * 0x60000 >> 0x10;
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + uVar7 * 0x10),0);
  iVar2 = (uVar7 + 1) * 0x10;
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + iVar2),0);
  iVar3 = (uVar7 + 2) * 0x10;
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + iVar3),0);
  iVar4 = (uVar7 + 3) * 0x10;
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + iVar4),0);
  iVar5 = (uVar7 + 4) * 0x10;
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + iVar5),0);
  FillWindowPixelBuffer((undefined *)(param_1[0x81c] + 0x50),0);
  ov08_0221DDCC(param_1,uVar7,0,(uint)*(byte *)(*param_1 + 0x11),0,0);
  uVar6 = 0;
  do {
    bVar1 = *(byte *)(*param_1 + 0x11);
    if (*(ushort *)(param_1 + (uint)bVar1 * 0x14 + uVar6 * 2 + 0xd) != 0) {
      ov08_0221E244(param_1,(uint)*(ushort *)(param_1 + (uint)bVar1 * 0x14 + uVar6 * 2 + 0xd),
                    uVar7 + 1 + uVar6,(&ov08_02224FE0)[uVar6],4,7,0x70809);
      ov08_0221F284(param_1,(int)(param_1 + (uint)bVar1 * 0x14 + uVar6 * 2 + 0xd),uVar7 + 1 + uVar6)
      ;
    }
    uVar6 = uVar6 + 1 & 0xffff;
  } while (uVar6 < 4);
  ov08_0221E3A4((int)param_1,5,0x12);
  ScheduleWindowCopyToVram((undefined *)(param_1[0x81c] + iVar2));
  ScheduleWindowCopyToVram((undefined *)(param_1[0x81c] + iVar3));
  ScheduleWindowCopyToVram((undefined *)(param_1[0x81c] + iVar4));
  ScheduleWindowCopyToVram((undefined *)(param_1[0x81c] + iVar5));
  *(byte *)((int)param_1 + 0x2075) = *(byte *)((int)param_1 + 0x2075) ^ 1;
  return;
}

