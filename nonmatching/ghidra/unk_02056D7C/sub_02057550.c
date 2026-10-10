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
undefined4 sub_020574C4();
undefined4 sub_020374AC();
undefined4 sub_02057BEC();
undefined4 sub_02057454();
undefined4 sub_020374C0();
undefined4 sub_02057C24();
extern int iRam021d41c4 __asm__("sub_021D41C4");
undefined4 sub_02057524();

void sub_02057550(void)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined2 *puVar6;
  int iVar7;
  undefined4 uVar8;
  int iStack_20;

  iVar7 = 0;
  iStack_20 = 0;
  do {
    if ((*(char *)(iRam021d41c4 + iVar7 + 0x24) != '\0') &&
       (*(char *)(iRam021d41c4 + iVar7 + 0xb4) != '\0')) {
      puVar6 = (undefined2 *)(iRam021d41c4 + 0x34 + iStack_20);
      if (*(char *)(iRam021d41c4 + iVar7 + 0xd4) != '\0') {
        *(char *)(iRam021d41c4 + iVar7 + 0xd4) = *(char *)(iRam021d41c4 + iVar7 + 0xd4) + -1;
      }
      if (*(char *)(iRam021d41c4 + iVar7 + 0xbc) == '\0') {
        uVar8 = sub_020374C0(iVar7);
      }
      else {
        uVar8 = 0;
      }
      uVar1 = sub_020374AC(iVar7);
      *(undefined1 *)((int)puVar6 + 5) = uVar1;
      if (*(char *)(iRam021d41c4 + iVar7 + 0xd4) == '\0') {
        if (*(char *)((int)puVar6 + 7) == '\x01') {
          *(undefined1 *)(iRam021d41c4 + iVar7 + 0xcc) = 1;
        }
        *(undefined1 *)((int)puVar6 + 7) = 0;
        if (*(char *)(iRam021d41c4 + iVar7 + 0xc4) == '\x02') {
          *(undefined1 *)(iRam021d41c4 + iVar7 + 0xc4) = 1;
        }
        else {
          iVar2 = sub_02057454(uVar8,uVar8);
          iVar3 = sub_02057BEC(iVar7);
          iVar4 = sub_02057C24(iVar7);
          if (((iVar3 != 0xffff) && (iVar4 != 0xffff)) && (iVar2 != -1)) {
            if (*(char *)(puVar6 + 2) == iVar2) {
              if (*(char *)(iRam021d41c4 + iVar7 + 0xc4) == '\0') {
                iVar5 = sub_020574C4(iVar3,iVar4,iVar7);
                if (iVar5 == 0) {
                  *(undefined1 *)(iRam021d41c4 + iVar7 + 0xcc) = 1;
                  *puVar6 = (short)iVar3;
                  puVar6[1] = (short)iVar4;
                  *(char *)(puVar6 + 2) = (char)iVar2;
                  uVar1 = sub_02057524(*(undefined1 *)((int)puVar6 + 5));
                  *(undefined1 *)(iRam021d41c4 + iVar7 + 0xd4) = uVar1;
                }
                else {
                  *(undefined1 *)((int)puVar6 + 7) = 1;
                  *(undefined1 *)(iRam021d41c4 + iVar7 + 0xcc) = 1;
                  *(undefined1 *)(iRam021d41c4 + iVar7 + 0xd4) = 4;
                }
              }
            }
            else {
              *(char *)(puVar6 + 2) = (char)iVar2;
              *(undefined1 *)(iRam021d41c4 + iVar7 + 0xd4) = 4;
              *(undefined1 *)(iRam021d41c4 + iVar7 + 0xcc) = 1;
              if (2 < *(byte *)(iRam021d41c4 + iVar7 + 0xc4)) {
                *(char *)(iRam021d41c4 + iVar7 + 0xc4) = *(char *)(iRam021d41c4 + iVar7 + 0xc4) + -1
                ;
              }
            }
          }
        }
      }
    }
    iVar7 = iVar7 + 1;
    iStack_20 = iStack_20 + 8;
  } while (iVar7 < 8);
  return;
}

