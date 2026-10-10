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
undefined4 ov15_021FD43C();
undefined4 ov15_021FFF24();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 NewString_ReadMsgData();
undefined4 ov15_02200458();
undefined4 ov15_022002B4();
undefined4 String_Delete();
undefined4 ov15_021FEDEC();
undefined4 ov15_021FF068();
undefined4 Pocket_GetQuantity();
undefined4 func_0x02077d88() __asm__("sub_02077D88");
undefined4 ov15_021FF0FC();
undefined4 ov15_021FD788();
undefined4 ov15_021FD574();
undefined4 BufferIntegerAsString();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 ov15_021FECA0();
undefined4 StringExpandPlaceholders();
undefined4 ov15_021FF4EC();
undefined4 ov15_021FEF48();
undefined4 BufferItemName();

undefined4 ov15_021FCB64(undefined4 *param_1)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;

  piVar5 = (int *)(param_1[0x8d] + 4 + (uint)*(byte *)(param_1[0x8d] + 100) * 0xc);
  ov15_021FD574(param_1,4,0,0);
  *(undefined2 *)(param_1 + 0x1a0) = 1;
  iVar2 = func_0x02077d88(*(undefined2 *)(param_1[0x8d] + 0x66),0,6);
  param_1[0x1a1] = iVar2 >> 1;
  ov15_021FD43C(*param_1,5,0);
  ScheduleBgTilemapBufferTransfer(*param_1,5);
  ManagedSprite_SetDrawFlag(param_1[0xa5],0);
  ManagedSprite_SetDrawFlag(param_1[0xa6],0);
  ov15_02200458(param_1,0);
  ov15_021FD788(param_1,0);
  ov15_021FF4EC(param_1,(int)*(short *)((int)piVar5 + 6),param_1[0x191] + -8);
  ov15_022002B4(param_1,param_1[0x191] + -8);
  ov15_021FECA0(param_1,param_1 + 1,*(undefined2 *)(param_1[0x8d] + 0x66));
  ov15_021FFF24(param_1);
  iVar2 = func_0x02077d88(*(undefined2 *)(param_1[0x8d] + 0x66),3,6);
  if ((iVar2 == 0) && (param_1[0x1a1] != 0)) {
    ov15_021FF0FC(param_1,0);
    ov15_021FF068(param_1);
    ov15_021FEDEC(param_1,2);
    iVar4 = param_1[0x8d];
    iVar2 = iVar4 + (uint)*(byte *)(iVar4 + 100) * 0xc;
    iVar2 = Pocket_GetQuantity(*(undefined4 *)(iVar2 + 4),*(undefined1 *)(iVar2 + 0xd),
                               *(undefined2 *)(iVar4 + 0x66),6);
    if (iVar2 == 1) {
      uVar3 = NewString_ReadMsgData(param_1[0xbc],0x4e);
      BufferIntegerAsString(param_1[0xbd],0,(int)*(short *)(param_1 + 0x1a0) * param_1[0x1a1],6,0,1)
      ;
      StringExpandPlaceholders(param_1[0xbd],param_1[0x179],uVar3);
      String_Delete(uVar3);
      uVar1 = ov15_021FEF48(param_1,1);
      *(undefined1 *)((int)param_1 + 0x616) = uVar1;
      return 0x15;
    }
    *(undefined2 *)((int)param_1 + 0x682) =
         *(undefined2 *)(*piVar5 + ((int)*(short *)((int)piVar5 + 6) + param_1[0x191] + -8) * 4 + 2)
    ;
    uVar3 = NewString_ReadMsgData(param_1[0xbc],0x4d);
    BufferItemName(param_1[0xbd],0,*(undefined2 *)(param_1[0x8d] + 0x66));
    StringExpandPlaceholders(param_1[0xbd],param_1[0x179],uVar3);
    String_Delete(uVar3);
    uVar1 = ov15_021FEF48(param_1,1);
    *(undefined1 *)((int)param_1 + 0x616) = uVar1;
    return 0x11;
  }
  uVar3 = NewString_ReadMsgData(param_1[0xbc],0x4c);
  BufferItemName(param_1[0xbd],0,*(undefined2 *)(param_1[0x8d] + 0x66));
  StringExpandPlaceholders(param_1[0xbd],param_1[0x179],uVar3);
  String_Delete(uVar3);
  uVar1 = ov15_021FEF48(param_1,0);
  *(undefined1 *)((int)param_1 + 0x616) = uVar1;
  return 0x18;
}

