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
undefined4 func_0x0201fd38() __asm__("sub_0201FD38");
undefined4 GetPersonalAttr();
undefined4 GF_RTC_TimeToSec();
undefined4 AllocAndLoadMonPersonal_HandleAlternateForm();
undefined4 func_0x0206fbb0() __asm__("sub_0206FBB0");
undefined4 LCRandom();

void ov112_021E8B74(undefined2 *param_1,undefined2 *param_2,int param_3,int param_4,int param_5)

{
  undefined2 *puVar1;
  byte bVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  undefined2 *puVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined2 *puStack_30;
  int iStack_28;
  
  GF_RTC_TimeToSec();
  func_0x0201fd38();
  iVar10 = 0;
  iStack_28 = 0;
  puStack_30 = param_2;
  do {
    iVar3 = LCRandom();
    iVar4 = iVar3 >> 0x1f;
    iVar4 = iStack_28 + (((uint)(iVar3 * -0x80000000 + iVar4) >> 0x1f | iVar4 << 1) - iVar4);
    iVar3 = iVar4 * 0x14;
    iVar9 = param_4 * 0xc0 + 0x21f4140;
    iVar8 = iVar9 + iVar3;
    *(char *)(param_5 + iVar10) = (char)iVar4;
    uVar5 = AllocAndLoadMonPersonal_HandleAlternateForm
                      (*(undefined2 *)(iVar9 + iVar3),*(undefined1 *)(iVar8 + 6),0x9a);
    iVar6 = 0;
    *param_1 = *(undefined2 *)(iVar9 + iVar3);
    param_1[1] = *(undefined2 *)(iVar8 + 4);
    iVar4 = iVar8;
    puVar7 = param_1;
    do {
      puVar1 = (undefined2 *)(iVar4 + 8);
      iVar6 = iVar6 + 1;
      iVar4 = iVar4 + 2;
      puVar7[2] = *puVar1;
      puVar7 = puVar7 + 1;
    } while (iVar6 < 4);
    *(char *)(param_1 + 6) = (char)*(undefined2 *)(iVar8 + 2);
    *(byte *)((int)param_1 + 0xd) =
         *(byte *)((int)param_1 + 0xd) & 0xe0 | *(byte *)(iVar8 + 6) & 0x1f;
    *(byte *)((int)param_1 + 0xd) =
         *(byte *)((int)param_1 + 0xd) & 0x9f | (*(byte *)(iVar8 + 7) & 3) << 5;
    *(byte *)((int)param_1 + 0xd) = *(byte *)((int)param_1 + 0xd) & 0x7f;
    bVar2 = GetPersonalAttr(uVar5,0x1c);
    *(byte *)(param_1 + 7) = bVar2 & 1 | *(byte *)(param_1 + 7) & 0xfe;
    *puStack_30 = *(undefined2 *)(iVar8 + 0x10);
    *(char *)(param_3 + iVar10) = (char)*(undefined2 *)(iVar8 + 0x12);
    func_0x0206fbb0(uVar5);
    iVar10 = iVar10 + 1;
    iStack_28 = iStack_28 + 2;
    param_1 = param_1 + 8;
    puStack_30 = puStack_30 + 1;
  } while (iVar10 < 3);
  return;
}

