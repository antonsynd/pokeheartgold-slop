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
undefined4 func_0x020d4858() __asm__("sub_020D4858");
undefined4 FillBgTilemapRect();
undefined4 ov112_021EFD4C();
undefined4 ov112_021E9FD8();
undefined4 BeginNormalPaletteFade();
undefined4 ov112_021E9FA4();
undefined4 ov112_021E9C10();
undefined4 func_0x02077d40() __asm__("sub_02077D40");
undefined4 ov112_021EFD24();
undefined4 String_New();
undefined4 String_Delete();
undefined4 ov112_021E9A78();
undefined4 ov112_021E7CA4();

undefined4 ov112_021EFDA8(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  short *psVar4;
  short asStack_30 [14];

  ov112_021E9C10(param_1,5);
  ov112_021E9A78(param_1,6);
  iVar1 = ov112_021EFD4C(param_1);
  if (iVar1 == 0) {
    return 0x24;
  }
  FillBgTilemapRect(*(undefined4 *)(param_1 + 0x18),1,0,0,0,0x20,0x18,0x10);
  ov112_021E7CA4(param_1,2,0xf);
  ov112_021E9FD8(param_1,1,*(undefined4 *)(param_1 + 0x1e4a4),0);
  func_0x020d4858(0,asStack_30,0x1c);
  iVar3 = 0;
  iVar1 = param_1;
  do {
    ov112_021EFD24(asStack_30,*(undefined2 *)(iVar1 + 0x9dac));
    iVar3 = iVar3 + 1;
    iVar1 = iVar1 + 4;
  } while (iVar3 < 3);
  iVar3 = 0;
  iVar1 = param_1;
  do {
    ov112_021EFD24(asStack_30,*(undefined2 *)(iVar1 + 0x9db8));
    iVar3 = iVar3 + 1;
    iVar1 = iVar1 + 4;
  } while (iVar3 < 10);
  if ((int)((uint)*(byte *)(param_1 + 0xaabc) << 0x19) < 0) {
    ov112_021EFD24(asStack_30,*(undefined2 *)(param_1 + 0xb002));
    func_0x020d4858(0,param_1 + 0xaabc,0x6c8);
    func_0x020d4858(0,param_1 + 0x9d70,0xd4c);
  }
  uVar2 = String_New(0x13,0x9a);
  iVar1 = 0;
  psVar4 = asStack_30;
  do {
    if (*psVar4 == 0) break;
    func_0x02077d40(uVar2,*psVar4,0x9a);
    ov112_021E9FA4(param_1,iVar1 + 2,uVar2,0,0x30400);
    iVar1 = iVar1 + 1;
    psVar4 = psVar4 + 1;
  } while (iVar1 < 0xe);
  String_Delete(uVar2);
  BeginNormalPaletteFade(0,1,1,0,6,1,0x9a);
  return 0x12;
}

