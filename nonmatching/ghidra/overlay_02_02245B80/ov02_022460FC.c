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
undefined4 ov02_02245FD0(undefined4);
undefined4 func_0x021fc00c(undefined4, undefined4, undefined4, undefined4) __asm__("sub_021FC00C");
undefined4 PlayerAvatar_CopyPositionVector(undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 ov02_02245E04(undefined4, undefined4);
undefined4 ov02_02245E68(undefined4);
undefined4 TaskManager_GetEnvironment(void);
undefined4 PlaySE(undefined4);
extern undefined ov02_02253264;
extern undefined UNK_0225326c __asm__("sub_0225326C");

undefined4 ov02_022460FC(void)

{
  short sVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 in_r3;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  uStack_c = in_r3;
  puVar2 = (undefined4 *)TaskManager_GetEnvironment();
  sVar1 = *(short *)(puVar2 + 3);
  if (sVar1 == 0) {
    uVar3 = ov02_02245E04(&ov02_02253264 + (uint)*(ushort *)(puVar2 + 4) * 0xc,*puVar2);
    puVar2[2] = uVar3;
    PlayerAvatar_CopyPositionVector(*(undefined4 *)(puVar2[1] + 0x40),&uStack_18);
    func_0x021fc00c(puVar2[2] + 0x10,uStack_18,uStack_14,uStack_10);
    PlaySE(*(undefined2 *)(&UNK_0225326c + (uint)*(ushort *)(puVar2 + 4) * 0xc));
    *(short *)(puVar2 + 3) = *(short *)(puVar2 + 3) + 1;
  }
  else if (sVar1 == 1) {
    iVar4 = ov02_02245FD0(puVar2[2]);
    if (iVar4 != 0) {
      *(short *)(puVar2 + 3) = *(short *)(puVar2 + 3) + 1;
    }
  }
  else if (sVar1 == 2) {
    ov02_02245E68(puVar2[2]);
    Heap_Free(puVar2);
    return 1;
  }
  return 0;
}

