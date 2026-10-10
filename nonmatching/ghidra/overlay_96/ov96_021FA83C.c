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
undefined4 ov96_021FB8FC();
undefined4 sub_020061D0(int, int);
undefined4 ov96_021EAD88();
undefined4 ov96_021FB8B4();
undefined4 ov96_021EAB94();
undefined4 ov96_021EAE4C();
undefined4 sub_0200606C(unsigned short, int);
extern undefined ov96_0221C589[];
extern undefined ov96_0221DC2C;
extern undefined ov96_0221DC28;
extern undefined UNK_0221c55b __asm__("sub_0221C55B");
undefined4 GF_AssertFail(void);
undefined4 ov96_021EAE9C();
undefined4 Sprite_SetMatrix(void *, void *);
void * Sprite_GetMatrixPtr(void *);
undefined4 ov96_021EAC0C();
undefined4 ov96_021EB5B8();
undefined4 ov96_021EAED4();

void ov96_021FA83C(int param_1,undefined4 *param_2,int param_3,undefined4 param_4)

{
  bool bVar1;
  undefined *puVar2;
  undefined4 *puVar3;
  int iVar4;
  int local_34;
  int iStack_30;
  undefined4 local_2c;
  int local_28;
  undefined4 local_24;
  undefined4 local_20;
  int local_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  uStack_14 = param_4;
  switch(param_2[1]) {
  case 0:
    *(undefined2 *)(param_2 + 0xf) = 0;
    *(undefined2 *)((int)param_2 + 0x3e) = 0;
    break;
  case 1:
    *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
    iVar4 = param_2[2];
    if (iVar4 == 1) {
      iVar4 = param_2[5] -
              (int)(char)(&UNK_0221c55b)
                         [(uint)*(byte *)(param_2 + 3) + (uint)*(byte *)(param_2 + 0xd) * 9];
      if (*(byte *)(param_2 + 0xd) == 0) {
        ov96_021FB8FC(param_2,0);
        ov96_021EAE4C((int *)*param_2,param_2[4],iVar4);
      }
      else {
        ov96_021FB8B4(param_2,(int)(char)(&UNK_0221c55b)
                                         [(uint)*(byte *)(param_2 + 3) +
                                          (uint)*(byte *)(param_2 + 0xd) * 9]);
        ov96_021EAD88((int *)*param_2,param_2[4],iVar4,0);
      }
      if (*(ushort *)(param_2 + 0xe) <= (ushort)*(byte *)(param_2 + 3)) {
        param_2[2] = 2;
        *(undefined1 *)(param_2 + 3) = 0;
        if (*(char *)(param_2 + 0xd) == '\0') {
          ov96_021EAB94((int *)*param_2,0);
        }
      }
    }
    else if (iVar4 == 2) {
      if (*(ushort *)((int)param_2 + 0x3a) <= (ushort)*(byte *)(param_2 + 3)) {
        param_2[2] = 3;
        *(undefined1 *)(param_2 + 3) = 0;
        if (*(char *)(param_2 + 0xd) == '\0') {
          ov96_021EAB94((int *)*param_2,1);
          sub_0200606C(0x8aa,(uint)(byte)(&ov96_0221DC2C)[param_1]);
          sub_020061D0((uint)(byte)(&ov96_0221DC2C)[param_1],(int)(char)(&ov96_0221DC28)[param_1]);
        }
      }
    }
    else if (iVar4 == 3) {
      iVar4 = param_2[5] -
              (int)(char)ov96_0221C589
                         [(uint)*(byte *)(param_2 + 3) + (uint)*(byte *)(param_2 + 0xd) * 9];
      if (*(byte *)(param_2 + 0xd) == 0) {
        ov96_021FB8FC(param_2,1);
        ov96_021EAE4C((int *)*param_2,param_2[4],iVar4);
      }
      else {
        ov96_021FB8B4(param_2,(int)(char)ov96_0221C589
                                         [(uint)*(byte *)(param_2 + 3) +
                                          (uint)*(byte *)(param_2 + 0xd) * 9]);
        ov96_021EAD88((int *)*param_2,param_2[4],iVar4,0);
      }
      if ((uint)*(byte *)(param_2 + 3) < (uint)*(ushort *)(param_2 + 0xe)) {
        if ((int)(uint)*(byte *)(param_2 + 3) < (int)(*(ushort *)(param_2 + 0xe) - 5)) {
          *(undefined2 *)(param_2 + 0xf) = 0;
        }
      }
      else {
        param_2[1] = 0;
        param_2[2] = 0;
        *(undefined1 *)(param_2 + 3) = 0;
        ov96_021EAD88((int *)*param_2,param_2[4],param_2[5],0);
        if (*(char *)(param_2 + 0xd) != '\0') {
          sub_0200606C(0x8a8,(uint)(byte)(&ov96_0221DC2C)[param_1]);
          sub_020061D0((uint)(byte)(&ov96_0221DC2C)[param_1],(int)(char)(&ov96_0221DC28)[param_1]);
        }
        ov96_021FB8B4(param_2,0);
        *(undefined2 *)(param_2 + 0xf) = 0;
        *(undefined2 *)((int)param_2 + 0x3e) = 0;
      }
    }
    else {
      GF_AssertFail();
    }
    break;
  case 2:
    *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
    if (*(char *)((int)param_2 + 0xd) == '\0') {
      switch(*(undefined1 *)((int)param_2 + 0xe)) {
      case 1:
        *(undefined1 *)((int)param_2 + 0xe) = 3;
        break;
      case 2:
        *(undefined1 *)((int)param_2 + 0xe) = 4;
        break;
      case 3:
        *(undefined1 *)((int)param_2 + 0xe) = 2;
        break;
      case 4:
        *(undefined1 *)((int)param_2 + 0xe) = 1;
      }
      ov96_021EAC0C((int *)*param_2,(uint)*(byte *)((int)param_2 + 0xe));
    }
    *(byte *)((int)param_2 + 0xd) = *(char *)((int)param_2 + 0xd) + 1U & 3;
    if (0x1e < *(byte *)(param_2 + 3)) {
      *(undefined1 *)(param_2 + 3) = 0;
      param_2[1] = 0;
      param_2[2] = 0;
      ov96_021EAC0C((int *)*param_2,1);
    }
    break;
  case 3:
    iVar4 = param_2[6];
    bVar1 = false;
    if (iVar4 < 0x78) {
      param_3 = 1;
      if (0x78 < iVar4 + 1) {
        param_3 = iVar4 + -0x78;
      }
      bVar1 = true;
    }
    else if (0x78 < iVar4) {
      param_3 = -1;
      if (iVar4 + -1 < 0x78) {
        param_3 = 0x78 - iVar4;
      }
      bVar1 = true;
    }
    if (bVar1) {
      param_2[6] = param_2[6] + param_3;
      param_2[7] = param_2[7] + param_3;
      ov96_021EAED4((int *)*param_2,0,param_3,1,1);
    }
  }
  puVar2 = (undefined *)ov96_021EB5B8(param_2[8]);
  puVar3 = (undefined4 *)Sprite_GetMatrixPtr(puVar2);
  local_20 = *puVar3;
  local_18 = puVar3[2];
  local_1c = param_2[7] << 0xc;
  Sprite_SetMatrix(puVar2,(undefined *)&local_20);
  ov96_021EAE9C((undefined4 *)*param_2,&iStack_30,&local_34);
  puVar2 = (undefined *)ov96_021EB5B8(param_2[10]);
  puVar3 = (undefined4 *)Sprite_GetMatrixPtr(puVar2);
  local_2c = *puVar3;
  local_24 = puVar3[2];
  local_28 = local_34 << 0xc;
  Sprite_SetMatrix(puVar2,(undefined *)&local_2c);
  return;
}

