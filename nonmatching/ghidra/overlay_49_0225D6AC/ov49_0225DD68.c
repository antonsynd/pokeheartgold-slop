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
undefined4 ov49_0225D5E4();
undefined4 ov49_0225D5A0();
undefined4 func_0x02018198() __asm__("sub_02018198");
undefined4 ov49_0225D57C();
undefined4 ov49_0225D328();
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
undefined4 func_0x0201fdb8() __asm__("sub_0201FDB8");
undefined4 ov49_0225D5C8();

void ov49_0225DD68(undefined4 param_1,int param_2)

{
  code *pcVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 extraout_r1;
  int iVar4;
  int iVar5;
  int iVar6;
  int iStack_28;
  int iStack_24;
  
  iStack_28 = param_2 + 0x7c;
  iVar4 = 0;
  iVar6 = param_2 + 0xc0;
  iVar5 = param_2;
  iStack_24 = iStack_28;
  do {
    if (*(char *)(param_2 + iVar4 + 0xb8) != '\0') {
      switch(*(undefined1 *)(param_2 + iVar4 + 0xbc)) {
      case 0:
        ov49_0225D57C(iVar6,iStack_24,*(undefined4 *)(param_2 + 0xdc));
        func_0x02018198(iStack_28,*(undefined4 *)(iVar5 + 0xc0));
        break;
      case 1:
        iVar2 = ov49_0225D5A0(iVar6,iStack_24,*(undefined4 *)(param_2 + 0xdc));
        func_0x02018198(iStack_28,*(undefined4 *)(iVar5 + 0xc0));
        if (iVar2 == 1) {
          pcVar1 = *(code **)(iVar5 + 0xd0);
          ov49_0225D328(param_1,param_2,iVar4);
          if (pcVar1 != (code *)0x0) {
            (*pcVar1)(param_1,param_2);
          }
        }
        break;
      case 3:
        ov49_0225D5C8(iVar6,iStack_24,*(undefined4 *)(param_2 + 0xdc));
        func_0x02018198(iStack_28,*(undefined4 *)(iVar5 + 0xc0));
        break;
      case 4:
        iVar2 = ov49_0225D5E4(iVar6,iStack_24,*(undefined4 *)(param_2 + 0xdc));
        func_0x02018198(iStack_28,*(undefined4 *)(iVar5 + 0xc0));
        if (iVar2 == 1) {
          pcVar1 = *(code **)(iVar5 + 0xd0);
          ov49_0225D328(param_1,param_2,iVar4);
          if (pcVar1 != (code *)0x0) {
            (*pcVar1)(param_1,param_2);
          }
        }
        break;
      case 5:
        if (*(char *)(param_2 + iVar4 + 0xcd) == '\0') {
          iVar2 = ov49_0225D5A0(iVar6,iStack_24,*(undefined4 *)(param_2 + 0xdc));
          if (iVar2 == 1) {
            uVar3 = func_0x0201fdb8();
            func_0x020f2ba4(uVar3,*(undefined1 *)(param_2 + 0xcc));
            *(undefined1 *)(param_2 + iVar4 + 0xcd) = extraout_r1;
            *(undefined4 *)(iVar5 + 0xc0) = 0;
          }
          func_0x02018198(iStack_28,*(undefined4 *)(iVar5 + 0xc0));
        }
        else {
          *(char *)(param_2 + iVar4 + 0xcd) = *(char *)(param_2 + iVar4 + 0xcd) + -1;
        }
        break;
      case 6:
        if (*(char *)(param_2 + iVar4 + 0xcd) == '\0') {
          ov49_0225D57C(iVar6,iStack_24,*(undefined4 *)(param_2 + 0xdc));
          func_0x02018198(iStack_28,*(undefined4 *)(iVar5 + 0xc0));
        }
        else {
          *(char *)(param_2 + iVar4 + 0xcd) = *(char *)(param_2 + iVar4 + 0xcd) + -1;
        }
      }
    }
    iVar4 = iVar4 + 1;
    iStack_24 = iStack_24 + 0x14;
    iVar6 = iVar6 + 4;
    iStack_28 = iStack_28 + 0x14;
    iVar5 = iVar5 + 4;
  } while (iVar4 < 3);
  return;
}

