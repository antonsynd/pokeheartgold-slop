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
undefined4 GF_CreateNewVramTransferTask(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GF_AssertFail(void);
extern undefined ov90_0225C1EC;

void ov90_0225B2A8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  byte *pbVar3;
  int iVar4;
  
  if (*(short *)(param_1 + 0x65e) != 0) {
    if (((*(short *)(param_1 + 0x65c) == 0) || (*(short *)(param_1 + 0x65c) == 8)) &&
       (iVar4 = 0, *(char *)(param_1 + 0x14) != '\0')) {
      pbVar3 = &ov90_0225C1EC;
      do {
        if (*(char *)(param_1 + iVar4 + 0x2c) == '\0') {
          uVar2 = (uint)*pbVar3;
          if (*(short *)(param_1 + 0x65c) == 0) {
            iVar1 = uVar2 + 3;
          }
          else {
            iVar1 = uVar2 + 7;
          }
          iVar1 = GF_CreateNewVramTransferTask
                            (0xf,uVar2 << 5,*(int *)(*(int *)(param_1 + 0x658) + 0xc) + iVar1 * 0x20
                             ,0x20,param_4);
          if (iVar1 == 0) {
            GF_AssertFail();
          }
        }
        iVar4 = iVar4 + 1;
        pbVar3 = pbVar3 + 1;
      } while (iVar4 < (int)(uint)*(byte *)(param_1 + 0x14));
    }
    *(ushort *)(param_1 + 0x65c) = *(short *)(param_1 + 0x65c) + 1U & 0xf;
  }
  return;
}

