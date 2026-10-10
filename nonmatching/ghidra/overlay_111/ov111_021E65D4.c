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
undefined4 func_0x0200ddf4() __asm__("sub_0200DDF4");
undefined4 ScheduleSetBgPosText();
undefined4 func_0x0200de94() __asm__("sub_0200DE94");
undefined4 GetWindowBgId();
undefined4 GF_AssertFail();
undefined4 GetWindowBgConfig();
undefined4 BgCommitTilemapBufferToVram();

void ov111_021E65D4(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  short sStack_18;
  short sStack_16;
  
  if (param_1 == 0) {
    GF_AssertFail();
  }
  uVar1 = GetWindowBgConfig(param_1 + 0xc);
  uVar2 = GetWindowBgId(param_1 + 0xc);
  iVar3 = (int)*(short *)(param_1 + 0x74) - (int)*(short *)(param_1 + 0x70);
  if (iVar3 < 0) {
    iVar3 = -iVar3;
  }
  iVar4 = (int)(short)iVar3 >> 2;
  if (((short)iVar3 < 2) || (iVar4 == 0)) {
    *(undefined4 *)(param_1 + 0x6c) = 0;
  }
  else {
    if ((int)*(short *)(param_1 + 0x70) < (int)*(short *)(param_1 + 0x74)) {
      iVar4 = iVar4 * -0x10000 >> 0x10;
    }
    *(short *)(param_1 + 0x74) = *(short *)(param_1 + 0x74) + (short)iVar4;
    if (*(short *)(param_1 + 0x74) < 0xe8) {
      ScheduleSetBgPosText(uVar1,uVar2,5,iVar4);
      iVar3 = 0;
      do {
        func_0x0200de94(*(undefined4 *)(param_1 + 4),&sStack_16,&sStack_18,0x20c000);
        sStack_18 = sStack_18 + (short)iVar4;
        func_0x0200ddf4(*(undefined4 *)(param_1 + 4),(int)sStack_16,(int)sStack_18,0x20c000);
        iVar3 = iVar3 + 1;
        param_1 = param_1 + 4;
      } while (iVar3 < 2);
    }
  }
  BgCommitTilemapBufferToVram(uVar1,uVar2);
  return;
}

