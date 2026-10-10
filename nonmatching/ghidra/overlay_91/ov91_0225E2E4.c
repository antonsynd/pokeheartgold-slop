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
undefined4 ov91_0225E400();
undefined4 ov91_02260754();
undefined4 GF_AssertFail();
undefined4 ov91_02260728();

void ov91_0225E2E4(int param_1,undefined4 *param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  
  iVar2 = 0;
  iVar4 = param_1;
  do {
    if (*(char *)(iVar4 + 0x4c) == '\0') {
      iVar2 = iVar2 * 0x44;
      puVar5 = (undefined4 *)(param_1 + iVar2 + 0x50);
      iVar4 = 5;
      puVar6 = param_2;
      do {
        uVar1 = *puVar6;
        uVar3 = puVar6[1];
        puVar6 = puVar6 + 2;
        *puVar5 = uVar1;
        puVar5[1] = uVar3;
        puVar5 = puVar5 + 2;
        iVar4 = iVar4 + -1;
      } while (iVar4 != 0);
      iVar4 = param_1 + iVar2;
      *(char *)(param_1 + iVar2 + 0x4c) = (char)param_3;
      uVar1 = param_2[6];
      *(undefined4 *)(iVar4 + 0x78) = param_2[5];
      *(undefined4 *)(iVar4 + 0x7c) = uVar1;
      *(undefined4 *)(iVar4 + 0x80) = param_2[7];
      *(undefined2 *)(param_1 + iVar2 + 0x4e) = 0;
      *(undefined4 *)(param_1 + iVar2 + 0x88) = 0;
      ov91_02260728(param_1 + 0x1ab4,param_1 + 0x4c + iVar2,*(undefined4 *)(param_1 + 0x10),
                    *(undefined4 *)(param_1 + 0x14));
      return;
    }
    iVar2 = iVar2 + 1;
    iVar4 = iVar4 + 0x44;
  } while (iVar2 < 0x60);
  if (param_3 == 1) {
    iVar2 = 0;
    iVar4 = param_1;
    do {
      if ((*(char *)(iVar4 + 0x4c) == '\x02') || (*(char *)(iVar4 + 0x4c) == '\x05')) {
        iVar2 = iVar2 * 0x44;
        ov91_02260754(param_1 + 0x1ab4,param_1 + 0x4c + iVar2);
        ov91_0225E400(param_1 + 0x4c + iVar2);
        puVar5 = (undefined4 *)(param_1 + iVar2 + 0x50);
        iVar4 = 5;
        puVar6 = param_2;
        do {
          uVar1 = *puVar6;
          uVar3 = puVar6[1];
          puVar6 = puVar6 + 2;
          *puVar5 = uVar1;
          puVar5[1] = uVar3;
          puVar5 = puVar5 + 2;
          iVar4 = iVar4 + -1;
        } while (iVar4 != 0);
        iVar4 = param_1 + iVar2;
        *(undefined1 *)(param_1 + 0x4c + iVar2) = 1;
        uVar1 = param_2[6];
        *(undefined4 *)(iVar4 + 0x78) = param_2[5];
        *(undefined4 *)(iVar4 + 0x7c) = uVar1;
        *(undefined4 *)(iVar4 + 0x80) = param_2[7];
        *(undefined2 *)(param_1 + iVar2 + 0x4e) = 0;
        *(undefined4 *)(param_1 + iVar2 + 0x88) = 0;
        ov91_02260728(param_1 + 0x1ab4,param_1 + 0x4c + iVar2,*(undefined4 *)(param_1 + 0x10),
                      *(undefined4 *)(param_1 + 0x14));
        return;
      }
      iVar2 = iVar2 + 1;
      iVar4 = iVar4 + 0x44;
    } while (iVar2 < 0x60);
    GF_AssertFail();
  }
  return;
}

