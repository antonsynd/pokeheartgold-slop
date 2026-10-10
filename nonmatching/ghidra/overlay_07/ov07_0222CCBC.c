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
undefined4 Heap_Free(void *);
undefined4 ov07_0221C470();
undefined4 ov07_0222207C();
undefined4 ov07_0221FAC8();
undefined4 Pokepic_ResumePaletteFade(void *);
undefined4 ov07_022220B8();
unsigned char PaletteData_BeginPaletteFade(void *, unsigned short, unsigned short, signed char, unsigned char, unsigned char, unsigned short);
undefined4 ov07_0221C448();
undefined4 Pokepic_StartPaletteFade(void *, int, int, int, int);
undefined4 ov07_0221FA78();
undefined4 ManagedSprite_SetPositionXY(void *, short, short);
undefined4 Pokepic_SetAttr(void *, int, int);
undefined4 ov07_022227D8();
undefined4 ov07_02221FF0();

void ov07_0222CCBC(int *param_1,int *param_2)

{
  ushort uVar1;
  int iVar2;
  uint uVar3;
  undefined *puVar4;
  
  iVar2 = param_2[1];
  if (iVar2 == 0) {
    ov07_022227D8((short *)(param_2 + 5));
    ov07_022220B8((short *)(param_2 + 5),(undefined *)param_2[2],(int)(short)param_2[0xe],
                  (int)*(short *)((int)param_2 + 0x3a));
    if (param_2[4] == 1) {
      ov07_0222207C((short *)(param_2 + 5),(undefined *)param_2[3],(short)param_2[0xe],
                    (short)((uint)(((int)*(short *)((int)param_2 + 0x3a) - param_2[0xf]) * 0x10000)
                           >> 0x10));
    }
    iVar2 = Pokepic_ResumePaletteFade((undefined *)param_2[2]);
    if (iVar2 == 0) {
      Pokepic_StartPaletteFade((undefined *)param_2[2],0x10,0,0,0);
      if (param_2[4] == 1) {
        uVar3 = ov07_02221FF0((undefined4 *)param_2[3]);
        puVar4 = (undefined *)ov07_0221FA78(*param_2);
        PaletteData_BeginPaletteFade(puVar4,4,(ushort)(1 << (uVar3 & 0xff)),0,0x10,0,0);
      }
      param_2[1] = param_2[1] + 1;
      return;
    }
  }
  else if (iVar2 == 1) {
    ov07_022227D8((short *)(param_2 + 5));
    ov07_022220B8((short *)(param_2 + 5),(undefined *)param_2[2],(int)(short)param_2[0xe],
                  (int)*(short *)((int)param_2 + 0x3a));
    if (param_2[4] == 1) {
      ov07_0222207C((short *)(param_2 + 5),(undefined *)param_2[3],(short)param_2[0xe],
                    (short)((uint)(((int)*(short *)((int)param_2 + 0x3a) - param_2[0xf]) * 0x10000)
                           >> 0x10));
    }
    iVar2 = Pokepic_ResumePaletteFade((undefined *)param_2[2]);
    if (iVar2 == 0) {
      Pokepic_SetAttr((undefined *)param_2[2],0,(int)(short)param_2[0xe]);
      Pokepic_SetAttr((undefined *)param_2[2],1,(int)*(short *)((int)param_2 + 0x3a));
      if (param_2[4] == 1) {
        uVar1 = ov07_0221C470(*param_2);
        iVar2 = ov07_0221FAC8(*param_2,(uint)uVar1);
        if (iVar2 == 0) {
          Pokepic_SetAttr((undefined *)param_2[2],6,0);
        }
        ManagedSprite_SetPositionXY
                  ((undefined *)param_2[3],(short)param_2[0xe],
                   (short)((uint)(((int)*(short *)((int)param_2 + 0x3a) - param_2[0xf]) * 0x10000)
                          >> 0x10));
      }
      param_2[1] = param_2[1] + 1;
      return;
    }
  }
  else {
    if (iVar2 != 2) {
      return;
    }
    ov07_0221C448(*param_2,param_1);
    Heap_Free((undefined *)param_2);
  }
  return;
}

