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
void * Heap_Alloc(int, unsigned int);
void * Ascii_GetDelim(void *, void *, int);
undefined4 ov01_021EA578();
undefined4 Heap_FreeExplicit(int, void *);
void * Sys_AllocAndReadFile(int, void *);
undefined4 ov01_021EA668();
undefined4 MI_CpuFill8(void *, unsigned char, unsigned int);
undefined4 Ascii_StrToL(void *);

int ov01_021EA3E0(undefined *param_1,int *param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  undefined *puStack_22c;
  int iStack_228;
  int iStack_224;
  int iStack_220;
  int iStack_218;
  undefined auStack_214 [256];
  char cStack_114;
  char cStack_113;
  char cStack_112;
  
  puVar1 = Sys_AllocAndReadFile(4,param_1);
  iStack_228 = 0;
  puVar2 = puVar1;
  do {
    puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
    if (((cStack_114 != 'E') || (cStack_113 != 'O')) || (cStack_112 != 'F')) {
      puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      iStack_228 = iStack_228 + 1;
    }
  } while (((cStack_114 != 'E') || (cStack_113 != 'O')) || (cStack_112 != 'F'));
  puVar2 = Heap_Alloc(4,iStack_228 * 0x30);
  *param_2 = (int)puVar2;
  MI_CpuFill8(puVar2,0,iStack_228 * 0x30);
  iStack_218 = 0;
  if (0 < iStack_228) {
    iStack_220 = 0;
    puVar2 = puVar1;
    do {
      iVar6 = *param_2;
      iVar5 = iVar6 + iStack_220;
      puStack_22c = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      Ascii_GetDelim(&cStack_114,auStack_214,0x2c);
      iVar3 = Ascii_StrToL(auStack_214);
      *(int *)(iVar6 + iStack_220) = iVar3;
      iStack_224 = iVar5 + 6;
      uVar7 = 0;
      iVar6 = iVar5 + 0xe;
      iVar3 = iVar5;
      do {
        puStack_22c = (undefined *)ov01_021EA578(puStack_22c,iStack_224,iVar6);
        if (*(short *)(iVar3 + 6) == -1) {
          *(undefined2 *)(iVar3 + 6) = 0;
        }
        else {
          *(byte *)(iVar5 + 4) = (byte)(1 << (uVar7 & 0xff)) | *(byte *)(iVar5 + 4);
        }
        uVar7 = uVar7 + 1;
        iStack_224 = iStack_224 + 2;
        iVar6 = iVar6 + 6;
        iVar3 = iVar3 + 2;
      } while ((int)uVar7 < 4);
      uVar4 = ov01_021EA668(puStack_22c,iVar5 + 0x26);
      uVar4 = ov01_021EA668(uVar4,iVar5 + 0x28);
      uVar4 = ov01_021EA668(uVar4,iVar5 + 0x2a);
      puVar2 = (undefined *)ov01_021EA668(uVar4,iVar5 + 0x2c);
      puVar2 = Ascii_GetDelim(puVar2,&cStack_114,0xd);
      iStack_220 = iStack_220 + 0x30;
      iStack_218 = iStack_218 + 1;
    } while (iStack_218 < iStack_228);
  }
  Heap_FreeExplicit(4,puVar1);
  return iStack_228;
}

