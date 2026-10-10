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
undefined4 sub_0203769C();
undefined4 sub_02059B08();
undefined4 SaveArray_Party_Alloc();
undefined4 InitWindow();
undefined4 sub_02034818();
undefined4 MessageFormat_New();
undefined4 String_New();
undefined4 FieldSystem_CreateTask();
undefined4 sub_0203993C();
undefined4 Party_InitWithMaxSize();
undefined4 Heap_AllocAtEnd();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ListMenuCursorNew();
undefined4 NewMsgDataFromNarc();

void sub_02059538(int param_1,undefined4 param_2)

{
  undefined1 uVar1;
  undefined2 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;

  if (*(int *)(param_1 + 0x10) == 0) {
    iVar3 = Heap_AllocAtEnd(0xb,0x8c);
    func_0x020d4994(iVar3,0,0x8c);
    *(undefined1 *)(iVar3 + 0x43) = 5;
    *(int *)(iVar3 + 0x24) = param_1;
    *(undefined4 *)(iVar3 + 8) = param_2;
    uVar4 = MessageFormat_New(0xb);
    *(undefined4 *)(iVar3 + 0x28) = uVar4;
    uVar4 = NewMsgDataFromNarc(0,0x1b,0xe,0xb);
    *(undefined4 *)(iVar3 + 0x2c) = uVar4;
    uVar4 = String_New(200,0xb);
    *(undefined4 *)(iVar3 + 0xc) = uVar4;
    uVar4 = String_New(200,0xb);
    *(undefined4 *)(iVar3 + 0x10) = uVar4;
    InitWindow(iVar3 + 0x14);
    InitWindow(iVar3 + 0x54);
    InitWindow(iVar3 + 100);
    uVar4 = ListMenuCursorNew(0xb);
    *(undefined4 *)(iVar3 + 0x78) = uVar4;
    uVar1 = sub_0203993C();
    *(undefined1 *)(iVar3 + 0x88) = uVar1;
    *(undefined4 *)(iVar3 + 0x4c) = 0;
    *(undefined4 *)(iVar3 + 0x48) = 0;
    *(undefined4 *)(iVar3 + 0x50) = 0;
    *(undefined1 *)(iVar3 + 0x89) = 0;
    uVar2 = sub_0203769C();
    *(undefined2 *)(iVar3 + 0x86) = uVar2;
    uVar4 = sub_02034818(*(ushort *)(iVar3 + 0x86) ^ 1);
    *(undefined4 *)(iVar3 + 0x74) = uVar4;
    if (*(char *)(iVar3 + 0x88) == '\x03') {
      uVar4 = sub_02059B08();
      uVar5 = Heap_AllocAtEnd(0xb,uVar4);
      *(undefined4 *)(iVar3 + 0x4c) = uVar5;
      uVar4 = Heap_AllocAtEnd(0xb,uVar4);
      *(undefined4 *)(iVar3 + 0x48) = uVar4;
      uVar4 = SaveArray_Party_Alloc(0xb);
      *(undefined4 *)(iVar3 + 0x50) = uVar4;
      Party_InitWithMaxSize(uVar4,3);
      *(undefined1 *)(iVar3 + 0x44) = 5;
      *(undefined4 *)(iVar3 + 0x34) = 0x17;
    }
    else if (*(char *)(iVar3 + 0x88) == '\x04') {
      *(undefined4 *)(iVar3 + 0x34) = 9;
    }
    else if (*(int *)(*(int *)(iVar3 + 0x24) + 0xa4) == 0) {
      *(undefined4 *)(iVar3 + 0x34) = 0;
    }
    else {
      *(undefined4 *)(iVar3 + 0x34) = 9;
    }
    FieldSystem_CreateTask(param_1,0x2058d4d,iVar3);
  }
  return;
}

