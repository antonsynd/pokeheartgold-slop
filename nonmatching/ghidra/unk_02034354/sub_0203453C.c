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
undefined4 MI_CpuCopy8(void *, void *, unsigned int);
unsigned short sub_0203769C(void);
undefined4 PlayerProfile_IsNameEmpty(void *);
undefined4 sub_020373B4(unsigned short);
extern int  iRam021d4130 __asm__("sub_021D4130");



void sub_0203453C(int param_1,int param_2,undefined *param_3,undefined *param_4)

{
  byte bVar1;
  ushort uVar2;
  int iVar3;

  if ((iRam021d4130 != 0) && (iVar3 = sub_020373B4((ushort)param_1), iVar3 != 0)) {
    MI_CpuCopy8(param_3,(undefined *)(iRam021d4130 + 0xc + (uint)(byte)param_3[0x62] * 0x68),0x68);
    *(undefined *)(iRam021d4130 + 0x3a6) = param_3[0x62];
    iVar3 = PlayerProfile_IsNameEmpty
                      (*(undefined **)
                        (iRam021d4130 + (uint)*(byte *)(iRam021d4130 + 0x3a6) * 4 + 0x34c));
    if (iVar3 != 1) {
      if (*(byte *)(iRam021d4130 + 0x39c + (uint)*(byte *)(iRam021d4130 + 0x3a6)) < 2) {
        *(undefined1 *)(iRam021d4130 + 0x39c + (uint)*(byte *)(iRam021d4130 + 0x3a6)) = 1;
        bVar1 = *(byte *)(iRam021d4130 + 0x3a6);
        uVar2 = sub_0203769C();
        if ((uint)bVar1 == (uint)uVar2) {
          *(undefined1 *)(iRam021d4130 + (uint)bVar1 + 0x39c) = 3;
        }
      }
    }
  }
  return;
}

