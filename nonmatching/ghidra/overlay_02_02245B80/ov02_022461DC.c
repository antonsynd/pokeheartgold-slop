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
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);
undefined4 ov02_02245E04(undefined4, undefined4);
undefined4 SysTask_Destroy(undefined4);
undefined4 ov02_02245E68(undefined4);
undefined4 QueueScript(undefined4, undefined4, undefined4, undefined4);
undefined4 TaskManager_GetEnvironment(void);
undefined4 PlaySE(undefined4);
undefined4 ov02_02245ED8(undefined4, undefined4, undefined4, undefined4);
extern undefined ov02_02253D84;
extern undefined ov02_02253254;
extern undefined ov02_02253D80;

undefined4 ov02_022461DC(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;

  puVar1 = (undefined4 *)TaskManager_GetEnvironment();
  switch(*(undefined2 *)((int)puVar1 + 0x12)) {
  case 0:
    uVar2 = ov02_02245E04(&ov02_02253254 + (uint)*(byte *)(puVar1 + 4) * 8,*puVar1);
    puVar1[2] = uVar2;
    PlayerAvatar_CopyPositionVector(*(undefined4 *)(puVar1[1] + 0x40),&uStack_18);
    func_0x021fc00c(puVar1[2] + 0x10,uStack_18,uStack_14,uStack_10);
    PlaySE(0x90f);
    *(short *)((int)puVar1 + 0x12) = *(short *)((int)puVar1 + 0x12) + 1;
    break;
  case 1:
    iVar3 = ov02_02245FD0(puVar1[2]);
    if (iVar3 != 0) {
      ov02_02245ED8(puVar1[2],0xae,*(undefined4 *)(&ov02_02253D80 + (uint)*(byte *)(puVar1 + 4) * 8)
                    ,3);
      uVar2 = SysTask_CreateOnMainQueue(0x22462dd,puVar1,0);
      puVar1[3] = uVar2;
      QueueScript(param_1,3,0,0);
      *(short *)((int)puVar1 + 0x12) = *(short *)((int)puVar1 + 0x12) + 1;
    }
    break;
  case 2:
    SysTask_Destroy(puVar1[3]);
    *(short *)((int)puVar1 + 0x12) = *(short *)((int)puVar1 + 0x12) + 1;
  case 3:
    iVar3 = ov02_02245FD0(puVar1[2]);
    if (iVar3 != 0) {
      ov02_02245ED8(puVar1[2],0xae,*(undefined4 *)(&ov02_02253D84 + (uint)*(byte *)(puVar1 + 4) * 8)
                    ,3);
      *(short *)((int)puVar1 + 0x12) = *(short *)((int)puVar1 + 0x12) + 1;
code_r0x022462a4:
      iVar3 = ov02_02245FD0(puVar1[2]);
      if (iVar3 != 0) {
        ov02_02245E68(puVar1[2]);
        Heap_Free(puVar1);
        return 1;
      }
    }
    break;
  case 4:
    goto code_r0x022462a4;
  }
  return 0;
}

