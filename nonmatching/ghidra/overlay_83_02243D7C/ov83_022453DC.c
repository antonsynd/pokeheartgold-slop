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
undefined4 FrontierSave_GetStat();
undefined4 ov83_02244DF4();
undefined4 func_0x02237d8c() __asm__("sub_02237D8C");
undefined4 sub_0203769C();
undefined4 FillWindowPixelRect();
undefined4 ov83_0224484C();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov83_02244A98();
undefined4 ov83_02245D08();
undefined4 func_0x0205c1f0() __asm__("sub_0205C1F0");
undefined4 sub_0205C268();

void ov83_022453DC(int param_1,undefined4 param_2)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  uint uVar6;
  undefined1 auStack_1c [2];
  undefined1 auStack_1a [2];
  short sStack_18;
  short sStack_16;
  
  ov83_02244DF4(param_1,&sStack_16,&sStack_18,auStack_1a,auStack_1c);
  iVar2 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
  if (iVar2 == 0) {
    FillWindowPixelRect(param_2,0,sStack_16 + 0x48,sStack_18 + 1,0x30,0x10);
    uVar3 = func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
    func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
    uVar4 = sub_0205C268();
    uVar3 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 4),uVar3,uVar4);
    ov83_02244A98(param_1,0,uVar3,4,0);
    uVar1 = ov83_0224484C(param_1,param_2,2,sStack_16 + 0x48,sStack_18 + 1,0xff,1,2,0,0);
    *(undefined1 *)(param_1 + 10) = uVar1;
  }
  else {
    FillWindowPixelRect(param_2,0,0x40,0,0x30,0x10);
    FillWindowPixelRect(param_2,0,0xc0,0,0x30,0x10);
    iVar2 = sub_0203769C();
    if (iVar2 == 0) {
      uVar3 = func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
      func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
      uVar4 = sub_0205C268();
      uVar5 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 4),uVar3,uVar4);
      uVar6 = (uint)*(ushort *)(param_1 + 0x5ba);
    }
    else {
      uVar5 = (uint)*(ushort *)(param_1 + 0x5ba);
      uVar3 = func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
      func_0x0205c1f0(*(undefined1 *)(param_1 + 9));
      uVar4 = sub_0205C268();
      uVar6 = FrontierSave_GetStat(*(undefined4 *)(param_1 + 4),uVar3,uVar4);
    }
    ov83_02244A98(param_1,0,uVar5,4,0);
    ov83_02245D08(param_1,param_2,*(undefined4 *)(param_1 + 0x20),2,0x70,0,0,0x10200,1);
    ov83_02244A98(param_1,0,uVar6,4,0);
    ov83_02245D08(param_1,param_2,*(undefined4 *)(param_1 + 0x20),3,0xf0,0,0,0x10200,1);
  }
  ScheduleWindowCopyToVram(param_2);
  return;
}

