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
undefined4 ov40_02230944();
undefined4 ov40_0222DF60();
undefined4 PlaySE();
undefined4 ov40_0223DEB8();
undefined4 sub_02031620();
undefined4 ov40_0223DB94();
undefined4 ov40_0222BF80();
undefined4 sub_0203162C();

void ov40_02241D10(undefined4 param_1,int param_2,int param_3)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_3 + 0x860);
  if (param_2 == 0) {
    switch(param_1) {
    case 0:
      ov40_02230944(param_3);
      *(char *)(iVar3 + 0x4c5) = (char)param_1;
      ov40_0222BF80(param_3,5);
      return;
    case 1:
      ov40_02230944(param_3);
      *(char *)(iVar3 + 0x4c5) = (char)param_1;
      ov40_0222BF80(param_3,5);
      return;
    case 2:
      iVar2 = sub_02031620(*(undefined4 *)(param_3 + 0x88c));
      ov40_02230944(param_3);
      if (iVar2 != 0) {
        if (*(char *)(iVar3 + 0x4c3) == -1) {
          uVar1 = sub_02031620(*(undefined4 *)(param_3 + 0x88c));
          *(undefined1 *)(iVar3 + 0x4c3) = uVar1;
          uVar1 = sub_0203162C(*(undefined4 *)(param_3 + 0x88c));
          *(undefined1 *)(iVar3 + 0x4c4) = uVar1;
        }
        else {
          *(undefined1 *)(iVar3 + 0x4c3) = 0xff;
          *(undefined1 *)(iVar3 + 0x4c4) = 0xff;
        }
        ov40_0223DDE8(param_3,*(undefined1 *)(iVar3 + 0x4c3),*(undefined1 *)(iVar3 + 0x4c4));
        ov40_0223DEB8(param_3);
        return;
      }
      PlaySE(0x57c);
      ov40_0222DF60(param_3,0x80);
      return;
    case 3:
      ov40_02230944(param_3);
      ov40_0222BF80(param_3,4);
      return;
    case 4:
      ov40_02230944(param_3);
      iVar3 = ov40_0223DB94(param_3);
      if (iVar3 == 0) {
        PlaySE(0x57c);
        ov40_0222DF60(param_3,0x74);
        return;
      }
      ov40_0222BF80(param_3,0xc);
    }
  }
  return;
}

