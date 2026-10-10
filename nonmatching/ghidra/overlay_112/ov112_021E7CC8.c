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
undefined4 func_0x02026a68() __asm__("sub_02026A68");
undefined4 func_0x020d48b4() __asm__("sub_020D48B4");
undefined4 Save_PlayerData_GetProfile();
undefined4 ov112_021E5EB8();
undefined4 ov112_021E5D68();
undefined4 sub_02032728();
undefined4 func_0x02028f68() __asm__("sub_02028F68");
undefined4 String_Delete();
undefined4 ov112_021E73C8();
undefined4 PlayerProfile_GetTrainerID();

void ov112_021E7CC8(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  uVar1 = Save_PlayerData_GetProfile(*(undefined4 *)(param_1 + 0x20));
  uVar1 = func_0x02028f68(uVar1,0x9a);
  *(undefined4 *)(param_1 + 0x1024) = 1;
  *(undefined2 *)(param_1 + 0x102c) = 7;
  *(byte *)(param_1 + 0x107f) = *(byte *)(param_1 + 0x107f) & 0xfe;
  *(undefined1 *)(param_1 + 0x107e) = 0;
  uVar2 = PlayerProfile_GetTrainerID(*(undefined4 *)(param_1 + 0x1e438));
  *(undefined4 *)(param_1 + 0x1030) = uVar2;
  func_0x02026a68(uVar1,param_1 + 0x106c,8);
  *(undefined4 *)(param_1 + 0x1028) = 1;
  *(undefined2 *)(param_1 + 0x102e) = 7;
  uVar2 = sub_02032728(*(undefined4 *)(param_1 + 0x1e440));
  func_0x020d48b4(uVar2,param_1 + 0x1034,0x28);
  ov112_021E73C8(param_1 + 0x24,0x1000,0xf);
  ov112_021E5EB8(param_1 + 0x1024,param_1 + 0x108c);
  ov112_021E5D68(param_1 + 0x10834);
  String_Delete(uVar1);
  return;
}

