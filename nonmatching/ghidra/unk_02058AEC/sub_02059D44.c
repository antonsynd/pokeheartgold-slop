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
void * FieldSystem_CreateTask(void *, void *, void *);
undefined4 sub_02057A88();
undefined4 sub_02057B14();
unsigned short sub_0203769C(void);
void * Heap_AllocAtEnd(int, unsigned int);
undefined4 sub_02037454(void);
undefined4 sub_0203E2F4(void);
undefined4 sub_02057ADC();
undefined4 sub_02057A34();



void sub_02059D44(undefined *param_1)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  uint uVar6;

  uVar1 = sub_0203769C();
  iVar2 = sub_02057ADC();
  iVar3 = sub_02057B14((uint)uVar1);
  uVar6 = 0;
  iVar4 = sub_02037454();
  if (0 < iVar4) {
    do {
      if (((uVar6 != uVar1) && (iVar4 = sub_02057A34(uVar6), iVar2 == iVar4)) &&
         (iVar4 = sub_02057A88(uVar6), iVar3 == iVar4)) {
        puVar5 = Heap_AllocAtEnd(0xb,0x6a8);
        *(uint *)(puVar5 + 0x24) = uVar6;
        *(undefined4 *)(puVar5 + 0x28) = 0;
        FieldSystem_CreateTask(param_1,(undefined *)0x2059b65,puVar5);
        sub_0203E2F4();
        return;
      }
      uVar6 = uVar6 + 1;
      iVar4 = sub_02037454();
    } while ((int)uVar6 < iVar4);
  }
  return;
}

