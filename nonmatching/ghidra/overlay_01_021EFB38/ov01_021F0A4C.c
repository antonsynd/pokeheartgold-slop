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
typedef void code(void);
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
undefined4 ov01_021F0868(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021F08C0(undefined4);
extern undefined ov01_02206980;

undefined4 ov01_021F0A4C(undefined4 *param_1)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  int iStack_18;

  if (*(char *)((int)param_1 + 0xca) == '\0') {
    return 1;
  }
  if (*(byte *)(param_1 + 0x31) < 0x30) {
    *(char *)(param_1 + 0x32) = *(char *)(param_1 + 0x32) + -1;
    if (*(char *)(param_1 + 0x32) < '\x01') {
      *(undefined1 *)(param_1 + 0x32) = *(undefined1 *)((int)param_1 + 199);
      bVar1 = *(byte *)(param_1 + 0x31);
      iVar2 = (uint)(byte)(&ov01_02206980)[bVar1 & 7] * 0x20 + 0x10;
      ov01_021F0868(param_1[bVar1 + 1],iVar2,iVar2,(uint)(bVar1 >> 3) * -0x20 + -0x10,
                    (uint)(bVar1 >> 3) * -0x20 + 0xb0,*(undefined1 *)((int)param_1 + 0xc6),*param_1,
                    0x20,0x20,*(undefined1 *)((int)param_1 + 0xc9));
      *(char *)(param_1 + 0x31) = *(char *)(param_1 + 0x31) + '\x01';
    }
  }
  uVar3 = (uint)*(byte *)((int)param_1 + 0xc5);
  if (uVar3 < *(byte *)(param_1 + 0x31)) {
    puVar4 = param_1 + uVar3;
    do {
      iStack_18 = ov01_021F08C0(puVar4[1]);
      if (iStack_18 == 1) {
        *(char *)((int)param_1 + 0xc5) = *(char *)((int)param_1 + 0xc5) + '\x01';
      }
      uVar3 = uVar3 + 1;
      puVar4 = puVar4 + 1;
    } while ((int)uVar3 < (int)(uint)*(byte *)(param_1 + 0x31));
  }
  if ((0x2f < *(byte *)((int)param_1 + 0xc5)) && (iStack_18 == 1)) {
    *(undefined1 *)((int)param_1 + 0xca) = 0;
    return 1;
  }
  return 0;
}

