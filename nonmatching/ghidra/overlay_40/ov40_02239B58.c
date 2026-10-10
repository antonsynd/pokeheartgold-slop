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
undefined4 ov40_0223077C();
undefined4 ov40_0223D540();
undefined4 ov40_0223D5CC();
undefined4 sub_020879E0();
undefined4 GetIGTSeconds();
undefined4 func_0x022274b4() __asm__("sub_022274B4");
undefined4 ov40_0222DFB0();
undefined4 sub_02087A08();
undefined4 func_0x0202ce24() __asm__("sub_0202CE24");
undefined4 Save_PlayerData_GetIGTAddr();
undefined4 func_0x02227d44() __asm__("sub_02227D44");
undefined4 ov40_0222DED0();
undefined4 ov40_02230CDC();
undefined4 PlaySE();
undefined4 ov40_02239538();
undefined4 func_0x022274d4() __asm__("sub_022274D4");
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 func_0x0202ce28() __asm__("sub_0202CE28");
undefined4 BgClearTilemapBufferAndCommit();
undefined4 ov40_0222DAA8();
undefined4 ov40_0222DD08();
undefined4 ov40_02238FF4();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 ov40_022398F8();
undefined4 ov40_02230964();
undefined4 ov40_0222FBB4();
undefined4 ov40_0222D88C();
undefined4 TouchHitboxController_Destroy();
undefined4 ov40_0222DA84();
undefined4 ov40_0222BF64();
undefined4 Heap_Free();
undefined4 ov40_0222BF80();
undefined4 ov40_0222FB90();

undefined4 ov40_02239B58(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined1 uVar2;
  undefined2 uVar3;
  int iVar4;
  undefined4 uVar5;
  char *pcVar6;
  int iVar7;
  int iStack_14;
  undefined4 uStack_10;
  
  iVar7 = *(int *)(param_1 + 0x860);
  uStack_10 = param_4;
  iVar4 = ov40_0223D5CC();
  if (iVar4 != 0) {
    switch(*(undefined4 *)(param_1 + 8)) {
    case 0:
      ov40_0223077C(param_1,*(undefined4 *)(param_1 + 0x6f0),0x80,0x60);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),1);
      sub_02087A08(*(undefined4 *)(param_1 + 0x6f0),0x18,0x18);
      ov40_0222DED0(param_1,0x117);
      PlaySE(0x57d);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      break;
    case 1:
      ov40_0223D540(param_1);
      iVar4 = func_0x022274b4();
      if (iVar4 == 1) {
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      break;
    case 2:
      uVar5 = ov40_0223D540(param_1);
      iVar4 = func_0x02227d44(uVar5,&iStack_14);
      if (iVar4 == 1) {
        func_0x02006154(0x57d,0);
        ov40_0222DFB0(param_1);
        ov40_02230CDC(param_1,4,*(undefined4 *)(iStack_14 + 0xc),*(undefined4 *)(iStack_14 + 4));
        sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
        *(undefined4 *)(param_1 + 8) = 5;
      }
      else {
        *(int *)(iVar7 + 0x71c) = iVar7 + 0x710;
        Save_PlayerData_GetIGTAddr(*(undefined4 *)(param_1 + 0x830));
        uVar3 = func_0x0202ce24();
        *(undefined2 *)(iVar7 + 0x728) = uVar3;
        Save_PlayerData_GetIGTAddr(*(undefined4 *)(param_1 + 0x830));
        uVar2 = func_0x0202ce28();
        *(undefined1 *)(iVar7 + 0x72a) = uVar2;
        Save_PlayerData_GetIGTAddr(*(undefined4 *)(param_1 + 0x830));
        uVar2 = GetIGTSeconds();
        *(undefined1 *)(iVar7 + 0x72b) = uVar2;
        *(undefined1 *)(iVar7 + 0x72c) = **(undefined1 **)(iVar7 + 0x71c);
        *(undefined1 *)(iVar7 + 0x734) = *(undefined1 *)(*(int *)(iVar7 + 0x71c) + 1);
        *(undefined1 *)(iVar7 + 0x73c) = *(undefined1 *)(*(int *)(iVar7 + 0x71c) + 2);
        uVar5 = ov40_02239538(param_1,*(byte *)(iVar7 + 0x72c) - 1);
        *(undefined4 *)(iVar7 + 0x730) = uVar5;
        uVar5 = ov40_02239538(param_1,*(byte *)(iVar7 + 0x734) - 1);
        *(undefined4 *)(iVar7 + 0x738) = uVar5;
        uVar5 = ov40_02239538(param_1,*(byte *)(iVar7 + 0x73c) - 1);
        *(undefined4 *)(iVar7 + 0x740) = uVar5;
        func_0x02006154(0x57d,0);
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      break;
    case 3:
      uVar5 = ov40_0223D540(param_1);
      iVar4 = func_0x022274d4(uVar5,*(undefined4 *)(param_1 + 0x88c),iVar7 + 0x72c);
      if (iVar4 == 1) {
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      break;
    case 4:
      ov40_0222DFB0(param_1);
      uVar5 = ov40_0223D540(param_1);
      iVar4 = func_0x02227d44(uVar5,&iStack_14);
      if (iVar4 == 1) {
        func_0x02006154(0x57d,0);
        ov40_02230CDC(param_1,5,*(undefined4 *)(iStack_14 + 0xc),*(undefined4 *)(iStack_14 + 4));
        sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
        *(undefined4 *)(param_1 + 8) = 5;
      }
      else {
        bVar1 = false;
        if (*(int *)(iVar7 + 0x1c) == 0) {
          pcVar6 = *(char **)(iVar7 + 0x718);
          if (((*pcVar6 == '\0') || (pcVar6[0x48] == '\0')) || (pcVar6[0x90] == '\0')) {
            bVar1 = true;
          }
        }
        else {
          pcVar6 = *(char **)(iVar7 + 0x714);
          if (((*pcVar6 == '\0') || (pcVar6[0x1c8] == '\0')) || (pcVar6[0x390] == '\0')) {
            bVar1 = true;
          }
        }
        if (bVar1) {
          ov40_02230CDC(param_1,5,0,0);
          *(undefined4 *)(param_1 + 0x510) = 300;
          sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
          *(undefined4 *)(param_1 + 8) = 5;
        }
        else {
          func_0x02006154(0x57d,0);
          PlaySE(0x577);
          *(undefined4 *)(param_1 + 8) = 0xff;
        }
      }
      break;
    case 5:
      ov40_02230964(param_1,1);
      ov40_022398F8(param_1);
      TouchHitboxController_Destroy(*(undefined4 *)(iVar7 + 0xdc));
      ov40_0222DAA8(iVar7 + 8);
      ov40_0222D88C(param_1);
      ov40_02230964(param_1,0);
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),2);
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),6);
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),3);
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),7);
      ov40_0222FB90(param_1,1);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      break;
    case 6:
      iVar4 = ov40_0222FBB4(param_1);
      if (iVar4 != 0) {
        iVar4 = ov40_0222DA84(iVar7 + 8,0);
        if (iVar4 == 0) {
          func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),1,2,*(uint *)(iVar7 + 8) & 0xff,
                          *(uint *)(param_1 + 0x58) & 0xffff);
          func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar7 + 8) & 0xff,
                          *(uint *)(param_1 + 0x58) & 0xffff);
        }
        else {
          ov40_0222DD08(param_1);
          ov40_0222DAA8(iVar7 + 8);
          func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),2,0xc,0x10,
                          *(uint *)(param_1 + 0x58) & 0xffff);
          ov40_0222BF64(param_1,1,1,*(undefined4 *)(param_1 + 0x10));
          ov40_0222BF80(param_1,5);
          Heap_Free(iVar7);
        }
      }
      break;
    default:
      ov40_02238FF4(param_1);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
      sub_02087A08(*(undefined4 *)(param_1 + 0x6f0),0,0);
      ov40_0222BF80(param_1,5);
    }
    return 0;
  }
  return 0;
}

