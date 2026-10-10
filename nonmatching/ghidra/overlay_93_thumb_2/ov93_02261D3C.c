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
undefined4 ManagedSprite_SetAnim();
undefined4 func_0x0200de94() __asm__("sub_0200DE94");
undefined4 PlaySE();
undefined4 ManagedSprite_TickNFrames();
undefined4 func_0x0200ddf4() __asm__("sub_0200DDF4");
undefined4 ManagedSprite_SetDrawFlag();
extern undefined ov93_02262C7A;

undefined4
ov93_02261D3C(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  short sStack_10;
  short sStack_e;
  undefined4 uStack_c;

  uStack_c = param_4;
  switch(*(undefined1 *)((int)param_2 + 0x13)) {
  case 0:
    func_0x0200de94(*param_2,&sStack_e,&sStack_10,0x160000);
    param_2[2] = (int)sStack_e << 0xc;
    param_2[3] = (int)sStack_10 << 0xc;
    *(char *)((int)param_2 + 0x13) = *(char *)((int)param_2 + 0x13) + '\x01';
  case 1:
    if (*(short *)((int)param_2 + 0x16) < 1) {
      ManagedSprite_SetDrawFlag(*param_2,1);
      iVar1 = param_2[3] + 0x8000;
      param_2[3] = iVar1;
      if ((int)*(short *)(param_2 + 4) <= (int)(iVar1 + ((uint)(iVar1 >> 0xb) >> 0x14)) >> 0xc) {
        param_2[3] = (int)*(short *)(param_2 + 4) << 0xc;
        *(char *)((int)param_2 + 0x13) = *(char *)((int)param_2 + 0x13) + '\x01';
      }
    }
    else {
      *(short *)((int)param_2 + 0x16) = *(short *)((int)param_2 + 0x16) + -1;
    }
    break;
  case 2:
    func_0x0200de94(*param_2,&sStack_e,&sStack_10,0x160000);
    func_0x0200ddf4(param_2[1],(int)sStack_e,(sStack_10 + -0x20) * 0x10000 >> 0x10,0x160000);
    ManagedSprite_SetAnim(param_2[1],0x21);
    ManagedSprite_SetDrawFlag(param_2[1],1);
    PlaySE(0x593);
    ManagedSprite_SetAnim
              (*param_2,*(ushort *)(&ov93_02262C7A + (uint)*(byte *)((int)param_2 + 0x12) * 2) + 2);
    *(undefined1 *)(param_2 + 5) = 8;
    *(char *)((int)param_2 + 0x13) = *(char *)((int)param_2 + 0x13) + '\x01';
    break;
  case 3:
    *(char *)(param_2 + 5) = *(char *)(param_2 + 5) + -1;
    if (*(char *)(param_2 + 5) == '\x03') {
      ManagedSprite_TickNFrames(param_2[1],0x4000);
    }
    if (*(char *)(param_2 + 5) == '\0') {
      ManagedSprite_SetDrawFlag(param_2[1],0);
      ManagedSprite_SetAnim
                (*param_2,*(undefined2 *)(&ov93_02262C7A + (uint)*(byte *)((int)param_2 + 0x12) * 2)
                );
      *(char *)((int)param_2 + 0x13) = *(char *)((int)param_2 + 0x13) + '\x01';
    }
    break;
  case 4:
    iVar1 = param_2[3] + -0x8000;
    param_2[3] = iVar1;
    if ((int)(iVar1 + ((uint)(iVar1 >> 0xb) >> 0x14)) >> 0xc <= *(short *)(param_2 + 4) + -0x60) {
      ManagedSprite_SetDrawFlag(*param_2,0);
      *(undefined1 *)((int)param_2 + 0x13) = 0;
      *(undefined1 *)((int)param_2 + 0x15) = 0;
      return 0;
    }
  }
  func_0x0200ddf4(*param_2,(int)((param_2[2] + ((uint)((int)param_2[2] >> 0xb) >> 0x14)) * 0x10) >>
                           0x10,
                  (int)((param_2[3] + ((uint)((int)param_2[3] >> 0xb) >> 0x14)) * 0x10) >> 0x10,
                  0x160000);
  return 1;
}

