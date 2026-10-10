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
undefined4 ManagedSprite_SetAnim();
undefined4 ov92_0226077C();
undefined4 ov92_0225DDD8();
undefined4 ManagedSprite_TickTwoFrames();
undefined4 ov92_0225DF58();
undefined4 ManagedSprite_SetPaletteOverrideOffset();
undefined4 SpriteSystem_NewSprite();
extern undefined UNK_02263b6e __asm__("sub_02263B6E");

void ov92_0225E6A4(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int *piVar7;
  int iVar8;
  int *piStack_5c;
  undefined1 auStack_4c [8];
  undefined4 uStack_44;
  undefined4 uStack_18;
  
  uVar2 = *(undefined4 *)(param_2[5] + 8);
  iVar6 = 0;
  uVar3 = *(undefined4 *)(param_2[5] + 0xc);
  sVar1 = 0;
  if (0 < param_2[1]) {
    iVar8 = 0;
    piVar7 = param_2;
    piStack_5c = param_2;
    uStack_18 = param_4;
    do {
      *(undefined2 *)(piStack_5c + 0x3d) = 0xff;
      if (iVar6 != *param_2) {
        *(short *)(piStack_5c + 0x3d) = sVar1;
        ov92_0225DDD8(auStack_4c,(int)*(short *)(&UNK_02263b6e + iVar8 + param_2[1] * 6),0xf0,2,0,
                      9000);
        uStack_44 = 1;
        iVar4 = SpriteSystem_NewSprite(uVar2,uVar3,auStack_4c);
        piVar7[7] = iVar4;
        ov92_0225DDD8(auStack_4c,(int)*(short *)(&UNK_02263b6e + iVar8 + param_2[1] * 6),0xf0,2,0,
                      9000);
        uStack_44 = 2;
        iVar4 = SpriteSystem_NewSprite(uVar2,uVar3,auStack_4c);
        piVar7[10] = iVar4;
        uVar5 = ov92_0226077C(param_1,iVar6);
        ManagedSprite_SetPaletteOverrideOffset(piVar7[10],uVar5);
        ov92_0225DDD8(auStack_4c,(int)*(short *)(&UNK_02263b6e + iVar8 + param_2[1] * 6),0xf0,2,0,
                      9000);
        uStack_44 = 3;
        iVar4 = SpriteSystem_NewSprite(uVar2,uVar3,auStack_4c);
        piVar7[0xd] = iVar4;
        uVar5 = ov92_0226077C(param_1,iVar6);
        ManagedSprite_SetPaletteOverrideOffset(piVar7[0xd],uVar5);
        ManagedSprite_SetAnim(piVar7[0xd],5);
        ManagedSprite_TickTwoFrames(piVar7[7]);
        ManagedSprite_TickTwoFrames(piVar7[10]);
        ManagedSprite_TickTwoFrames(piVar7[0xd]);
        ov92_0225DF58(param_2,iVar6,0);
        iVar8 = iVar8 + 2;
        sVar1 = sVar1 + 1;
        piVar7 = piVar7 + 1;
      }
      iVar6 = iVar6 + 1;
      piStack_5c = (int *)((int)piStack_5c + 2);
    } while (iVar6 < param_2[1]);
  }
  return;
}

