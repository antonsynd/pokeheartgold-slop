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
undefined4 SetMonData();
undefined4 CopyU16ArrayToString();
undefined4 Heap_Alloc();
undefined4 String_Delete();
undefined4 func_0x020d4790() __asm__("sub_020D4790");
undefined4 Party_GetCount();
undefined4 func_0x02002f68() __asm__("sub_02002F68");
undefined4 GetMonData();
undefined4 ov40_02244A84();
undefined4 sub_0202FEB8();
undefined4 String_New();
undefined4 func_0x02026a68() __asm__("sub_02026A68");
undefined4 func_0x020263ac() __asm__("sub_020263AC");
undefined4 Party_GetMonByIndex();
undefined4 Heap_Free();

void ov40_02244920(int param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  int iStack_40;
  int iStack_38;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  int iStack_20;
  undefined1 auStack_1c [4];
  int iStack_18;

  sub_0202FEB8(*(undefined1 *)(param_1 + 0xaa),&iStack_18,auStack_1c);
  uVar1 = String_New(0x40,param_3);
  uVar2 = String_New(0x40,param_3);
  uVar3 = Heap_Alloc(param_3,0x80);
  iStack_20 = 0;
  if (0 < iStack_18) {
    iStack_34 = param_2 + 0x3c;
    iStack_30 = iStack_34;
    iStack_2c = param_2;
    do {
      uVar6 = 7;
      iVar7 = iStack_2c + 0xe;
      do {
        if (*(short *)(iVar7 + 0x3c) == -1) break;
        uVar6 = uVar6 - 1;
        iVar7 = iVar7 + -2;
      } while (uVar6 < 0x80000000);
      if (uVar6 == 0xffffffff) {
        ov40_02244A84(uVar2,param_3);
        func_0x02026a68(uVar2,iStack_30,8);
      }
      else {
        func_0x020263ac(uVar1);
        CopyU16ArrayToString(uVar1,iStack_34);
        iVar7 = func_0x02002f68(0,uVar1,uVar2);
        if (iVar7 == 0) {
          ov40_02244A84(uVar2,param_3);
          func_0x02026a68(uVar2,iStack_30,8);
        }
      }
      iStack_2c = iStack_2c + 0x34;
      iStack_30 = iStack_30 + 0x34;
      iStack_34 = iStack_34 + 0x34;
      iStack_20 = iStack_20 + 1;
    } while (iStack_20 < iStack_18);
  }
  iStack_38 = 0;
  iStack_40 = param_2;
  if (0 < iStack_18) {
    do {
      iVar7 = Party_GetCount(*(undefined4 *)(iStack_40 + 4));
      iVar8 = 0;
      if (0 < iVar7) {
        do {
          uVar4 = Party_GetMonByIndex(*(undefined4 *)(iStack_40 + 4),iVar8);
          iVar5 = GetMonData(uVar4,0xac,0);
          if (iVar5 == 0) break;
          func_0x020d4790(0,uVar3,0x80);
          GetMonData(uVar4,0x75,uVar3);
          func_0x020263ac(uVar1);
          CopyU16ArrayToString(uVar1,uVar3);
          iVar5 = func_0x02002f68(0,uVar1,uVar2);
          if (iVar5 == 0) {
            SetMonData(uVar4,0xb3,0);
          }
          iVar8 = iVar8 + 1;
        } while (iVar8 < iVar7);
      }
      iStack_40 = iStack_40 + 4;
      iStack_38 = iStack_38 + 1;
    } while (iStack_38 < iStack_18);
  }
  String_Delete(uVar1);
  String_Delete(uVar2);
  Heap_Free(uVar3);
  return;
}

