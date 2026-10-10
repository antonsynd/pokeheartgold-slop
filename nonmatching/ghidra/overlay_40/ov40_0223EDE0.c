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
undefined4 ov40_0223DDE8();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 ov40_022420B4();
undefined4 ov40_0222E8C4();
undefined4 ov40_0222DF60();
undefined4 ov40_0222F740();
undefined4 ov40_0222F6D0();
undefined4 ov40_022307DC();
undefined4 ov40_0222F9D4();
undefined4 ov40_0222F38C();
undefined4 ov40_0222FA88();
undefined4 TouchscreenHitbox_TouchNewIsIn();
undefined4 ov40_0222FA5C();
undefined4 ov40_0222DA00();
undefined4 ov40_02230964();
undefined4 ov40_0222DA84();
undefined4 sub_02031620();
undefined4 sub_0203162C();
extern undefined ov40_0224572C;
undefined4 ov40_0222F720();
undefined4 ov40_0222F920();
undefined4 ov40_02230944();
undefined4 ov40_0222BF80();
undefined4 ov40_0222FA24();
extern undefined ov40_02245650;

undefined4 ov40_0223EDE0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;

  iVar3 = *(int *)(param_1 + 0x860);
  switch(*(undefined4 *)(param_1 + 8)) {
  case 0:
    ov40_0222DF60(param_1,0x73);
    *(undefined1 *)(iVar3 + 0x4c3) = 0xff;
    *(undefined1 *)(iVar3 + 0x4c4) = 0xff;
    ov40_0223DDE8(param_1,*(undefined1 *)(iVar3 + 0x4c3),*(undefined1 *)(iVar3 + 0x4c4));
    ov40_022420B4(param_1,1);
    ov40_022307DC(param_1,0x39,7);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 1:
    ov40_0222DA84(iVar3 + 8,0,param_3,param_4,param_4);
    iVar2 = ov40_0222DA00(iVar3,iVar3 + 4,0,2);
    if (iVar2 != 0) {
      ov40_02230964(param_1,1);
      ov40_0222F9D4(param_1 + 0x47c,param_1);
      ov40_0222E8C4(param_1 + 0x49c,param_1,&ov40_0224572C);
      ov40_0222FA5C(param_1 + 0x47c,param_1 + 0x49c);
      ov40_0222F740(param_1 + 0x49c,param_1,2);
      ov40_02230964(param_1,0);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar3 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    break;
  case 2:
    ov40_0222FA88(param_1 + 0x47c);
    ov40_0222F6D0(param_1 + 0x49c,(int)*(short *)(param_1 + 0x48c));
    iVar2 = ov40_0222F38C(param_1 + 0x49c,param_1);
    if (iVar2 != 0) {
      uVar1 = sub_02031620(*(undefined4 *)(param_1 + 0x88c));
      *(undefined1 *)(iVar3 + 0x4c3) = uVar1;
      uVar1 = sub_0203162C(*(undefined4 *)(param_1 + 0x88c));
      *(undefined1 *)(iVar3 + 0x4c4) = uVar1;
      ov40_0223DDE8(param_1,*(undefined1 *)(iVar3 + 0x4c3),*(undefined1 *)(iVar3 + 0x4c4));
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    iVar3 = TouchscreenHitbox_TouchNewIsIn(&ov40_02245650);
    if (iVar3 != 0) {
      ov40_02230944(param_1);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 3:
    ov40_0222FA24(param_1 + 0x47c);
    ov40_0222F720(param_1 + 0x49c);
    ov40_0222F920(param_1 + 0x49c,param_1);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  case 4:
    ov40_0222DA84(iVar3 + 8,1);
    iVar2 = ov40_0222DA00(iVar3,iVar3 + 4,1,2);
    if (iVar2 != 0) {
      ov40_022420B4(param_1,0);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar3 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    break;
  default:
    ov40_0222BF80(param_1,0xb);
  }
  return 0;
}

