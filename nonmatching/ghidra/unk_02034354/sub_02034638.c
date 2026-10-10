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
undefined4 sub_02037824(int);
unsigned short sub_0203769C(void);
undefined4 sub_0203753C(int, void *, int);
undefined4 MI_CpuCopy8(void *, void *, unsigned int);
undefined4 PlayerProfile_sizeof(void);
extern int  iRam021d4130 __asm__("sub_021D4130");



int sub_02034638(void)

{
  int iVar1;
  ushort uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  
  if (*(char *)(iRam021d4130 + 0x3a5) == '\0') {
    return 0;
  }
  uVar2 = sub_0203769C();
  if (uVar2 != 0) {
    return 0;
  }
  iVar3 = sub_02037824(5);
  if (iVar3 == 0) {
    iVar3 = 0;
    iVar5 = 0;
    iVar6 = 0;
    do {
      if (*(char *)(iRam021d4130 + iVar3 + 0x39c) != '\0') {
        *(char *)(iRam021d4130 + iVar5 + 0x6e) = (char)iVar3;
        iVar1 = iRam021d4130;
        uVar4 = PlayerProfile_sizeof();
        MI_CpuCopy8(*(undefined **)(iVar1 + iVar6 + 0x34c),(undefined *)(iVar1 + 0x2c + iVar5),uVar4
                   );
        sub_0203753C(4,(undefined *)(iRam021d4130 + 0xc + iVar5),0x68);
      }
      iVar3 = iVar3 + 1;
      iVar5 = iVar5 + 0x68;
      iVar6 = iVar6 + 4;
    } while (iVar3 < 8);
    sub_0203753C(5,(undefined *)0x0,0);
    *(undefined1 *)(iRam021d4130 + 0x3a5) = 0;
    return 1;
  }
  return 0;
}

