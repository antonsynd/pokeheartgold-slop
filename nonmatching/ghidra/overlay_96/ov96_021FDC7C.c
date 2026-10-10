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
undefined4 ov96_022005B4();
undefined4 ov96_021FE550();
undefined4 ov96_02200A64();
undefined4 ov96_0220050C();
undefined4 ov96_021E8A20();
undefined4 ov96_021FEAEC();
undefined4 ov96_021FFC34();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021E5F24();
undefined4 ScheduleSetBgPosText();
undefined4 ov96_021EB570();
undefined4 ov96_021FFBD8();
undefined4 PlaySE();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_021E6454();

void ov96_021FDC7C(undefined4 param_1)

{
  byte bVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined2 *puVar4;
  uint uVar5;
  undefined2 uVar6;
  uint uVar7;
  undefined2 *puVar8;

  puVar2 = (undefined4 *)PokeathlonCourse_GetHeapAllocPtr4();
  iVar3 = PokeathlonCourse_GetDataCopyArea(param_1);
  puVar4 = (undefined2 *)ov96_021E8A20(iVar3 + 0xf0);
  uVar5 = ov96_021E5F24(param_1);
  uVar5 = uVar5 & 0xff;
  uVar7 = 0;
  puVar8 = puVar4;
  do {
    ov96_0220050C(puVar2[0xf8],uVar7 & 0xff,*puVar8);
    uVar7 = uVar7 + 1;
    puVar8 = puVar8 + 1;
  } while ((int)uVar7 < 4);
  ScheduleSetBgPosText(*puVar2,0,0,puVar4[uVar5]);
  ScheduleSetBgPosText(*puVar2,1,0,(ushort)puVar4[uVar5] >> 1);
  ScheduleSetBgPosText(*puVar2,2,0,(uint)(ushort)puVar4[uVar5] << 1);
  ov96_021FE550(param_1,uVar5,puVar2 + 0xc,iVar3);
  ov96_021FEAEC(puVar2,puVar4[uVar5]);
  bVar1 = *(byte *)((int)puVar4 + uVar5 + 0x10) & 0x7f;
  if (((int)(*(int *)(puVar4 + 10) >> 0x1a & 0xfU) >> uVar5 & 1U) == 0) {
    uVar6 = puVar4[uVar5];
  }
  else {
    uVar6 = 0;
  }
  ov96_022005B4(puVar2[0xf8],bVar1,uVar6);
  if ((*(int *)(puVar4 + 10) >> 0x18 & 1U) == 0) {
    ov96_021FFC34(puVar2 + 8,bVar1);
  }
  ov96_02200A64(puVar2[0xf8],puVar4[0xc]);
  switch(*(undefined1 *)((int)puVar4 + uVar5 + 0x1e)) {
  case 0:
    *(undefined2 *)((int)puVar2 + 0x642) = 0;
    ov96_021EB570(puVar2[7],0xb);
    break;
  case 1:
    *(undefined2 *)((int)puVar2 + 0x642) = 0;
    ov96_021EB570(puVar2[7],0xf);
    break;
  case 2:
    if (*(short *)((int)puVar2 + 0x642) == 0) {
      *(undefined2 *)((int)puVar2 + 0x642) = 1;
      PlaySE(0x89b);
    }
    ov96_021EB570(puVar2[7],0xc);
    break;
  case 3:
    *(undefined2 *)((int)puVar2 + 0x642) = 0;
    ov96_021EB570(puVar2[7],0xd);
    break;
  case 4:
    if (*(short *)((int)puVar2 + 0x642) == 0) {
      *(undefined2 *)((int)puVar2 + 0x642) = 1;
      PlaySE(0x89c);
    }
    ov96_021EB570(puVar2[7],0xe);
  }
  ov96_021FFBD8(*puVar2,puVar4[uVar5]);
  ov96_021E6454(param_1,puVar4[0xc]);
  return;
}

