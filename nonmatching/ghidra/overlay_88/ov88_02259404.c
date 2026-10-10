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
undefined4 ov88_022595DC();
undefined4 ov88_02259560();
undefined4 ov88_02259280();
undefined4 func_0x0222ab38() __asm__("sub_0222AB38");
undefined4 func_0x0222dd5c() __asm__("sub_0222DD5C");
undefined4 func_0x0222dd78() __asm__("sub_0222DD78");
undefined4 func_0x0222dd44() __asm__("sub_0222DD44");
undefined4 func_0x0222dce8() __asm__("sub_0222DCE8");
undefined4 ov88_022595E4();
extern undefined ov88_02259910;

undefined4 ov88_02259404(char *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  char *pcVar3;
  undefined *puVar4;
  int iStack_34;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [20];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  func_0x0222ab38(param_3,auStack_2c);
  puVar4 = &ov88_02259910;
  iStack_34 = 2;
  pcVar3 = param_1 + 0x40;
  do {
    if ((*pcVar3 != '\0') && (iVar1 = ov88_022595E4(pcVar3), iVar1 == 1)) {
      if (iStack_34 + 1 < 3) {
        ov88_02259560(param_1 + (iStack_34 + 1) * 0x20,*(undefined4 *)(pcVar3 + 8),
                      *(undefined4 *)(puVar4 + 4),pcVar3 + 0x1c,*(undefined4 *)(param_1 + 0x98));
      }
      ov88_022595DC(pcVar3);
    }
    pcVar3 = pcVar3 + -0x20;
    puVar4 = puVar4 + -4;
    iStack_34 = iStack_34 + -1;
  } while (-1 < iStack_34);
  if ((*param_1 == '\0') && (iVar1 = func_0x0222dd44(param_2), iVar1 == 1)) {
    do {
      uVar2 = func_0x0222dd5c(param_2);
      iVar1 = func_0x0222dd78(param_2,auStack_2c,uVar2,*(undefined4 *)(param_1 + 0x90),param_4);
      if (iVar1 == 1) {
        ov88_02259280(auStack_30,param_2,uVar2,param_3);
        ov88_02259560(param_1,*(undefined4 *)(param_1 + 0x90),0x150,auStack_30,
                      *(undefined4 *)(param_1 + 0x98));
        func_0x0222dce8(param_2);
        return 1;
      }
      func_0x0222dce8(param_2);
      iVar1 = func_0x0222dd44(param_2);
    } while (iVar1 == 1);
  }
  return 0;
}

