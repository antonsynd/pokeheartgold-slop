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
undefined4 ov96_021EDF3C();
undefined4 PlaySE(unsigned short);
undefined4 BufferPokeathlonCourseName(void *, unsigned int, unsigned int);
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_021ED86C();
undefined4 PokeathlonCourse_GetMode(void *);
undefined4 sub_0200FC20(void);
undefined4 ov96_021EE97C();
undefined4 ov96_021EEA80();
undefined4 BufferPlayersName(void *, unsigned int, void *);
undefined4 IsPaletteFadeFinished(void);
undefined4 ov96_021EE324();
undefined4 ov96_021ED838();
void * PokeathlonCourse_GetParticipantData(void *, int);
undefined4 BeginNormalPaletteFade(int, int, int, unsigned short, int, int, int);
undefined4 ov96_021EE908();
void * PokeathlonCourse_GetPlayerProfileFromData(void *, int);
undefined4 ov96_021EE830();
undefined4 PlaySE_SetPitch(int, int);
undefined4 ManagedSprite_SetAnim(void *, int);
undefined4 Heap_Free(void *);
undefined4 ov96_021EAC5C();
undefined4 ov96_021EE8CC();
undefined4 ov96_021ED8A4();
undefined4 ov96_021EAA04();
undefined4 GF_AssertFail(void);
undefined4 ov96_021EC2E0();
undefined4 SysTask_Destroy(void *);
undefined4 ov96_021EE54C();
undefined4 ov96_021EE944();
undefined4 ov96_021ECB38();
undefined4 ov96_021EAC0C();
undefined4 PokeathlonCourse_SetStateField07(void *, unsigned char);
undefined4 ov96_021ED524();
extern undefined ov96_0221B088;
undefined4 ov96_021E8BAC();
undefined4 ov96_021EAA20();
void * Sprite_GetCellAnim(void *);

undefined4 ov96_021EB730(undefined *param_1)

{
  int *piVar1;
  uint uVar2;
  undefined *puVar3;
  uint uVar4;
  int *piVar5;
  int iVar6;
  undefined *puVar7;
  int iVar8;
  int local_18;
  
  piVar1 = (int *)PokeathlonCourse_GetHeapAllocPtr4(param_1);
  iVar8 = 0;
  uVar2 = PokeathlonCourse_GetMode(param_1);
  if (uVar2 == 1) {
    iVar8 = ov96_021EE324(param_1);
  }
  ov96_021EE830(piVar1[3]);
  uVar2 = ov96_021EEA80(piVar1[3]);
  if ((uVar2 == 0) && (iVar8 == 0)) {
    puVar7 = (undefined *)ov96_021EE97C(piVar1[3]);
    uVar2 = 0xffffffff;
    switch(*(undefined1 *)((int)piVar1 + 0xb5)) {
    case 0:
      uVar2 = 0;
      BufferPokeathlonCourseName(puVar7,0,(uint)*(byte *)((int)piVar1 + 0xb1));
      *(undefined1 *)((int)piVar1 + 0xb5) = 1;
      break;
    case 1:
      sub_0200FC20();
      PlaySE(0x8dc);
      *(undefined1 *)((int)piVar1 + 0xb5) = 2;
      break;
    case 2:
      if (*(byte *)(piVar1 + 0x2d) < 4) {
        *(char *)(piVar1 + 0x2d) = (char)piVar1[0x2d] + '\x01';
      }
      else {
        *(undefined1 *)(piVar1 + 0x2d) = 0;
        *(undefined1 *)((int)piVar1 + 0xb5) = 3;
      }
      break;
    case 3:
      BeginNormalPaletteFade(0,1,1,0x7fff,0x18,1,*piVar1);
      *(undefined1 *)((int)piVar1 + 0xb5) = 4;
      break;
    case 4:
      iVar8 = IsPaletteFadeFinished();
      if (iVar8 != 0) {
        *(undefined1 *)((int)piVar1 + 0xb5) = 5;
      }
      break;
    case 5:
      piVar5 = (int *)PokeathlonCourse_GetParticipantData
                                (param_1,(uint)*(byte *)((int)piVar1 + 0xb2));
      if (*piVar5 < 1) {
        uVar2 = ov96_021ED838(param_1,(uint)*(byte *)((int)piVar1 + 0xb2));
        uVar4 = ov96_021ED86C(param_1,(uint)*(byte *)((int)piVar1 + 0xb2));
        ov96_021EDF3C(puVar7,uVar4,7,1);
      }
      else {
        uVar4 = ov96_021ED838(param_1,(uint)*(byte *)((int)piVar1 + 0xb2));
        ov96_021EE908((undefined4 *)piVar1[3],uVar4);
      }
      *(undefined1 *)((int)piVar1 + 0xb5) = 6;
      break;
    case 6:
      puVar3 = PokeathlonCourse_GetPlayerProfileFromData
                         (param_1,(uint)*(byte *)((int)piVar1 + 0xb2));
      BufferPlayersName(puVar7,0,puVar3);
      uVar2 = 0;
      do {
        ov96_021ED524(param_1,(uint)*(byte *)((int)piVar1 + 0xb2),uVar2 & 0xff,uVar2 + 1);
        uVar2 = uVar2 + 1;
      } while ((int)uVar2 < 3);
      ov96_021ECB38((int)(piVar1 + 8),param_1,(uint)*(byte *)((int)piVar1 + 0xb2),2,*piVar1);
      ManagedSprite_SetAnim((undefined *)piVar1[*(byte *)((int)piVar1 + 0xb2) + 8],1);
      uVar2 = ov96_021ED8A4(param_1,(uint)*(byte *)((int)piVar1 + 0xb2));
      if ((uVar2 & 0xff) < 5) {
        iVar8 = 0x8dc;
      }
      else {
        iVar8 = 0x8dd;
      }
      PlaySE_SetPitch(iVar8,(int)(short)*(undefined4 *)(&ov96_0221B088 + (uVar2 & 0xff) * 4));
      uVar2 = 1;
      *(undefined1 *)(piVar1 + 0x2c) = 1;
      *(undefined1 *)((int)piVar1 + 0xb5) = 7;
      break;
    case 7:
      if ((char)piVar1[0x2c] == '\0') {
        if (*(byte *)((int)piVar1 + 0xb2) < 4) {
          *(undefined1 *)((int)piVar1 + 0xb5) = 5;
        }
        else {
          piVar1[0x2e] = 1;
          uVar2 = 2;
          *(undefined1 *)((int)piVar1 + 0xb5) = 8;
        }
      }
      break;
    case 8:
      uVar4 = PokeathlonCourse_GetMode(param_1);
      if ((uVar4 == 0) || (uVar4 = ov96_021EE54C(param_1), uVar4 != 0)) {
        iVar8 = ov96_021EC2E0((int)piVar1);
        if (iVar8 != 0) {
          Heap_Free((undefined *)piVar1[0x22]);
          SysTask_Destroy((int *)piVar1[2]);
        }
        ov96_021EE944(piVar1[3]);
        PokeathlonCourse_SetStateField07(param_1,2);
        return 0;
      }
      break;
    default:
      GF_AssertFail();
    }
    if (uVar2 != 0xffffffff) {
      ov96_021EE8CC((undefined4 *)piVar1[3],uVar2);
      *(char *)((int)piVar1 + 0xb7) = *(char *)((int)piVar1 + 0xb7) + '\x01';
    }
  }
  if ((char)piVar1[0x2c] != '\0') {
    uVar2 = (uint)*(byte *)((int)piVar1 + 0xb2) * 0x3000000 >> 0x18;
    iVar8 = piVar1[0x25];
    piVar1[0x25] = piVar1[0x25] + 1;
    if (iVar8 == 0) {
      iVar8 = 0;
      do {
        piVar5 = (int *)ov96_021EAA04(piVar1[5],uVar2 & 0xff);
        ov96_021EAC0C(piVar5,2);
        ov96_021EAC5C(piVar5,0x10);
        iVar8 = iVar8 + 1;
        uVar2 = uVar2 + 1;
      } while (iVar8 < 3);
    }
    else {
      iVar8 = piVar1[0x25];
      piVar1[0x25] = piVar1[0x25] + 1;
      if (0x3b < iVar8) {
        iVar8 = 0;
        local_18 = 0;
        do {
          piVar5 = (int *)ov96_021EAA04(piVar1[5],uVar2 & 0xff);
          ov96_021EAC0C(piVar5,1);
          ov96_021EAC5C(piVar5,0);
          iVar6 = ov96_021EAA20(piVar5);
          puVar7 = (undefined *)ov96_021E8BAC(iVar6);
          puVar7 = Sprite_GetCellAnim(puVar7);
          *(int *)(puVar7 + 0x10) = iVar8 << 0xc;
          uVar2 = uVar2 + 1;
          local_18 = local_18 + 1;
          iVar8 = iVar8 + 3;
        } while (local_18 < 3);
        ov96_021ECB38((int)(piVar1 + 8),param_1,(uint)*(byte *)((int)piVar1 + 0xb2),1,*piVar1);
        *(undefined1 *)(piVar1 + 0x2c) = 0;
        *(char *)((int)piVar1 + 0xb2) = *(char *)((int)piVar1 + 0xb2) + '\x01';
        piVar1[0x25] = 0;
      }
    }
  }
  return 0;
}

