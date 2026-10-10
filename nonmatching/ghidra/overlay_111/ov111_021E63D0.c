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
undefined4 ov111_021E6330();
undefined4 ov111_021E6380();
undefined4 AddWindowParameterized();
undefined4 Heap_Alloc();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
extern undefined ov111_021E6C68;

undefined4 *
ov111_021E63D0(undefined4 *param_1,uint param_2,uint param_3,uint param_4,undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  short *psVar4;
  undefined4 *puVar5;
  int iVar6;
  
  if (param_4 == 0) {
    uVar1 = 2;
  }
  else {
    uVar1 = 3;
  }
  puVar2 = (undefined4 *)Heap_Alloc(*param_1,0x78);
  func_0x020d4994(puVar2,0,0x78);
  *puVar2 = param_5;
  *(short *)((int)puVar2 + 0x72) = (short)param_2;
  *(short *)(puVar2 + 0x1d) = (short)param_3;
  uVar3 = ov111_021E6330(param_1[3],param_1[4],(int)*(short *)((int)puVar2 + 0x72),
                         (int)*(short *)(puVar2 + 0x1d),0,1);
  puVar2[1] = uVar3;
  uVar3 = ov111_021E6380(param_1[3],param_1[4],
                         (*(short *)((int)puVar2 + 0x72) + -0x2c) * 0x10000 >> 0x10,
                         (*(short *)(puVar2 + 0x1d) + -8) * 0x10000 >> 0x10,param_4 & 0xff);
  psVar4 = (short *)&ov111_021E6C68;
  puVar2[2] = uVar3;
  iVar6 = 0;
  puVar5 = puVar2 + 3;
  do {
    AddWindowParameterized
              (param_1[1],puVar5,uVar1,((param_2 & 0x7ff) >> 3) + (int)*psVar4 & 0xff,
               ((param_3 & 0x7ff) >> 3) + (int)psVar4[1] & 0xff,(char)psVar4[2],
               *(undefined *)((int)psVar4 + 5),(char)psVar4[3],psVar4[4]);
    iVar6 = iVar6 + 1;
    psVar4 = psVar4 + 5;
    puVar5 = puVar5 + 4;
  } while (iVar6 < 6);
  return puVar2;
}

