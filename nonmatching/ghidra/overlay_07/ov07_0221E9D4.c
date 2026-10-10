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
undefined4 ov07_0221DD38();
undefined4 func_0x02007a44() __asm__("sub_02007A44");
undefined4 Heap_Alloc();
undefined4 Heap_Free();
undefined4 GF_AssertFail();
undefined4 SysTask_CreateOnMainQueue();
undefined4 func_0x020d4994() __asm__("sub_020D4994");

undefined4 ov07_0221E9D4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  char *pcVar5;
  char *pcVar6;
  short *psVar7;
  char cVar8;
  undefined4 *puVar9;

  puVar9 = *(undefined4 **)(param_1 + 0x48);
  iVar2 = Heap_Alloc(*puVar9,0x28,param_3,param_4,param_4);
  func_0x020d4994(iVar2,0,0x28);
  uVar3 = Heap_Alloc(*puVar9,400);
  *(undefined4 *)(iVar2 + 0x24) = uVar3;
  func_0x020d4994(uVar3,0,400);
  *(ushort *)(param_1 + 0x44) = *(ushort *)(param_1 + 0x44) | 4;
  *(undefined4 *)(iVar2 + 0x18) = 0;
  **(undefined4 **)(iVar2 + 0x24) = *puVar9;
  *(undefined4 *)(*(int *)(iVar2 + 0x24) + 4) = puVar9[0x32];
  ov07_0221DD38(puVar9 + 0x60,iVar2,3);
  uVar4 = *(uint *)(param_1 + 0x10);
  if (0x34 < uVar4) {
    if (uVar4 < 0x3a) {
      if (0x38 < uVar4) {
        cVar8 = '\x1a';
        goto LAB_0221eaec;
      }
      if (uVar4 == 0x35) {
        cVar8 = '\x06';
        goto LAB_0221eaec;
      }
    }
    else if (uVar4 == 0x3a) {
      cVar8 = '\f';
      goto LAB_0221eaec;
    }
    goto code_r0x0221eae6;
  }
  if (0x33 < uVar4) {
    cVar8 = '\b';
    goto LAB_0221eaec;
  }
  switch(uVar4) {
  case 0:
  case 1:
  case 3:
  case 5:
    cVar8 = '\0';
    break;
  case 2:
    cVar8 = '\x16';
    break;
  case 4:
    cVar8 = '\x02';
    break;
  case 7:
    cVar8 = '\x1c';
    break;
  case 0xb:
    cVar8 = '\x18';
    break;
  case 0xe:
    cVar8 = '\x14';
    break;
  case 0x11:
    cVar8 = '\x12';
    break;
  case 0x13:
    cVar8 = '\x04';
    break;
  case 0x16:
    cVar8 = '\n';
    break;
  case 0x1c:
    cVar8 = '\x0e';
    break;
  case 0x1d:
    cVar8 = '\x10';
    break;
  default:
    if (uVar4 == 0x2c) {
      cVar8 = '\x1e';
      break;
    }
  case 6:
  case 8:
  case 9:
  case 10:
  case 0xc:
  case 0xd:
  case 0xf:
  case 0x10:
  case 0x12:
  case 0x14:
  case 0x15:
  case 0x17:
  case 0x18:
  case 0x19:
  case 0x1a:
  case 0x1b:
code_r0x0221eae6:
    GF_AssertFail();
    cVar8 = '\0';
  }
LAB_0221eaec:
  pcVar5 = (char *)func_0x02007a44(9,cVar8,0,*puVar9,1);
  if (pcVar5 == (char *)0x0) {
    GF_AssertFail();
  }
  *(char *)(*(int *)(iVar2 + 0x24) + 0x189) = cVar8 + '\x01';
  uVar4 = 0;
  cVar8 = *pcVar5;
  pcVar6 = pcVar5;
  while (cVar8 != -1) {
    pcVar6 = pcVar6 + 1;
    *(char *)(*(int *)(iVar2 + 0x24) + uVar4 + 8) = cVar8;
    uVar4 = uVar4 + 1 & 0xffff;
    cVar8 = *pcVar6;
  }
  *(char *)(*(int *)(iVar2 + 0x24) + 0x188) = (char)uVar4;
  uVar4 = 0;
  psVar7 = (short *)(pcVar5 + 0x80);
  sVar1 = *(short *)(pcVar5 + 0x80);
  while (sVar1 != -0x68) {
    *(short *)(*(int *)(iVar2 + 0x24) + uVar4 * 2 + 0x88) = sVar1;
    psVar7 = psVar7 + 1;
    uVar4 = uVar4 + 1 & 0xffff;
    sVar1 = *psVar7;
  }
  Heap_Free(pcVar5);
  SysTask_CreateOnMainQueue(0x221e915,iVar2,0x1001);
  return 0;
}

