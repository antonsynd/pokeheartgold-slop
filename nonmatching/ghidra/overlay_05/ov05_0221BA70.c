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
undefined4 SpriteSystem_DrawSprites();
undefined4 ov05_0221BD28();
undefined4 ov05_0221CC74();
undefined4 ov05_0221CE50();
undefined4 ov05_0221BB30();
extern undefined4 uRam04000540 __asm__("sub_04000540");

void ov05_0221BA70(undefined4 param_1,int *param_2)

{
  char cVar1;
  undefined1 uVar2;
  int iVar3;
  
  cVar1 = *(char *)((int)param_2 + 0xb7f);
  if (cVar1 == '\0') {
    uVar2 = ov05_0221BD28(param_2);
    *(undefined1 *)((int)param_2 + 0xb7f) = uVar2;
  }
  else if (cVar1 == '\x01') {
    do {
      iVar3 = (**(code **)(param_2[1] + (uint)*(byte *)(param_2 + 0x2e0) * 4))(param_2);
      if (iVar3 != 0) {
        *(char *)(param_2 + 0x2e0) = (char)param_2[0x2e0] + '\x01';
      }
    } while (iVar3 == 2);
    if (*(char *)(*param_2 + 0x28) == '\x02') {
      ov05_0221BB30(param_2);
    }
  }
  else if ((cVar1 == '\x02') && (iVar3 = ov05_0221CC74(), iVar3 == 1)) {
    return;
  }
  if ((char)param_2[0x2e0] != '\0') {
    ov05_0221CE50(param_2);
    SpriteSystem_DrawSprites(param_2[0x65]);
  }
  if (*(char *)(*param_2 + 0x28) != '\0') {
    uRam04000540 = 1;
  }
  return;
}

