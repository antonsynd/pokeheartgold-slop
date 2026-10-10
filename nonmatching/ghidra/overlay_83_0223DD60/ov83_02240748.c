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
undefined4 ov83_02247568();
undefined4 ov83_022472A0();
undefined4 ov83_0224755C();
undefined4 ov83_02242894();
undefined4 ov83_02240F48();
undefined4 ov83_02247264();

void ov83_02240748(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int iStack_24;
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  undefined4 uStack_18;

  uVar3 = 0;
  iStack_24 = 0;
  uVar5 = (uint)(*(short *)(param_1 + 0x862) * 0x60000) >> 0x10;
  iVar1 = uVar5 * 8;
  iVar4 = param_1;
  uStack_18 = param_4;
  do {
    if (uVar5 < *(byte *)(param_1 + 0x861)) {
      uVar2 = ov83_02240F48(param_1,*(uint *)(iStack_24 + iVar1 + *(int *)(param_1 + 0x4dc) + 4) &
                                    0xffff,*(undefined1 *)(param_1 + 0x13));
      ov83_02247264(param_1 + 0x518,uVar3 + 4,uVar2);
      ov83_022472A0(param_1 + 0x518,uVar3 + 4,uVar2);
      ov83_02242894(uVar3,&uStack_1a,&uStack_1c);
      ov83_02247568(*(undefined4 *)(iVar4 + 0x784),uStack_1a,uStack_1c);
      ov83_0224755C(*(undefined4 *)(iVar4 + 0x784),1);
    }
    else {
      ov83_0224755C(*(undefined4 *)(iVar4 + 0x784),0);
    }
    uVar3 = uVar3 + 1;
    iStack_24 = iStack_24 + 8;
    uVar5 = uVar5 + 1;
    iVar4 = iVar4 + 4;
  } while (uVar3 < 6);
  return;
}

