#pragma warning_errors off
#pragma thumb on
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
#define true           1
#define false          0
#define CONCAT11(a, b) ((unsigned short)(((unsigned)(a) << 8) | (unsigned char)(b)))
#define CONCAT12(a, b) (((unsigned)(unsigned char)(a) << 16) | (unsigned short)(b))
#define CONCAT13(a, b) (((unsigned)(unsigned char)(a) << 24) | ((unsigned)(b) & 0xffffff))
#define CONCAT21(a, b) (((unsigned)(unsigned short)(a) << 8) | (unsigned char)(b))
#define CONCAT22(a, b) (((unsigned)(unsigned short)(a) << 16) | (unsigned short)(b))
#define CONCAT31(a, b) (((unsigned)(a) << 8) | (unsigned char)(b))
#define CONCAT44(a, b) (((unsigned long long)(unsigned)(a) << 32) | (unsigned)(b))
#define SUB41(x, n)    ((unsigned char)((unsigned)(x) >> ((n) * 8)))
#define SUB42(x, n)    ((unsigned short)((unsigned)(x) >> ((n) * 8)))
#define SUB81(x, n)    ((unsigned char)((unsigned long long)(x) >> ((n) * 8)))
#define SUB84(x, n)    ((unsigned)((unsigned long long)(x) >> ((n) * 8)))
#define ZEXT14(x)      ((unsigned)(unsigned char)(x))
#define ZEXT24(x)      ((unsigned)(unsigned short)(x))
#define ZEXT48(x)      ((unsigned long long)(unsigned)(x))
#define SEXT14(x)      ((int)(signed char)(x))
#define SEXT24(x)      ((int)(short)(x))
#define SEXT48(x)      ((long long)(int)(x))
#define CARRY4(a, b)   ((unsigned)(a) + (unsigned)(b) < (unsigned)(a))
#define SCARRY4(a, b)  ((((int)(a) + (int)(b)) < (int)(a)) != ((int)(b) < 0))
#define SBORROW4(a, b) ((((int)(a) - (int)(b)) > (int)(a)) != ((int)(b) < 0))
#define POPCOUNT(x)    __builtin_popcount(x)
#define LZCOUNT(x)     ((x) ? __builtin_clz(x) : 32)
undefined4 ov37_021E5F5C();
undefined4 Main_SetVBlankIntrCB(void *, void *);
undefined4 OverlayManager_GetArgs(void *);
undefined4 MessageFormat_Delete(void *);
undefined4 SpriteTransfer_DeleteCharTransferTask(void *);
undefined4 SpriteTransfer_DeletePlttTransferTask(void *);
undefined4 ObjCharTransfer_Destroy();
undefined4 ObjPlttTransfer_Destroy();
undefined4 sub_02021238(void);
undefined4 SpriteList_Delete(void *);
undefined4 sub_02038C1C(signed char);
undefined4 sub_02037FF0(void);
undefined4 Destroy2DGfxResObjMan(void *);
undefined4 ov37_021E6540();
undefined4 OverlayManager_GetData(void *);
undefined4 sub_0205AD24(void *);
undefined4 DestroyMsgData(void *);
undefined4 OamManager_Free();
#define uRam04000304 (*(volatile ushort *)0x04000304)
undefined4 OverlayManager_FreeData(void *);
undefined4 Heap_Free(void *);
undefined4 Heap_Destroy(int);
undefined4 ov37_021E5F20();
undefined4 sub_02033250(void);
undefined4 sub_020356EC(int);
undefined4 sub_0205A904(int);
undefined4 ov37_021E5B94(undefined4 param_1, int *param_2);
#pragma force_active on
undefined4 ov37_021E5B94(undefined4 param_1, int *param_2)

{
    undefined4 *puVar1;
    undefined4 *puVar2;
    int iVar3;

    puVar1 = (undefined4 *)OverlayManager_GetData(param_1);
    puVar2 = (undefined4 *)OverlayManager_GetArgs(param_1);
    switch (*param_2) {
    case 0:
        Main_SetVBlankIntrCB(0, 0);
        SpriteTransfer_DeleteCharTransferTask(puVar1[0x5c]);
        SpriteTransfer_DeleteCharTransferTask(puVar1[0x60]);
        SpriteTransfer_DeletePlttTransferTask(puVar1[0x5d]);
        SpriteTransfer_DeletePlttTransferTask(puVar1[0x61]);
        iVar3 = 0;
        puVar2 = puVar1;
        do {
            Destroy2DGfxResObjMan(puVar2[0x58]);
            iVar3 = iVar3 + 1;
            puVar2 = puVar2 + 1;
        } while (iVar3 < 4);
        SpriteList_Delete(puVar1[0xd]);
        OamManager_Free();
        ObjCharTransfer_Destroy();
        ObjPlttTransfer_Destroy();
        ov37_021E6540(puVar1);
        ov37_021E5F5C(*puVar1);
        sub_02021238();
        DestroyMsgData(puVar1[4]);
        MessageFormat_Delete(puVar1[3]);
        *param_2 = *param_2 + 1;
        break;
    case 1:
        sub_02038C1C(1);
        sub_02037FF0();
        sub_0205AD24(*puVar2);
        uRam04000304 = uRam04000304 | 0x8000;
        sub_0205A904(0);
        sub_020356EC(0);
        *param_2 = *param_2 + 1;
        break;
    case 2:
        if (!(puVar1[0x2500] == 0)) {
            iVar3 = sub_02033250();
            if (iVar3 == 1) {
                *param_2 = *param_2 + 1;
            }
        } else {
            *param_2 = *param_2 + 1;
        }
        break;
    case 3:
        sub_02038C1C(2);
        ov37_021E5F20(puVar1);
        Heap_Free(puVar1[2]);
        OverlayManager_FreeData(param_1);
        Main_SetVBlankIntrCB(0, 0);
        Heap_Destroy(0x27);
        sub_02038C1C(2);
        return 1;
    }
    return 0;
}
#pragma force_active reset
