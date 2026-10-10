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
undefined4 sub_02032024();
undefined4 func_0x022379c0() __asm__("sub_022379C0");
undefined4 Party_GetMonAprijuiceModifiers();
undefined4 func_0x020732e4() __asm__("sub_020732E4");
extern undefined ov59_0223C99C;

void ov59_0223BAE8(undefined4 *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int *piVar3;
  
  puVar1 = param_1 + (uint)*(byte *)((int)param_1 + 0x4a) * 0xd + 0x1f;
  func_0x022379c0(param_1 + 6,param_1[4],*(undefined1 *)(puVar1 + 2));
  if (*(int *)(param_1[1] + 0x14) == 8) {
    sub_02032024(param_1[5]);
  }
  Party_GetMonAprijuiceModifiers(param_1[4],puVar1 + 4,*(undefined1 *)(puVar1 + 2));
  *(undefined2 *)((int)param_1 + 0x2e) = *(undefined2 *)((int)puVar1 + 0x16);
  *(undefined2 *)(param_1 + 0xc) = *(undefined2 *)(puVar1 + 6);
  *(undefined2 *)((int)param_1 + 0x32) = *(undefined2 *)((int)puVar1 + 0x1a);
  *(undefined2 *)(param_1 + 0xd) = *(undefined2 *)(puVar1 + 7);
  func_0x020732e4((int)puVar1 + 0x16,*puVar1,puVar1 + 4,*param_1);
  iVar2 = 0;
  piVar3 = (int *)&ov59_0223C99C;
  *(undefined1 *)((int)param_1 + 0x3e) = 0;
  do {
    *(byte *)((int)param_1 + iVar2 + 0x39) =
         ((byte)((int)(uint)*(ushort *)((int)puVar1 + 0x16) >> (*piVar3 * 3 & 0xffU)) & 7) -
         ((byte)((int)(uint)*(ushort *)((int)param_1 + 0x2e) >> (*piVar3 * 3 & 0xffU)) & 7);
    if (*(char *)((int)param_1 + iVar2 + 0x39) != '\0') {
      *(char *)((int)param_1 + 0x3e) = *(char *)((int)param_1 + 0x3e) + '\x01';
    }
    iVar2 = iVar2 + 1;
    piVar3 = piVar3 + 1;
  } while (iVar2 < 5);
  *(undefined1 *)(param_1 + 0x12) = 1;
  return;
}

