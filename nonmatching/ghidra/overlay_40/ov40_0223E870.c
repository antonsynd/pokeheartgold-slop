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
undefined4 ov40_0223E730();
undefined4 ov40_0222DA00();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 ov40_022420B4();
undefined4 ov40_02230944();
undefined4 ov40_0222DA84();
undefined4 ov40_022307DC();
undefined4 func_0x02026cc4() __asm__("sub_02026CC4");
undefined4 ov40_0223E848();
undefined4 TouchscreenHitbox_TouchNewIsIn();
undefined4 ov40_0222BF80();
extern undefined ov40_02245650;

undefined4 ov40_0223E870(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_1 + 0x860);
  switch(*(undefined4 *)(param_1 + 8)) {
  case 0:
    ov40_022307DC(param_1,0x3c,7);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 1:
    ov40_0222DA84(iVar2 + 8,0);
    iVar1 = ov40_0222DA00(iVar2,iVar2 + 4,0,2);
    if (iVar1 != 0) {
      ov40_0223E730(param_1);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar2 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    break;
  case 2:
    func_0x02026cc4(*(undefined4 *)(iVar2 + 0x60c));
    iVar1 = TouchscreenHitbox_TouchNewIsIn(&ov40_02245650);
    if ((iVar1 != 0) || (*(int *)(iVar2 + 0x4d8) == 1)) {
      ov40_02230944(param_1);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 3:
    ov40_0223E848();
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  case 4:
    if (*(int *)(iVar2 + 0x4d8) == 1) {
      iVar2 = ov40_0222DA00(iVar2,iVar2 + 4,1,2);
      if (iVar2 != 0) {
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
    }
    else {
      ov40_0222DA84(iVar2 + 8,1);
      iVar1 = ov40_0222DA00(iVar2,iVar2 + 4,1,2);
      if (iVar1 != 0) {
        ov40_022420B4(param_1,0);
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar2 + 8) & 0xff,
                      *(uint *)(param_1 + 0x58) & 0xffff);
    }
    break;
  default:
    if (*(int *)(iVar2 + 0x4d8) == 1) {
      ov40_0222BF80(param_1,9,param_3,param_4,param_4);
    }
    else {
      ov40_0222BF80(param_1,0xb,param_3,param_4,param_4);
    }
  }
  return 0;
}

