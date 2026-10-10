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
undefined4 func_0x021ec2ec() __asm__("sub_021EC2EC");
undefined4 func_0x021ec2a8() __asm__("sub_021EC2A8");
undefined4 func_0x021ffc18() __asm__("sub_021FFC18");
undefined4 ov38_0221BA10();
undefined4 ov38_0221BB44();
undefined4 ov38_0221BA00();

undefined4 ov38_0221BA38(uint param_1,int param_2,int param_3,int param_4,int param_5)

{
  byte *pbVar1;
  uint uVar2;
  int iVar3;
  undefined1 *puVar4;
  uint uVar5;
  int iVar6;
  uint local_1c;
  
  uVar2 = param_3 + 8;
  iVar3 = ov38_0221BB44(uVar2);
  if (param_5 < iVar3 + 1) {
    return 2;
  }
  puVar4 = (undefined1 *)func_0x021ec2a8(10,uVar2);
  if (puVar4 == (undefined1 *)0x0) {
    return 1;
  }
  local_1c = (param_1 >> 0x18) + (param_1 >> 0x10 & 0xff) + (param_1 >> 8 & 0xff) + (param_1 & 0xff)
  ;
  iVar3 = 0;
  if (0 < param_3) {
    do {
      pbVar1 = (byte *)(param_2 + iVar3);
      iVar3 = iVar3 + 1;
      local_1c = local_1c + *pbVar1;
    } while (iVar3 < param_3);
  }
  ov38_0221BA00(local_1c);
  uVar5 = ov38_0221BA10();
  puVar4[4] = (byte)uVar5 ^ (byte)param_1;
  uVar5 = ov38_0221BA10();
  puVar4[5] = (byte)uVar5 ^ (byte)(param_1 >> 8);
  uVar5 = ov38_0221BA10();
  puVar4[6] = (byte)uVar5 ^ (byte)(param_1 >> 0x10);
  uVar5 = ov38_0221BA10();
  puVar4[7] = (byte)uVar5 ^ (byte)(param_1 >> 0x18);
  iVar3 = 0;
  if (0 < param_3) {
    do {
      uVar5 = ov38_0221BA10();
      iVar6 = iVar3 + 1;
      puVar4[iVar3 + 8] = *(byte *)(param_2 + iVar3) ^ (byte)uVar5;
      iVar3 = iVar6;
    } while (iVar6 < param_3);
  }
  local_1c = local_1c ^ 0x4a3b2c1d;
  *puVar4 = (char)(local_1c >> 0x18);
  puVar4[1] = (char)(local_1c >> 0x10);
  puVar4[2] = (char)(local_1c >> 8);
  puVar4[3] = (char)local_1c;
  func_0x021ffc18(puVar4,param_4,param_3 + 8,2);
  iVar3 = ov38_0221BB44(uVar2);
  *(undefined1 *)(param_4 + iVar3) = 0;
  func_0x021ec2ec(10,puVar4);
  return 0;
}

