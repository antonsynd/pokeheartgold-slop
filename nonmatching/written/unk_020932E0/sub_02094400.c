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
undefined4 sub_02094EB4();
undefined4 CopyRectToBgTilemapRect(void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, void *, unsigned char, unsigned char, unsigned char, unsigned char);
undefined4 sub_02094C08();
undefined4 sub_02094C88();
undefined4 Heap_Free(void *);
void * Heap_AllocAtEnd(int, unsigned int);
undefined4 Sprite_SetDrawFlag(void *, int);
undefined4 ScheduleBgTilemapBufferTransfer(void *, unsigned char);
undefined4 Sprite_SetOamMode(void *, int);

void sub_02094400(undefined4 *param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  int iVar9;
  undefined4 auStack_44 [12];
  
  puVar1 = NARC_New(0x14,param_1[1]);
  puVar2 = Heap_AllocAtEnd(param_1[1],0x1000);
  iVar9 = 0;
  puVar8 = param_1;
  do {
    Sprite_SetOamMode((undefined *)puVar8[0x66],0);
    iVar3 = (*(code *)param_1[0x1192])
                      (param_1[0x118f],*(undefined1 *)((int)param_1 + 0xf),iVar9,auStack_44);
    if (iVar3 == 0) {
      sub_02094C08(auStack_44,param_1 + 0x235,iVar9,0,puVar2,puVar1,0x40);
      Sprite_SetDrawFlag((undefined *)puVar8[0x66],0);
    }
    else {
      puVar7 = auStack_44;
      puVar6 = puVar8 + 0x67;
      iVar3 = 6;
      do {
        uVar4 = *puVar7;
        uVar5 = puVar7[1];
        puVar7 = puVar7 + 2;
        *puVar6 = uVar4;
        puVar6[1] = uVar5;
        puVar6 = puVar6 + 2;
        iVar3 = iVar3 + -1;
      } while (iVar3 != 0);
      sub_02094C08(auStack_44,param_1 + 0x235,iVar9,puVar8[0x66],puVar2,puVar1,0x40);
      if (((unsigned short *)auStack_44)[4] == 0) {
        Sprite_SetOamMode((undefined *)puVar8[0x66],0);
      }
      else {
        Sprite_SetOamMode((undefined *)puVar8[0x66],1);
      }
    }
    iVar9 = iVar9 + 1;
    puVar8 = puVar8 + 0xd;
  } while (iVar9 < 0x1e);
  Heap_Free(puVar2);
  NARC_Delete(puVar1);
  param_1[0x1191] = 0x2094759;
  sub_02094C88(param_1,*(undefined1 *)((int)param_1 + 0xf));
  sub_02094EB4(param_1);
  CopyRectToBgTilemapRect
            ((undefined *)*param_1,2,0,0,0x14,0x14,(undefined *)(param_1[0x11b5] + 0xc),0,0,0x20,
             0x18);
  ScheduleBgTilemapBufferTransfer((undefined *)*param_1,2);
  return;
}

