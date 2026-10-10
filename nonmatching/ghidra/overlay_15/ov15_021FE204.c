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
undefined4 FillWindowPixelBuffer();
undefined4 AddWindowParameterized();
extern undefined4 _ov01_021FE3C4;
extern undefined4 _ov01_021FE3DC;
extern undefined4 uRam021fe3d4 __asm__("sub_021FE3D4");
extern undefined4 _ov01_021FE3D0;
extern uint * puRam021fe3c8 __asm__("sub_021FE3C8");



void ov15_021FE204(undefined4 *param_1)

{
  short sVar1;
  uint uVar2;
  uint *puVar3;
  int iVar4;
  
  if (param_1[0x5d] == 0) {
    AddWindowParameterized(*param_1,param_1 + 0x5d,4,0xc,7,0xb,4,0xb,0x2cf);
    FillWindowPixelBuffer(param_1 + 0x5d,0);
    iVar4 = 0;
    uVar2 = _ov01_021FE3C4;
    puVar3 = puRam021fe3c8;
    do {
      AddWindowParameterized
                (*param_1,param_1 + (iVar4 + 0xd) * 4 + 0x2d,4,*puVar3 & 0xff,puVar3[1] & 0xff,10,2,
                 0xb,uVar2 & 0xffff);
      FillWindowPixelBuffer(param_1 + (iVar4 + 0xd) * 4 + 0x2d,0);
      iVar4 = iVar4 + 1;
      uVar2 = uVar2 + 0x14;
      puVar3 = puVar3 + 2;
    } while (iVar4 < 4);
    sVar1 = 0x2fb;
    iVar4 = 0;
    puVar3 = _ov01_021FE3D0;
    do {
      AddWindowParameterized
                (*param_1,param_1 + (iVar4 + 0x11) * 4 + 0x2d,4,*puVar3 & 0xff,puVar3[1] & 0xff,2,3,
                 0xb,sVar1);
      FillWindowPixelBuffer(param_1 + (iVar4 + 0x11) * 4 + 0x2d,0);
      iVar4 = iVar4 + 1;
      sVar1 = sVar1 + 6;
      puVar3 = puVar3 + 2;
    } while (iVar4 < 3);
    AddWindowParameterized(*param_1,param_1 + 0x7d,4,0xe,0x15,7,2,0xb,uRam021fe3d4);
    FillWindowPixelBuffer(param_1 + 0x7d,0);
    AddWindowParameterized(*param_1,param_1 + 0x81,4,0xb,1,0x12,4,0xb,0x31b);
    FillWindowPixelBuffer(param_1 + 0x81,0);
    AddWindowParameterized(*param_1,param_1 + 0x85,4,0,0,9,4,0xb,0x363);
    FillWindowPixelBuffer(param_1 + 0x85,0);
    AddWindowParameterized(*param_1,param_1 + 0x89,4,0x18,0xe,8,3,0xb,_ov01_021FE3DC);
    FillWindowPixelBuffer(param_1 + 0x89,0);
  }
  return;
}

