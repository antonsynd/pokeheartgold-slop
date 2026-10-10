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
undefined4 ov70_02243FE0();
undefined4 sub_020197F4();
undefined4 sub_02019B08();
undefined4 String_Delete();
undefined4 ov70_02243EB8();
undefined4 NewString_ReadMsgData();
undefined4 sub_02019688();
undefined4 ov70_0224190C();
undefined4 sub_020196E8();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov70_02243F7C();
undefined4 ov70_02242FC4();

void ov70_02242D44(int param_1,int param_2,char param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  
  if (param_2 == 6) {
    uVar3 = 0x21;
  }
  else {
    uVar3 = 0x22;
  }
  sub_02019688(*(undefined4 *)(param_1 + 0x1c),0,100,uVar3,1);
  sub_02019B08(*(undefined4 *)(param_1 + 0x1c),0);
  ov70_0224190C(param_1,param_2);
  func_0x020d4994(param_1 + 100,1,0x1a);
  iVar4 = 0;
  iVar5 = 0;
  do {
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x24),iVar4 + 0x6e);
    if (param_2 == 4) {
      iVar1 = ov70_02243F7C(param_1,iVar4);
      if (iVar1 == 1) {
        uVar2 = 0xf0e02;
        *(undefined1 *)(param_1 + iVar4 + 100) = 1;
      }
      else {
        uVar2 = 0x80902;
        *(undefined1 *)(param_1 + iVar4 + 100) = 0;
      }
    }
    else {
      iVar1 = ov70_02243FE0(param_1,iVar4);
      if (iVar1 == 1) {
        uVar2 = 0xf0e02;
        *(undefined1 *)(param_1 + iVar4 + 100) = 1;
      }
      else {
        uVar2 = 0x80902;
        *(undefined1 *)(param_1 + iVar4 + 100) = 0;
      }
    }
    ov70_02242FC4(*(undefined4 *)(param_1 + 0x1c),*(int *)(param_1 + 4) + iVar5,uVar3,2,uVar2);
    String_Delete(uVar3);
    iVar4 = iVar4 + 1;
    iVar5 = iVar5 + 0x10;
  } while (iVar4 < 9);
  ov70_02243EB8(*(undefined4 *)(param_1 + 0x1c),*(undefined4 *)(param_1 + 0x24),
                *(int *)(param_1 + 4) + 0xe0,0x44);
  if (param_2 == 6) {
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x24),0xae);
    ov70_02242FC4(*(undefined4 *)(param_1 + 0x1c),*(int *)(param_1 + 4) + 0xf0,uVar3,2,0xf0e02);
    String_Delete(uVar3);
  }
  sub_020196E8(*(undefined4 *)(param_1 + 0x1c),0,(int)param_3,0);
  sub_020197F4(*(undefined4 *)(param_1 + 0x1c),0);
  return;
}

