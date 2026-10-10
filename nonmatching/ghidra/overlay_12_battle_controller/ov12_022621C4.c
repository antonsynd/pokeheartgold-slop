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
undefined4 ov12_0223A96C(undefined4);
undefined4 ov12_0223A954(undefined4);
undefined4 ov12_0223A960(undefined4);
undefined4 ov12_0223A984(undefined4);
undefined4 BattleSystem_GetRecvBufferPtr(void);
undefined4 BattleController_RecvData(undefined4, undefined4);
undefined4 ov12_0223A990(undefined4);
undefined4 BattleSystem_GetSendBufferPtr(void);
undefined4 ov12_0223A978(undefined4);

void ov12_022621C4(undefined4 param_1,int param_2)

{
  ushort uVar1;
  int iVar2;
  ushort *puVar3;
  ushort *puVar4;
  ushort *puVar5;
  int iVar6;
  
  if (param_2 == 1) {
    iVar2 = BattleSystem_GetRecvBufferPtr();
    puVar3 = (ushort *)ov12_0223A978(param_1);
    puVar4 = (ushort *)ov12_0223A984(param_1);
    puVar5 = (ushort *)ov12_0223A990(param_1);
  }
  else {
    iVar2 = BattleSystem_GetSendBufferPtr();
    puVar3 = (ushort *)ov12_0223A954(param_1);
    puVar4 = (ushort *)ov12_0223A960(param_1);
    puVar5 = (ushort *)ov12_0223A96C(param_1);
  }
  if (*puVar3 != *puVar4) {
    if (*puVar3 == *puVar5) {
      *puVar3 = 0;
      *puVar5 = 0;
    }
    iVar6 = BattleController_RecvData(param_1,iVar2 + (uint)*puVar3);
    if (iVar6 == 1) {
      uVar1 = *puVar3;
      *puVar3 = uVar1 + CONCAT11(*(undefined1 *)(iVar2 + uVar1 + 3),
                                 *(undefined1 *)(iVar2 + uVar1 + 2)) + 4;
    }
  }
  return;
}

