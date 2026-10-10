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
undefined4 NARC_Delete(void *);
void * NARC_New(int, int);
undefined4 sub_02094F14();
undefined4 sub_02094EB4();
undefined4 CopyRectToBgTilemapRect(void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, void *, unsigned char, unsigned char, unsigned char, unsigned char);
undefined4 sub_02094C08();
undefined4 sub_02094C88();
undefined4 Heap_Free(void *);
void * Heap_AllocAtEnd(int, unsigned int);
undefined4 Sprite_SetDrawFlag(void *, int);
undefined4 ScheduleBgTilemapBufferTransfer(void *, unsigned char);
undefined4 Sprite_SetOamMode(void *, int);
undefined4 Party_GetCount(void *);

void sub_02094528(undefined4 *param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int iVar8;
  undefined4 *puVar9;
  int iVar10;
  undefined4 auStack_48 [12];


  puVar1 = NARC_New(0x14,param_1[1]);
  puVar2 = Heap_AllocAtEnd(param_1[1],0x1000);
  uVar3 = Party_GetCount((undefined *)param_1[0x1190]);
  iVar8 = 0;
  puVar9 = param_1;
  if ((uVar3 & 0xff) != 0) {
    do {
      sub_02094F14(param_1,iVar8,auStack_48);
      puVar7 = auStack_48;
      puVar6 = puVar9 + 0x67;
      iVar10 = 6;
      do {
        uVar4 = *puVar7;
        uVar5 = puVar7[1];
        puVar7 = puVar7 + 2;
        *puVar6 = uVar4;
        puVar6[1] = uVar5;
        puVar6 = puVar6 + 2;
        iVar10 = iVar10 + -1;
      } while (iVar10 != 0);
      sub_02094C08(auStack_48,param_1 + 0x235,iVar8,puVar9[0x66],puVar2,puVar1,0x40);
      if (((unsigned short *)auStack_48)[4] == 0) {
        Sprite_SetOamMode((undefined *)puVar9[0x66],0);
      }
      else {
        Sprite_SetOamMode((undefined *)puVar9[0x66],1);
      }
      iVar8 = iVar8 + 1;
      puVar9 = puVar9 + 0xd;
    } while (iVar8 < (int)(uVar3 & 0xff));
  }
  auStack_48[0] = 0;
  ((unsigned short *)auStack_48)[4] = 0;
  ((unsigned short *)auStack_48)[5] = 0;
  ((unsigned short *)auStack_48)[6] = 0;
  ((unsigned short *)auStack_48)[7] = 0;
  if (iVar8 < 0x1e) {
    puVar9 = param_1 + iVar8 * 0xd;
    do {
      sub_02094C08(auStack_48,param_1 + 0x235,iVar8,0,puVar2,puVar1,0x40);
      Sprite_SetDrawFlag((undefined *)puVar9[0x66],0);
      iVar8 = iVar8 + 1;
      puVar9 = puVar9 + 0xd;
    } while (iVar8 < 0x1e);
  }
  Heap_Free(puVar2);
  NARC_Delete(puVar1);
  param_1[0x1191] = 0x2094759;
  sub_02094C88(param_1,*(undefined1 *)((int)param_1 + 0xf));
  sub_02094EB4(param_1);
  CopyRectToBgTilemapRect
            ((undefined *)*param_1,2,0,0,0x14,0x14,(undefined *)(param_1[0x11b4] + 0xc),0,0,0x14,
             0x14);
  ScheduleBgTilemapBufferTransfer((undefined *)*param_1,2);
  return;
}

