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
undefined4 ov07_02234B5C();
undefined4 sub_02014400(int, int, int, void *);
undefined4 Pokepic_SetAttr(void *, int, int);
undefined4 Pokepic_Push(void *);
void * Pokepic_GetTemplate(void *);
undefined4 Pokepic_ScheduleReloadFromNarc(void *);
undefined4 ReadWholeNarcMemberByIdPair(void *, int, int);

void ov07_02234A20(int *param_1,int param_2)

{
  uint *puVar1;
  int iVar2;
  int iVar3;
  byte abStack_28 [4];
  uint uStack_24;
  uint uStack_20;
  uint uStack_1c;
  uint uStack_18;
  
  Pokepic_Push((undefined *)param_1[*param_1 + 6]);
  uStack_20 = 0x102;
  uStack_1c = uStack_1c & 0xffffff00;
  uStack_18 = 0;
  if ((*(byte *)((int)param_1 + *param_1 + 0x4c) & 1) == 0) {
    uStack_24 = 0x1000072;
    iVar3 = 0x86;
  }
  else {
    uStack_24 = 0x1010072;
    iVar3 = 0x87;
  }
  puVar1 = (uint *)Pokepic_GetTemplate((undefined *)param_1[*param_1 + 6]);
  *puVar1 = uStack_24;
  puVar1[1] = uStack_20;
  puVar1[2] = uStack_1c;
  puVar1[3] = uStack_18;
  Pokepic_ScheduleReloadFromNarc((undefined *)param_1[*param_1 + 6]);
  sub_02014400((uint)(ushort)*puVar1,(uint)*(ushort *)((int)puVar1 + 2),param_2,
               *(undefined **)param_1[*param_1 + 2]);
  *(uint *)(param_1[*param_1 + 2] + 4) = uStack_24 & 0xffff;
  *(uint *)(param_1[*param_1 + 2] + 8) = uStack_20 & 0xffff;
  ReadWholeNarcMemberByIdPair(abStack_28,0x75,iVar3);
  *(uint *)(param_1[*param_1 + 2] + 0xc) = (uint)abStack_28[0];
  iVar3 = *param_1;
  iVar2 = ov07_02234B5C(*(undefined1 *)((int)param_1 + iVar3 + 0x4c),1);
  iVar2 = *(int *)(param_1[iVar3 + 2] + 0xc) + iVar2;
  Pokepic_SetAttr((undefined *)param_1[iVar3 + 6],1,iVar2);
  if ((*(byte *)((int)param_1 + *param_1 + 0x4c) & 1) != 0) {
    Pokepic_SetAttr((undefined *)param_1[*param_1 + 6],0x2e,1);
    Pokepic_SetAttr((undefined *)param_1[*param_1 + 6],0x14,iVar2 + (0x24 - (uint)abStack_28[0]));
    Pokepic_SetAttr((undefined *)param_1[*param_1 + 6],0x15,0);
    Pokepic_SetAttr((undefined *)param_1[*param_1 + 6],0x16,0x24 - (uint)abStack_28[0]);
    Pokepic_SetAttr((undefined *)param_1[*param_1 + 6],0x29,0);
  }
  return;
}

