#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"

    .text

	thumb_func_start PCBox_Init
PCBox_Init: ; 0x021E5900
	push {r3, r4, r5, lr}
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #9
	lsl r2, r2, #0x10
	bl Heap_Create
	add r0, r5, #0
	mov r1, #0x38
	mov r2, #9
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0x38
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl OverlayManager_GetArgs
	str r0, [r4]
	ldr r0, [r0]
	bl SaveArray_PCStorage_Get
	str r0, [r4, #4]
	bl PCStorage_GetActiveBox
	strb r0, [r4, #0x1f]
	ldr r0, [r4]
	ldr r0, [r0]
	bl SaveArray_Party_Get
	str r0, [r4, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl Save_Bag_Get
	str r0, [r4, #0xc]
	ldr r0, [r4]
	ldr r0, [r0]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [r4, #0x10]
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x21
	strb r1, [r0]
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #0xb
	str r0, [r4, #0x30]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end PCBox_Init

	thumb_func_start PCBox_Main
PCBox_Main: ; 0x021E596C
	push {r4, lr}
	add r4, r1, #0
	bl OverlayManager_GetData
	add r1, r4, #0
	bl ov14_021EAF8C
	cmp r0, #0
	bne _021E5982
	mov r0, #1
	pop {r4, pc}
_021E5982:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end PCBox_Main

	thumb_func_start PCBox_Exit
PCBox_Exit: ; 0x021E5988
	push {r4, lr}
	add r4, r0, #0
	bl OverlayManager_GetData
	add r1, r0, #0
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0x1f]
	bl PCStorage_SetActiveBox
	add r0, r4, #0
	bl OverlayManager_FreeData
	mov r0, #9
	bl Heap_Destroy
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end PCBox_Exit

	thumb_func_start ov14_021E59AC
ov14_021E59AC: ; 0x021E59AC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x34]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021E59C6
	add r0, r4, #0
	blx r1
	cmp r0, #0
	bne _021E59C6
	ldr r0, [r4, #0x34]
	mov r1, #0
	str r1, [r0, #4]
_021E59C6:
	add r0, r4, #0
	bl ov14_021E5A14
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x18]
	bl PaletteData_PushTransparentBuffers
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x14]
	bl DoScheduledBgGpuUpdates
	ldr r0, [r4, #0x34]
	bl ov14_021F29C4
	ldr r1, [r4, #0x34]
	ldr r0, _021E5A08 ; =0x000088D2
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021E59FA
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl SpriteSystem_DrawSprites
	bl SpriteSystem_TransferOam
_021E59FA:
	ldr r3, _021E5A0C ; =0x027E0000
	ldr r1, _021E5A10 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E5A08: .word 0x000088D2
_021E5A0C: .word 0x027E0000
_021E5A10: .word 0x00003FF8
	thumb_func_end ov14_021E59AC

	thumb_func_start ov14_021E5A14
ov14_021E5A14: ; 0x021E5A14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #0x34]
	ldr r0, [r0, #8]
	cmp r0, #3
	beq _021E5A30
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x10
	bl sub_02019978
	pop {r4, pc}
_021E5A30:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x10
	bl sub_02019978
	ldr r0, [r4, #0x34]
	bl ov14_021F3BC0
	pop {r4, pc}
	thumb_func_end ov14_021E5A14

	thumb_func_start ov14_021E5A44
ov14_021E5A44: ; 0x021E5A44
	mov r2, #0
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov14_021E5A44

	thumb_func_start ov14_021E5A50
ov14_021E5A50: ; 0x021E5A50
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov14_021E5A50

	thumb_func_start ov14_021E5A54
ov14_021E5A54: ; 0x021E5A54
	ldr r3, _021E5A5C ; =ov14_021E5A44
	ldr r1, [r0, #8]
	bx r3
	nop
_021E5A5C: .word ov14_021E5A44
	thumb_func_end ov14_021E5A54

	thumb_func_start ov14_021E5A60
ov14_021E5A60: ; 0x021E5A60
	ldr r3, _021E5A68 ; =GfGfx_SetBanks
	ldr r0, _021E5A6C ; =ov14_021F7CE4
	bx r3
	nop
_021E5A68: .word GfGfx_SetBanks
_021E5A6C: .word ov14_021F7CE4
	thumb_func_end ov14_021E5A60

	thumb_func_start ov14_021E5A70
ov14_021E5A70: ; 0x021E5A70
	push {r4, r5, lr}
	sub sp, #0xd4
	add r4, r0, #0
	mov r0, #0xa
	bl BgConfig_Alloc
	ldr r1, [r4, #0x34]
	add r3, sp, #0xc4
	ldr r5, _021E5BE0 ; =ov14_021F7BC8
	str r0, [r1, #0x14]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E5BE4 ; =ov14_021F7C20
	add r3, sp, #0xa8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	ldr r0, [r4, #0x34]
	add r3, r1, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0xa
	bl BG_ClearCharDataRange
	ldr r5, _021E5BE8 ; =ov14_021F7C3C
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	ldr r0, [r4, #0x34]
	mov r3, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x14]
	bl BgClearTilemapBufferAndCommit
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xa
	bl BG_ClearCharDataRange
	ldr r5, _021E5BEC ; =ov14_021F7C74
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #0x34]
	mov r1, #2
	ldr r0, [r0, #0x14]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r5, _021E5BF0 ; =ov14_021F7C90
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	ldr r0, [r4, #0x34]
	mov r3, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r5, _021E5BF4 ; =ov14_021F7C58
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	ldr r0, [r4, #0x34]
	mov r3, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r0, [r4, #0x34]
	mov r1, #4
	ldr r0, [r0, #0x14]
	bl BgClearTilemapBufferAndCommit
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xa
	bl BG_ClearCharDataRange
	ldr r5, _021E5BF8 ; =ov14_021F7CAC
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	ldr r0, [r4, #0x34]
	mov r3, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r5, _021E5BFC ; =ov14_021F7CC8
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	ldr r0, [r4, #0x34]
	mov r3, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r0, [r4, #0x34]
	mov r1, #6
	ldr r0, [r0, #0x14]
	bl BgClearTilemapBufferAndCommit
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xa
	bl BG_ClearCharDataRange
	add sp, #0xd4
	pop {r4, r5, pc}
	nop
_021E5BE0: .word ov14_021F7BC8
_021E5BE4: .word ov14_021F7C20
_021E5BE8: .word ov14_021F7C3C
_021E5BEC: .word ov14_021F7C74
_021E5BF0: .word ov14_021F7C90
_021E5BF4: .word ov14_021F7C58
_021E5BF8: .word ov14_021F7CAC
_021E5BFC: .word ov14_021F7CC8
	thumb_func_end ov14_021E5A70

	thumb_func_start ov14_021E5C00
ov14_021E5C00: ; 0x021E5C00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #6
	ldr r0, [r0, #0x14]
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x34]
	mov r1, #5
	ldr r0, [r0, #0x14]
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x34]
	mov r1, #4
	ldr r0, [r0, #0x14]
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x34]
	mov r1, #3
	ldr r0, [r0, #0x14]
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x34]
	mov r1, #2
	ldr r0, [r0, #0x14]
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x14]
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x14]
	bl Heap_Free
	pop {r4, pc}
	thumb_func_end ov14_021E5C00

	thumb_func_start ov14_021E5C54
ov14_021E5C54: ; 0x021E5C54
	push {r4, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x34]
	mov r0, #0x13
	ldr r2, [r2, #0x14]
	mov r1, #0xe
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x34]
	mov r0, #0x13
	ldr r2, [r2, #0x14]
	mov r1, #0xe
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x34]
	mov r0, #0x13
	ldr r2, [r2, #0x14]
	mov r1, #3
	mov r3, #2
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x34]
	mov r1, #2
	ldr r2, [r2, #0x14]
	mov r0, #0x13
	add r3, r1, #0
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x34]
	mov r0, #0x13
	ldr r2, [r2, #0x14]
	mov r3, #3
	bl GfGfxLoader_LoadCharData
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x34]
	mov r0, #0x13
	ldr r2, [r2, #0x14]
	mov r3, #3
	bl GfGfxLoader_LoadScrnData
	mov r0, #0x80
	str r0, [sp]
	mov r0, #0xa
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x13
	mov r1, #4
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x34]
	mov r0, #0x13
	ldr r2, [r2, #0x14]
	mov r1, #6
	mov r3, #5
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x34]
	mov r1, #5
	ldr r2, [r2, #0x14]
	mov r0, #0x13
	add r3, r1, #0
	bl GfGfxLoader_LoadScrnData
	mov r3, #0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x13
	mov r1, #7
	mov r2, #4
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x34]
	mov r1, #6
	ldr r2, [r2, #0x14]
	mov r0, #0x13
	add r3, r1, #0
	bl GfGfxLoader_LoadCharData
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov14_021E5C54

	thumb_func_start ov14_021E5D78
ov14_021E5D78: ; 0x021E5D78
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0x18
	mov r3, #0xa
	bl NewMsgDataFromNarc
	ldr r1, [r4, #0x34]
	mov r2, #0
	str r0, [r1, #0x20]
	mov r0, #1
	mov r1, #2
	mov r3, #0xa
	bl MessagePrinter_New
	ldr r1, [r4, #0x34]
	str r0, [r1, #0x1c]
	mov r0, #0xa
	bl MessageFormat_New
	ldr r1, [r4, #0x34]
	str r0, [r1, #0x24]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #0xa
	bl String_New
	ldr r1, [r4, #0x34]
	str r0, [r1, #0x28]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E5D78

	thumb_func_start ov14_021E5DB8
ov14_021E5DB8: ; 0x021E5DB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x28]
	bl String_Delete
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x24]
	bl MessageFormat_Delete
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x1c]
	bl MessagePrinter_Delete
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x20]
	bl DestroyMsgData
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E5DB8

	thumb_func_start ov14_021E5DE0
ov14_021E5DE0: ; 0x021E5DE0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0xfa
	ldr r4, [r5, #0x34]
	lsl r0, r0, #2
	str r0, [sp]
	sub r0, #0xe8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x14]
	mov r0, #0x13
	mov r1, #0x40
	mov r3, #0
	bl GfGfxLoader_LoadCharData
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp]
	sub r0, #0xe8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x14]
	mov r0, #0x13
	mov r1, #0x40
	bl GfGfxLoader_LoadCharData
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0xa
	mov r3, #6
	str r0, [sp, #4]
	mov r0, #0x13
	mov r1, #0x41
	mov r2, #0
	lsl r3, r3, #6
	bl GfGfxLoader_GXLoadPal
	ldr r0, [r5, #0x10]
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r3, #0xa
	str r3, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r2, _021E5E70 ; =0x0000038E
	mov r1, #0
	bl LoadUserFrameGfx2
	mov r1, #0x16
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0xa
	bl LoadFontPal1
	mov r1, #0x1e
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0xa
	bl LoadFontPal0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021E5E70: .word 0x0000038E
	thumb_func_end ov14_021E5DE0

	thumb_func_start ov14_021E5E74
ov14_021E5E74: ; 0x021E5E74
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa
	bl PaletteData_Init
	ldr r1, [r4, #0x34]
	mov r2, #2
	str r0, [r1, #0x18]
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x18]
	lsl r2, r2, #8
	mov r3, #0xa
	bl PaletteData_AllocBuffers
	pop {r4, pc}
	thumb_func_end ov14_021E5E74

	thumb_func_start ov14_021E5E94
ov14_021E5E94: ; 0x021E5E94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x18]
	bl PaletteData_FreeBuffers
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x18]
	bl PaletteData_Free
	pop {r4, pc}
	thumb_func_end ov14_021E5E94

	thumb_func_start ov14_021E5EAC
ov14_021E5EAC: ; 0x021E5EAC
	push {r3, lr}
	cmp r0, #1
	bne _021E5EC4
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021E5ECC ; =0x04000050
	mov r1, #0
	mov r2, #0x2a
	mov r3, #6
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
_021E5EC4:
	ldr r0, _021E5ECC ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	pop {r3, pc}
	.balign 4, 0
_021E5ECC: .word 0x04000050
	thumb_func_end ov14_021E5EAC

	thumb_func_start ov14_021E5ED0
ov14_021E5ED0: ; 0x021E5ED0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa
	bl YesNoPrompt_Create
	ldr r2, [r4, #0x34]
	ldr r1, _021E5EE4 ; =0x00000434
	str r0, [r2, r1]
	pop {r4, pc}
	nop
_021E5EE4: .word 0x00000434
	thumb_func_end ov14_021E5ED0

	thumb_func_start ov14_021E5EE8
ov14_021E5EE8: ; 0x021E5EE8
	ldr r1, [r0, #0x34]
	ldr r0, _021E5EF4 ; =0x00000434
	ldr r3, _021E5EF8 ; =YesNoPrompt_Destroy
	ldr r0, [r1, r0]
	bx r3
	nop
_021E5EF4: .word 0x00000434
_021E5EF8: .word YesNoPrompt_Destroy
	thumb_func_end ov14_021E5EE8

	thumb_func_start ov14_021E5EFC
ov14_021E5EFC: ; 0x021E5EFC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r2, [r0, #0x34]
	mov r4, #0xeb
	ldr r2, [r2, #0x14]
	mov r5, #0
	str r2, [sp]
	lsl r4, r4, #2
	mov r2, #8
	str r4, [sp, #8]
	str r2, [sp, #0xc]
	str r5, [sp, #4]
	mov r3, #0x19
	add r2, sp, #0
	strb r3, [r2, #0x10]
	mov r3, #0xc
	strb r3, [r2, #0x11]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1c
	ldrb r6, [r2, #0x12]
	mov r3, #0xf
	lsr r1, r1, #0x18
	bic r6, r3
	strb r6, [r2, #0x12]
	ldrb r3, [r2, #0x12]
	mov r6, #0xf0
	add r4, #0x88
	bic r3, r6
	orr r1, r3
	strb r1, [r2, #0x12]
	strb r5, [r2, #0x13]
	ldr r0, [r0, #0x34]
	add r1, sp, #0
	ldr r0, [r0, r4]
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021E5EFC

	thumb_func_start ov14_021E5F4C
ov14_021E5F4C: ; 0x021E5F4C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r1, _021E6044 ; =0x000088D4
	add r4, r0, r1
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _021E5F68
	cmp r1, #1
	beq _021E5FC0
	cmp r1, #2
	beq _021E602C
	b _021E603E
_021E5F68:
	ldrb r1, [r4]
	lsl r2, r1, #0x1f
	lsr r2, r2, #0x1f
	bne _021E5F8A
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl ManagedSprite_SetPaletteOverride
	b _021E5FB8
_021E5F8A:
	ldrb r1, [r4, #6]
	str r1, [sp]
	ldrb r1, [r4, #7]
	str r1, [sp, #4]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	str r1, [sp, #8]
	ldrb r1, [r4]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #5]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x19
	bl BgTilemapRectChangePalette
	ldrb r1, [r4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x19
	bl ScheduleBgTilemapBufferTransfer
_021E5FB8:
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _021E603E
_021E5FC0:
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #4
	bne _021E603E
	ldrb r0, [r4]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _021E5FF0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bl ManagedSprite_SetPaletteOverride
	b _021E6020
_021E5FF0:
	ldrb r0, [r4, #6]
	str r0, [sp]
	ldrb r0, [r4, #7]
	str r0, [sp, #4]
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	str r0, [sp, #8]
	ldrb r1, [r4]
	ldr r0, [r5, #0x34]
	ldrb r2, [r4, #4]
	lsl r1, r1, #0x18
	ldrb r3, [r4, #5]
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x19
	bl BgTilemapRectChangePalette
	ldrb r1, [r4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x19
	bl ScheduleBgTilemapBufferTransfer
_021E6020:
	mov r0, #0
	strb r0, [r4, #3]
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _021E603E
_021E602C:
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _021E603E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021E603E:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E6044: .word 0x000088D4
	thumb_func_end ov14_021E5F4C

	thumb_func_start ov14_021E6048
ov14_021E6048: ; 0x021E6048
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_IsButtonInputMode
	cmp r0, #1
	ldr r0, [r4]
	bne _021E6064
	ldr r0, [r0, #4]
	mov r1, #0
	bl MenuInputStateMgr_SetState
	pop {r4, pc}
_021E6064:
	ldr r0, [r0, #4]
	mov r1, #1
	bl MenuInputStateMgr_SetState
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E6048

	thumb_func_start ov14_021E6070
ov14_021E6070: ; 0x021E6070
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldrb r1, [r0, #0x1f]
	add r5, r2, #0
	add r2, r6, #0
	add r4, r3, #0
	bl ov14_021E60C0
	cmp r0, #0
	bne _021E6088
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6088:
	add r1, r5, #0
	add r2, r4, #0
	bl GetBoxMonData
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021E6070

	thumb_func_start ov14_021E6094
ov14_021E6094: ; 0x021E6094
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0x1f]
	add r6, r2, #0
	add r2, r4, #0
	add r7, r3, #0
	bl ov14_021E60C0
	cmp r0, #0
	beq _021E60BE
	add r1, r6, #0
	add r2, r7, #0
	bl SetBoxMonData
	cmp r4, #0x1e
	bhs _021E60BE
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #4]
	bl PCStorage_SetBoxModified
_021E60BE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021E6094

	thumb_func_start ov14_021E60C0
ov14_021E60C0: ; 0x021E60C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0xff
	beq _021E60CE
	cmp r4, #0x1e
	blo _021E60F0
_021E60CE:
	cmp r4, #0x1e
	blo _021E60D4
	sub r4, #0x1e
_021E60D4:
	ldr r0, [r5, #8]
	bl Party_GetCount
	cmp r0, r4
	bls _021E60EC
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	pop {r3, r4, r5, pc}
_021E60EC:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E60F0:
	cmp r4, #0xff
	bne _021E60F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E60F8:
	ldr r0, [r5, #4]
	bl PCStorage_GetMonByIndexPair
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E60C0

	thumb_func_start ov14_021E6100
ov14_021E6100: ; 0x021E6100
	push {r3, lr}
	cmp r2, #0x1e
	bhs _021E610E
	ldr r0, [r0, #4]
	bl PCStorage_DeleteBoxMonByIndexPair
	pop {r3, pc}
_021E610E:
	sub r2, #0x1e
	ldr r0, [r0, #8]
	add r1, r2, #0
	bl Party_RemoveMon
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E6100

	thumb_func_start ov14_021E611C
ov14_021E611C: ; 0x021E611C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	ldrb r1, [r5, #0x1f]
	ldr r2, [r6, #4]
	bl ov14_021E60C0
	ldr r1, [r6]
	bl CopyBoxPokemonToPokemon
	ldr r7, [r4, #4]
	ldr r0, [r5, #8]
	sub r7, #0x1e
	add r1, r7, #0
	bl Party_GetMonByIndex
	ldr r1, [r4]
	bl CopyPokemonToPokemon
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	ldr r0, [r4]
	mov r1, #MON_DATA_MOOD
	add r2, sp, #0
	bl SetMonData
	ldr r0, [r5, #8]
	ldr r2, [r6]
	add r1, r7, #0
	bl Party_SafeCopyMonToSlot_ResetAprijuiceModifiers
	ldr r0, [r4]
	bl Mon_GetBoxMon
	add r3, r0, #0
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #4]
	ldr r2, [r4, #8]
	bl PCStorage_PlaceMonInBoxByIndexPair
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4958
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4A20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E611C

	thumb_func_start ov14_021E6184
ov14_021E6184: ; 0x021E6184
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0x1f]
	ldr r2, [r4, #4]
	bl ov14_021E60C0
	ldr r1, [r4]
	bl CopyBoxPokemonToPokemon
	ldr r0, [r5, #8]
	ldr r1, [r4]
	bl Party_AddMon
	ldrb r1, [r5, #0x1f]
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl ov14_021E6100
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4958
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4A20
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E6184

	thumb_func_start ov14_021E61BC
ov14_021E61BC: ; 0x021E61BC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r5, #8]
	sub r1, #0x1e
	bl Party_GetMonByIndex
	mov r2, #0
	add r1, sp, #0
	strb r2, [r1]
	add r6, r0, #0
	mov r1, #MON_DATA_MOOD
	add r2, sp, #0
	bl SetMonData
	add r0, r6, #0
	bl Mon_GetBoxMon
	add r3, r0, #0
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #4]
	ldr r2, [r4, #8]
	bl PCStorage_PlaceMonInBoxByIndexPair
	ldrb r1, [r5, #0x1f]
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl ov14_021E6100
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4958
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4A20
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021E61BC

	thumb_func_start ov14_021E6210
ov14_021E6210: ; 0x021E6210
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r7, [r6, #4]
	add r5, r0, #0
	ldr r4, [r6, #8]
	sub r7, #0x1e
	ldr r0, [r5, #8]
	add r1, r7, #0
	sub r4, #0x1e
	bl Party_GetMonByIndex
	ldr r1, [r6]
	bl CopyPokemonToPokemon
	add r1, sp, #4
	ldr r0, [r5, #8]
	add r1, #1
	add r2, r7, #0
	bl Party_GetMonAprijuiceModifiers
	ldr r0, [r5, #8]
	add r1, sp, #0
	add r2, r4, #0
	bl Party_GetMonAprijuiceModifiers
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl Party_GetMonByIndex
	add r2, r0, #0
	ldr r0, [r5, #8]
	add r1, r7, #0
	bl Party_SafeCopyMonToSlot_ResetAprijuiceModifiers
	ldr r0, [r5, #8]
	ldr r2, [r6]
	add r1, r4, #0
	bl Party_SafeCopyMonToSlot_ResetAprijuiceModifiers
	ldr r0, [r5, #8]
	add r1, sp, #0
	add r2, r7, #0
	bl Party_SetMonAprijuiceModifiers
	add r1, sp, #4
	ldr r0, [r5, #8]
	add r1, #1
	add r2, r4, #0
	bl Party_SetMonAprijuiceModifiers
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E6210

	thumb_func_start ov14_021E627C
ov14_021E627C: ; 0x021E627C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r6, [r4, #4]
	add r5, r0, #0
	sub r6, #0x1e
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl Party_GetMonByIndex
	ldr r1, [r4]
	bl CopyPokemonToPokemon
	ldr r0, [r5, #8]
	add r1, sp, #0
	add r2, r6, #0
	bl Party_GetMonAprijuiceModifiers
	ldrb r1, [r5, #0x1f]
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl ov14_021E6100
	ldr r0, [r5, #8]
	ldr r1, [r4]
	bl Party_AddMon
	ldr r0, [r5, #8]
	bl Party_GetCount
	sub r2, r0, #1
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl Party_SetMonAprijuiceModifiers
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021E627C

	thumb_func_start ov14_021E62C8
ov14_021E62C8: ; 0x021E62C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0x1f]
	ldr r2, [r4, #4]
	bl ov14_021E60C0
	add r6, r0, #0
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov14_021E6464
	add r7, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl PCStorage_PlaceMonInBoxFirstEmptySlot
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #4]
	ldr r2, [r4, #4]
	bl PCStorage_DeleteBoxMonByIndexPair
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4958
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4A20
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_021F4958
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_021F4A20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021E62C8

	thumb_func_start ov14_021E6318
ov14_021E6318: ; 0x021E6318
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4, #8]
	add r5, r0, #0
	bl ov14_021E6464
	ldr r1, [r4, #4]
	add r6, r0, #0
	ldr r0, [r5, #8]
	sub r1, #0x1e
	bl Party_GetMonByIndex
	ldr r1, [r4]
	bl CopyPokemonToPokemon
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r0, r1
	bne _021E6350
	ldr r0, [r4]
	mov r1, #0
	bl Mon_UpdateShayminForm
_021E6350:
	ldr r0, [r4]
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl PCStorage_PlaceMonInBoxFirstEmptySlot
	ldrb r1, [r5, #0x1f]
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl ov14_021E6100
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021F4958
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021F4A20
	pop {r4, r5, r6, pc}
	thumb_func_end ov14_021E6318

	thumb_func_start ov14_021E637C
ov14_021E637C: ; 0x021E637C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r4, [r0, #0xc]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	cmp r0, #0xff
	beq _021E6462
	ldr r0, [r5, #8]
	bl Party_GetCount
	add r1, r4, #0
	add r1, #0xe8
	ldr r3, [r1]
	mov r1, #0x80
	tst r1, r3
	beq _021E63CA
	add r0, r5, #0
	add r1, r3, #0
	bl ov14_021E6464
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0]
	cmp r1, #0x1e
	bhs _021E63BC
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E62C8
	pop {r3, r4, r5, pc}
_021E63BC:
	sub r1, #0x1e
	lsl r1, r1, #5
	add r0, r5, #0
	add r1, r4, r1
	bl ov14_021E6318
	pop {r3, r4, r5, pc}
_021E63CA:
	add r1, r4, #0
	add r1, #0xe4
	ldr r2, [r1]
	cmp r2, #0x1e
	bhs _021E6410
	cmp r3, #0x1e
	bhs _021E63F2
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #4]
	bl PCStorage_SwapMonsInBoxByIndexPair
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4958
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4A20
	pop {r3, r4, r5, pc}
_021E63F2:
	sub r3, #0x1e
	cmp r3, r0
	bhs _021E6406
	add r1, r4, #0
	add r4, #0x20
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021E611C
	pop {r3, r4, r5, pc}
_021E6406:
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E6184
	pop {r3, r4, r5, pc}
_021E6410:
	cmp r3, #0x1e
	bhs _021E6446
	add r1, r3, #0
	add r0, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E6432
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x20
	add r2, r4, #0
	bl ov14_021E611C
	pop {r3, r4, r5, pc}
_021E6432:
	add r1, r4, #0
	add r1, #0xe4
	ldr r1, [r1]
	add r0, r5, #0
	sub r1, #0x1e
	lsl r1, r1, #5
	add r1, r4, r1
	bl ov14_021E61BC
	pop {r3, r4, r5, pc}
_021E6446:
	sub r3, #0x1e
	cmp r3, r0
	bhs _021E6456
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E6210
	pop {r3, r4, r5, pc}
_021E6456:
	sub r2, #0x1e
	lsl r1, r2, #5
	add r0, r5, #0
	add r1, r4, r1
	bl ov14_021E627C
_021E6462:
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E637C

	thumb_func_start ov14_021E6464
ov14_021E6464: ; 0x021E6464
	push {r4, lr}
	add r0, #0x25
	ldrb r0, [r0]
	add r4, r1, #0
	mov r1, #6
	bl _s32_div_f
	mov r1, #0x7f
	add r2, r4, #0
	and r2, r1
	mov r1, #6
	mul r1, r0
	add r0, r2, r1
	pop {r4, pc}
	thumb_func_end ov14_021E6464

	thumb_func_start ov14_021E6480
ov14_021E6480: ; 0x021E6480
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r7, r1, #0
	mov r4, #0
	bl Party_GetCount
	cmp r0, #0
	bls _021E64CA
_021E6492:
	cmp r4, r7
	beq _021E64BE
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl Party_GetMonByIndex
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	bne _021E64BE
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021E64BE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E64BE:
	ldr r0, [r5, #8]
	add r4, r4, #1
	bl Party_GetCount
	cmp r4, r0
	blo _021E6492
_021E64CA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E6480

	thumb_func_start ov14_021E64D0
ov14_021E64D0: ; 0x021E64D0
	push {r3, r4, r5, lr}
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _021E6544 ; =0x000001ED
	cmp r1, r0
	bne _021E6510
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl BoxMon_UpdateArceusForm
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r5, r0
	beq _021E6540
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6510:
	sub r0, r0, #6
	cmp r1, r0
	bne _021E6540
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl BoxMon_UpdateGiratinaForm
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r5, r0
	beq _021E6540
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6540:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6544: .word 0x000001ED
	thumb_func_end ov14_021E64D0

	thumb_func_start ov14_021E6548
ov14_021E6548: ; 0x021E6548
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x1e
	bhs _021E6556
	cmp r2, #0x1e
	blo _021E65BC
_021E6556:
	cmp r4, #0x1e
	blo _021E655E
	cmp r2, #0x1e
	bhs _021E65BC
_021E655E:
	cmp r4, #0x1e
	blo _021E6564
	add r4, r2, #0
_021E6564:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov14_021E6070
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r0, r1
	bne _021E65BC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x70
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E65BC
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021E60C0
	mov r1, #0
	bl BoxMon_UpdateShayminForm
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r4
	ldr r3, _021E65C0 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	add r2, r4, #0
	bl ov14_021F2ED0
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, r4
	bne _021E65BC
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E7588
_021E65BC:
	pop {r4, r5, r6, pc}
	nop
_021E65C0: .word 0x00004094
	thumb_func_end ov14_021E6548

	thumb_func_start ov14_021E65C4
ov14_021E65C4: ; 0x021E65C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r6, [r0, #0xc]
	add r0, r6, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #8
	bne _021E665E
	mov r7, #0
_021E65DA:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _021E6650
	ldr r1, [r6, #4]
	ldr r0, [r5, #0x34]
	add r2, r0, r1
	ldr r0, _021E66F0 ; =0x00004094
	ldrb r4, [r2, r0]
	ldr r0, [r6, #8]
	mov r2, #0x80
	tst r2, r0
	add r2, sp, #4
	bne _021E6604
	add r3, r5, #0
	add r3, #0x22
	ldrb r3, [r3]
	add r1, sp, #4
	add r1, #2
	bl ov14_021F2F88
	b _021E6634
_021E6604:
	cmp r1, #0x1e
	blo _021E661A
	add r3, r5, #0
	add r3, #0x22
	ldrb r3, [r3]
	add r1, sp, #4
	mov r0, #0x23
	add r1, #2
	bl ov14_021F2F88
	b _021E662A
_021E661A:
	add r3, r5, #0
	add r3, #0x22
	ldrb r3, [r3]
	add r0, r1, #0
	add r1, sp, #4
	add r1, #2
	bl ov14_021F2F88
_021E662A:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	mov r2, #0
	bl ov14_021F2A18
_021E6634:
	ldr r1, [r5, #0x34]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, sp, #4
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
_021E6650:
	add r7, r7, #1
	add r6, #0x20
	cmp r7, #7
	blo _021E65DA
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E665E:
	add r0, r6, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r4, r6, #0
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0xe0
	str r1, [r0]
	mov r0, #0
	str r0, [sp]
	add r7, sp, #4
_021E6674:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E66DE
	ldr r1, [r5, #0x34]
	ldr r0, [r4, #4]
	add r1, r1, r0
	ldr r0, _021E66F0 ; =0x00004094
	ldrb r0, [r1, r0]
	mov r1, #0x18
	ldrsh r3, [r4, r1]
	add r1, r6, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r4, #0x10]
	mov ip, r0
	mov r0, #0x1c
	mul r1, r2
	lsr r1, r1, #0x10
	ldrsh r0, [r4, r0]
	mul r1, r3
	add r0, r0, r1
	strh r0, [r7, #2]
	mov r1, #0x1a
	ldrsh r3, [r4, r1]
	add r1, r6, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r4, #0x14]
	mov r0, #0x1e
	mul r1, r2
	lsr r1, r1, #0x10
	ldrsh r0, [r4, r0]
	mul r1, r3
	mov r2, #0
	add r0, r0, r1
	strh r0, [r7]
	mov r1, ip
	ldr r0, [r5, #0x34]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #4]
	mov r2, #0
	bl ov14_021F3190
_021E66DE:
	ldr r0, [sp]
	add r4, #0x20
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #7
	blo _021E6674
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E66F0: .word 0x00004094
	thumb_func_end ov14_021E65C4

	thumb_func_start ov14_021E66F4
ov14_021E66F4: ; 0x021E66F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r4, [r0, #0xc]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #8
	bne _021E676E
	mov r6, #0
_021E670A:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E6760
	ldr r1, [r5, #0x34]
	ldr r0, [r4, #4]
	add r3, r5, #0
	add r1, r1, r0
	ldr r0, _021E6810 ; =0x00004094
	add r3, #0x22
	ldrb r7, [r1, r0]
	add r1, sp, #4
	ldrb r3, [r3]
	ldr r0, [r4, #8]
	add r1, #2
	add r2, sp, #4
	bl ov14_021F2F88
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, [r4, #8]
	cmp r1, r0
	beq _021E6744
	add r1, sp, #4
	mov r0, #0
	ldrsh r1, [r1, r0]
	add r0, sp, #4
	add r1, #0x90
	strh r1, [r0]
_021E6744:
	ldr r1, [r5, #0x34]
	lsl r0, r7, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, sp, #4
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
_021E6760:
	add r6, r6, #1
	add r4, #0x20
	cmp r6, #7
	blo _021E670A
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E676E:
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0]
	mov r1, #0
	add r0, r4, #0
_021E6780:
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _021E6802
	add r2, r5, #0
	add r2, #0x21
	ldrb r3, [r2]
	ldr r2, [r0, #8]
	cmp r3, r2
	bne _021E6802
	lsl r6, r1, #5
	add r0, r4, #4
	str r0, [sp]
	ldr r1, [r5, #0x34]
	ldr r0, [r0, r6]
	add r1, r1, r0
	ldr r0, _021E6810 ; =0x00004094
	ldrb r3, [r1, r0]
	add r0, r4, r6
	mov r1, #0x1c
	ldrsh r7, [r0, r1]
	mov r1, #0x18
	ldrsh r1, [r0, r1]
	mov ip, r1
	add r1, r4, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r0, #0x10]
	add r4, #0xe0
	mul r1, r2
	lsr r1, r1, #0x10
	mov r2, ip
	mul r1, r2
	add r1, r7, r1
	add r7, sp, #4
	strh r1, [r7, #2]
	mov r1, #0x1e
	ldrsh r2, [r0, r1]
	mov r1, #0x1a
	ldrsh r1, [r0, r1]
	ldr r4, [r4]
	ldr r0, [r0, #0x14]
	mul r0, r4
	lsr r0, r0, #0x10
	mul r0, r1
	add r0, r2, r0
	strh r0, [r7]
	mov r2, #0
	ldr r1, [r5, #0x34]
	lsl r0, r3, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl ManagedSprite_SetPositionXY
	ldr r1, [sp]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, r6]
	mov r2, #0
	bl ov14_021F3190
	b _021E680A
_021E6802:
	add r1, r1, #1
	add r0, #0x20
	cmp r1, #7
	blo _021E6780
_021E680A:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6810: .word 0x00004094
	thumb_func_end ov14_021E66F4

	thumb_func_start ov14_021E6814
ov14_021E6814: ; 0x021E6814
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0x34]
	ldr r5, [r0, #0xc]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #8
	bne _021E6876
	mov r4, #0
_021E682A:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021E6868
	ldr r1, [r6, #0x34]
	ldr r0, [r5, #4]
	add r3, r6, #0
	add r1, r1, r0
	ldr r0, _021E6908 ; =0x00004094
	add r3, #0x22
	ldrb r7, [r1, r0]
	add r1, sp, #4
	ldrb r3, [r3]
	ldr r0, [r5, #8]
	add r1, #2
	add r2, sp, #4
	bl ov14_021F2F88
	add r2, sp, #4
	ldr r1, [r6, #0x34]
	lsl r0, r7, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
_021E6868:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #7
	blo _021E682A
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6876:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r4, r5, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xe0
	str r1, [r0]
	mov r0, #0
	str r0, [sp]
	add r7, sp, #4
_021E688C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E68F6
	ldr r1, [r6, #0x34]
	ldr r0, [r4, #4]
	add r1, r1, r0
	ldr r0, _021E6908 ; =0x00004094
	ldrb r0, [r1, r0]
	mov r1, #0x18
	ldrsh r3, [r4, r1]
	add r1, r5, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r4, #0x10]
	mov ip, r0
	mov r0, #0x1c
	mul r1, r2
	lsr r1, r1, #0x10
	ldrsh r0, [r4, r0]
	mul r1, r3
	add r0, r0, r1
	strh r0, [r7, #2]
	mov r1, #0x1a
	ldrsh r3, [r4, r1]
	add r1, r5, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r4, #0x14]
	mov r0, #0x1e
	mul r1, r2
	lsr r1, r1, #0x10
	ldrsh r0, [r4, r0]
	mul r1, r3
	mov r2, #0
	add r0, r0, r1
	strh r0, [r7]
	mov r1, ip
	ldr r0, [r6, #0x34]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r6, #0x34]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov14_021F31E0
_021E68F6:
	ldr r0, [sp]
	add r4, #0x20
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #7
	blo _021E688C
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6908: .word 0x00004094
	thumb_func_end ov14_021E6814

	thumb_func_start ov14_021E690C
ov14_021E690C: ; 0x021E690C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r1, #0
	add r1, r4, #0
	mov r2, #0xac
	mov r3, #0
	add r5, r0, #0
	bl ov14_021E6070
	mov r0, #0x80
	tst r0, r4
	beq _021E694C
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E6464
	ldrb r1, [r5, #0x1f]
	str r0, [sp]
	cmp r0, r1
	beq _021E6940
	ldr r0, [r5, #4]
	ldr r1, [sp]
	bl PCStorage_CountMonsAndEggsInBox
	cmp r0, #0x1e
	bne _021E6944
_021E6940:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6944:
	mov r0, #0x80
	eor r4, r0
	mov r7, #0
	b _021E695E
_021E694C:
	ldrb r0, [r5, #0x1f]
	add r1, r4, #0
	mov r2, #0xac
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0
	bl ov14_021E6070
	add r7, r0, #0
_021E695E:
	cmp r6, #0x1e
	blo _021E69D6
	add r1, r6, #0
	add r0, r5, #0
	sub r1, #0x1e
	bl ov14_021E6480
	cmp r0, #0
	bne _021E699C
	cmp r7, #0
	bne _021E6984
	cmp r4, #0x1e
	blo _021E6980
	ldrb r1, [r5, #0x1f]
	ldr r0, [sp]
	cmp r0, r1
	beq _021E699C
_021E6980:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6984:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4c
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E699C
	cmp r4, #0x1e
	bhs _021E699C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E699C:
	cmp r4, #0x1e
	bhs _021E6A36
	sub r6, #0x1e
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl Party_GetMonByIndex
	mov r1, #6
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E69C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E69C4:
	add r0, r4, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021E6A36
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E69D6:
	cmp r4, #0x1e
	blo _021E6A36
	cmp r7, #0
	beq _021E6A36
	add r1, r4, #0
	ldr r0, [r5, #8]
	sub r1, #0x1e
	bl Party_GetMonByIndex
	mov r1, #6
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E6A02
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6A02:
	add r0, r7, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021E6A14
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6A14:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x4c
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E6A36
	sub r4, #0x1e
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E6480
	cmp r0, #0
	bne _021E6A36
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6A36:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E690C

	thumb_func_start ov14_021E6A3C
ov14_021E6A3C: ; 0x021E6A3C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, r2, #0
	mov r2, #0xac
	mov r3, #0
	add r5, r0, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E6A54
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6A54:
	add r1, r4, #0
	add r0, r5, #0
	sub r1, #0x1e
	bl ov14_021E6480
	cmp r0, #0
	bne _021E6A66
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6A66:
	sub r4, #0x1e
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl Party_GetMonByIndex
	mov r1, #6
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E6A8A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6A8A:
	add r0, r4, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _021E6A9C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6A9C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E6A3C

	thumb_func_start ov14_021E6AA0
ov14_021E6AA0: ; 0x021E6AA0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	mov r2, #0xac
	mov r3, #0
	add r5, r0, #0
	bl ov14_021E6070
	cmp r0, #0
	bne _021E6ABA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6ABA:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x4c
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E6ACE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6ACE:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E6AEC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6AEC:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r7, #0
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E6B0A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6B0A:
	ldr r0, [sp]
	cmp r0, #0x70
	bne _021E6B26
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #5
	mov r3, #0
	bl ov14_021E6070
	ldr r1, _021E6B44 ; =0x000001E7
	cmp r0, r1
	beq _021E6B26
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6B26:
	cmp r7, #0x70
	bne _021E6B40
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov14_021E6070
	ldr r1, _021E6B44 ; =0x000001E7
	cmp r0, r1
	beq _021E6B40
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6B40:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6B44: .word 0x000001E7
	thumb_func_end ov14_021E6AA0

	thumb_func_start ov14_021E6B48
ov14_021E6B48: ; 0x021E6B48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #4]
	add r2, r0, r1
	ldr r1, _021E6C08 ; =0x00004094
	ldrb r1, [r2, r1]
	add r2, r4, #0
	add r2, #0x1e
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x1c
	bl ManagedSprite_GetPositionXY
	ldr r2, [r4, #8]
	mov r0, #0x80
	tst r0, r2
	bne _021E6B88
	add r5, #0x22
	ldrb r3, [r5]
	add r1, sp, #0
	add r0, r2, #0
	add r1, #2
	add r2, sp, #0
	bl ov14_021F2F88
	b _021E6B98
_021E6B88:
	mov r1, #0x7f
	and r1, r2
	add r2, sp, #0
	ldr r0, [r5, #0x34]
	add r2, #2
	add r3, sp, #0
	bl ov14_021F4940
_021E6B98:
	mov r0, #0x1c
	add r2, sp, #0
	mov r1, #2
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6BB2
	mov r3, #1
	strh r3, [r4, #0x18]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	b _021E6BBC
_021E6BB2:
	sub r3, r1, #3
	strh r3, [r4, #0x18]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
_021E6BBC:
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x10]
	mov r0, #0x1e
	add r2, sp, #0
	mov r1, #0
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6BEE
	mov r3, #1
	strh r3, [r4, #0x1a]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
_021E6BEE:
	sub r3, r1, #1
	strh r3, [r4, #0x1a]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	nop
_021E6C08: .word 0x00004094
	thumb_func_end ov14_021E6B48

	thumb_func_start ov14_021E6C0C
ov14_021E6C0C: ; 0x021E6C0C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #8]
	add r2, r0, r1
	ldr r1, _021E6CC4 ; =0x00004094
	ldrb r6, [r2, r1]
	ldr r2, [r4, #4]
	add r2, r0, r2
	ldrb r1, [r2, r1]
	add r2, r4, #0
	add r2, #0x1e
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x1c
	bl ManagedSprite_GetPositionXY
	ldr r1, [r5, #0x34]
	lsl r0, r6, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x1c
	add r2, sp, #0
	mov r1, #2
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6C6A
	mov r3, #1
	strh r3, [r4, #0x18]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	b _021E6C74
_021E6C6A:
	sub r3, r1, #3
	strh r3, [r4, #0x18]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
_021E6C74:
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x10]
	mov r0, #0x1e
	add r2, sp, #0
	mov r1, #0
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6CA8
	mov r3, #1
	strh r3, [r4, #0x1a]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	add sp, #4
	sub r0, r1, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, pc}
_021E6CA8:
	sub r3, r1, #1
	strh r3, [r4, #0x1a]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E6CC4: .word 0x00004094
	thumb_func_end ov14_021E6C0C

	thumb_func_start ov14_021E6CC8
ov14_021E6CC8: ; 0x021E6CC8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	ldr r1, [r7, #0x34]
	add r6, r2, #0
	ldr r4, [r1, #0xc]
	mov r1, #1
	str r5, [r4, #4]
	str r6, [r4, #8]
	str r1, [r4, #0xc]
	add r1, r4, #0
	bl ov14_021E6B48
	str r6, [r4, #0x24]
	str r5, [r4, #0x28]
	mov r0, #1
	str r0, [r4, #0x2c]
	add r4, #0x20
	add r0, r7, #0
	add r1, r4, #0
	bl ov14_021E6B48
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E6CC8

	thumb_func_start ov14_021E6CF8
ov14_021E6CF8: ; 0x021E6CF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	str r2, [sp, #4]
	ldr r2, [r6, #0x34]
	str r1, [sp]
	ldr r0, [r2, #0xc]
	mov r1, #1
	str r0, [sp, #0x14]
	ldr r0, _021E6F38 ; =0x000040C4
	str r1, [r2, r0]
	mov r1, #0
	ldr r2, [sp, #0x14]
	add r0, r1, #0
_021E6D14:
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	add r1, r1, #1
	add r2, #0x20
	cmp r1, #7
	blo _021E6D14
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add r1, #0xec
	str r0, [r1]
	cmp r0, #0xff
	beq _021E6D40
	ldr r1, [sp]
	cmp r1, r0
	beq _021E6D40
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E690C
	cmp r0, #0
	bne _021E6D66
_021E6D40:
	ldr r0, [sp, #0x14]
	mov r1, #0xff
	add r0, #0xe4
	str r1, [r0]
	ldr r0, [sp, #0x14]
	add r0, #0xe8
	str r1, [r0]
	ldr r1, [sp]
	ldr r0, [sp, #0x14]
	str r1, [r0, #4]
	str r1, [r0, #8]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl ov14_021E6B48
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6D66:
	ldr r1, [sp, #0x14]
	ldr r0, [sp]
	add r1, #0xe4
	str r0, [r1]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add r1, #0xe8
	str r0, [r1]
	ldr r0, [r6, #8]
	bl Party_GetCount
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0x80
	tst r0, r1
	beq _021E6E06
	ldr r0, [sp]
	cmp r0, #0x1e
	bhs _021E6DAE
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	str r1, [r0, #4]
	ldr r1, [sp, #4]
	str r1, [r0, #8]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl ov14_021E6B48
	ldr r1, [r6, #0x34]
	ldr r0, _021E6F38 ; =0x000040C4
	mov r2, #0
	str r2, [r1, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6DAE:
	str r0, [sp, #0x10]
	sub r0, #0x1e
	add r5, r0, #1
	str r0, [sp, #0x10]
	cmp r5, #6
	bhs _021E6DE0
	ldr r0, [sp, #0x14]
	lsl r1, r5, #5
	add r4, r0, r1
	mov r7, #1
_021E6DC2:
	add r0, r5, #0
	add r0, #0x1e
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x1d
	str r0, [r4, #8]
	add r0, r6, #0
	add r1, r4, #0
	str r7, [r4, #0xc]
	bl ov14_021E6B48
	add r5, r5, #1
	add r4, #0x20
	cmp r5, #6
	blo _021E6DC2
_021E6DE0:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #5
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	ldr r0, [sp]
	str r0, [r1, #4]
	ldr r0, [sp, #4]
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	ldr r1, [r6, #0x34]
	ldr r0, _021E6F38 ; =0x000040C4
	mov r2, #0
	str r2, [r1, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6E06:
	ldr r0, [sp]
	cmp r0, #0x1e
	bhs _021E6E44
	ldr r0, [sp, #4]
	cmp r0, #0x1e
	bhs _021E6E20
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E6CC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6E20:
	sub r0, #0x1e
	cmp r0, r7
	bhs _021E6E34
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E6CC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6E34:
	add r7, #0x1e
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #0
	bl ov14_021E6CC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6E44:
	ldr r0, [sp, #4]
	cmp r0, #0x1e
	bhs _021E6ED2
	ldr r1, [sp, #4]
	add r0, r6, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E6E68
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E6CC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6E68:
	ldr r0, [sp]
	str r0, [sp, #8]
	sub r0, #0x1e
	add r5, r0, #1
	str r0, [sp, #8]
	cmp r5, r7
	bhs _021E6E9C
	ldr r0, [sp, #0x14]
	lsl r1, r5, #5
	add r4, r0, r1
_021E6E7C:
	add r0, r5, #0
	add r0, #0x1e
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x1d
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl ov14_021E6B48
	add r5, r5, #1
	add r4, #0x20
	cmp r5, r7
	blo _021E6E7C
_021E6E9C:
	ldr r0, [sp, #8]
	lsl r1, r0, #5
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	ldr r0, [sp]
	str r0, [r1, #4]
	ldr r0, [sp, #4]
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	lsl r1, r7, #5
	ldr r0, [sp, #0x14]
	add r7, #0x1d
	add r1, r0, r1
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	str r7, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6ED2:
	sub r0, #0x1e
	cmp r0, r7
	bhs _021E6EE6
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E6CC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E6EE6:
	ldr r0, [sp]
	str r0, [sp, #0xc]
	sub r0, #0x1e
	add r5, r0, #1
	str r0, [sp, #0xc]
	cmp r5, r7
	bhs _021E6F1A
	ldr r0, [sp, #0x14]
	lsl r1, r5, #5
	add r4, r0, r1
_021E6EFA:
	add r0, r5, #0
	add r0, #0x1e
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x1d
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl ov14_021E6B48
	add r5, r5, #1
	add r4, #0x20
	cmp r5, r7
	blo _021E6EFA
_021E6F1A:
	ldr r0, [sp, #0xc]
	add r7, #0x1d
	lsl r1, r0, #5
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	ldr r0, [sp]
	str r0, [r1, #4]
	str r7, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6F38: .word 0x000040C4
	thumb_func_end ov14_021E6CF8

	thumb_func_start ov14_021E6F3C
ov14_021E6F3C: ; 0x021E6F3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r2, [sp, #4]
	ldr r2, [r6, #0x34]
	str r1, [sp]
	ldr r0, [r2, #0xc]
	mov r1, #1
	str r0, [sp, #0xc]
	ldr r0, _021E7030 ; =0x000040C4
	str r1, [r2, r0]
	mov r1, #0
	ldr r2, [sp, #0xc]
	add r0, r1, #0
_021E6F58:
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	add r1, r1, #1
	add r2, #0x20
	cmp r1, #7
	blo _021E6F58
	ldr r0, [sp, #4]
	cmp r0, #0xff
	beq _021E6F7A
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ov14_021E6A3C
	cmp r0, #0
	bne _021E6FA0
_021E6F7A:
	ldr r0, [sp, #0xc]
	mov r1, #0xff
	add r0, #0xe4
	str r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, #0xe8
	str r1, [r0]
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	str r1, [r0, #4]
	str r1, [r0, #8]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E6FA0:
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add r1, #0xe4
	str r0, [r1]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, #0xe8
	str r0, [r1]
	ldr r0, [r6, #8]
	bl Party_GetCount
	add r7, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0x1e
	bhs _021E702C
	ldr r0, [sp]
	str r0, [sp, #8]
	sub r0, #0x1e
	add r5, r0, #1
	str r0, [sp, #8]
	cmp r5, r7
	bhs _021E6FF2
	ldr r0, [sp, #0xc]
	lsl r1, r5, #5
	add r4, r0, r1
_021E6FD2:
	add r0, r5, #0
	add r0, #0x1e
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x1d
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl ov14_021E6C0C
	add r5, r5, #1
	add r4, #0x20
	cmp r5, r7
	blo _021E6FD2
_021E6FF2:
	ldr r0, [sp, #8]
	lsl r1, r0, #5
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp]
	str r0, [r1, #4]
	ldr r0, [sp, #4]
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6C0C
	lsl r1, r7, #5
	ldr r0, [sp, #0xc]
	add r7, #0x1d
	add r1, r0, r1
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	str r7, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6C0C
	ldr r1, [r6, #0x34]
	ldr r0, _021E7030 ; =0x000040C4
	mov r2, #0
	str r2, [r1, r0]
_021E702C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7030: .word 0x000040C4
	thumb_func_end ov14_021E6F3C

	thumb_func_start ov14_021E7034
ov14_021E7034: ; 0x021E7034
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	ldr r2, [r5, #0x34]
	ldr r0, _021E70AC ; =0x000040C4
	add r6, r1, #0
	ldr r4, [r2, #0xc]
	mov r1, #1
	str r1, [r2, r0]
	mov r0, #0
	add r1, r4, #0
	add r3, r0, #0
_021E704C:
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #0xc]
	add r0, r0, #1
	add r1, #0x20
	cmp r0, #7
	blo _021E704C
	cmp r7, #0xff
	beq _021E706C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0xac
	bl ov14_021E6070
	cmp r0, #0
	beq _021E708C
_021E706C:
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0xe4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe8
	str r1, [r0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E6B48
	pop {r3, r4, r5, r6, r7, pc}
_021E708C:
	add r0, r4, #0
	add r0, #0xe4
	str r6, [r0]
	add r4, #0xe8
	str r7, [r4]
	ldr r0, [r5, #8]
	bl Party_GetCount
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x1e
	bl ov14_021E6CC8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E70AC: .word 0x000040C4
	thumb_func_end ov14_021E7034

	thumb_func_start ov14_021E70B0
ov14_021E70B0: ; 0x021E70B0
	push {r3, r4}
	ldr r0, [r0, #0x34]
	mov r3, #0
	ldr r2, [r0, #0xc]
	add r4, r2, #0
_021E70BA:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021E70D0
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _021E70D0
	lsl r0, r3, #5
	add r0, r2, r0
	ldr r0, [r0, #8]
	pop {r3, r4}
	bx lr
_021E70D0:
	add r3, r3, #1
	add r4, #0x20
	cmp r3, #7
	blo _021E70BA
	mov r0, #0xff
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov14_021E70B0

	thumb_func_start ov14_021E70E0
ov14_021E70E0: ; 0x021E70E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x34]
	str r1, [sp]
	ldr r7, [r0, #0xc]
	sub r1, #0x1e
	mov r2, #0
	str r1, [sp]
	add r3, r7, #0
	add r1, r2, #0
_021E70F4:
	add r0, r2, #0
	add r0, #0x1e
	str r0, [r3, #4]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	add r2, r2, #1
	add r3, #0x20
	cmp r2, #6
	blo _021E70F4
	lsl r0, r2, #5
	add r0, r7, r0
	str r1, [r0, #0xc]
	ldr r0, [sp]
	add r5, r0, #1
	cmp r5, #6
	bhs _021E7132
	lsl r0, r5, #5
	add r4, r7, r0
_021E7118:
	add r0, r5, #0
	add r0, #0x1d
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl ov14_021E6B48
	add r5, r5, #1
	add r4, #0x20
	cmp r5, #6
	blo _021E7118
_021E7132:
	ldr r0, [sp]
	lsl r1, r0, #5
	mov r0, #0x23
	add r1, r7, r1
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021E70E0

	thumb_func_start ov14_021E7148
ov14_021E7148: ; 0x021E7148
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r7, _021E71C0 ; =0x00004094
	add r5, r0, #0
	mov r2, #0
	add r3, r4, #0
	add r6, sp, #0
_021E7158:
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq _021E7168
	ldr r1, [r5, #0x34]
	ldr r0, [r3, #4]
	add r0, r1, r0
	ldrb r0, [r0, r7]
	strb r0, [r6]
_021E7168:
	add r2, r2, #1
	add r3, #0x20
	add r6, r6, #1
	cmp r2, #7
	blo _021E7158
	mov r7, #0
	add r6, sp, #0
_021E7176:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E71B2
	ldr r1, [r4, #8]
	mov r0, #0x80
	tst r0, r1
	bne _021E719A
	ldr r2, [r5, #0x34]
	ldrb r0, [r6]
	add r2, r2, r1
	ldr r1, _021E71C0 ; =0x00004094
	strb r0, [r2, r1]
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #8]
	mov r2, #1
	bl ov14_021F3190
	b _021E71B2
_021E719A:
	ldr r0, [r4, #4]
	cmp r0, #0x1e
	blo _021E71A8
	ldrb r2, [r6]
	ldr r1, [r5, #0x34]
	ldr r0, _021E71C4 ; =0x000040B7
	strb r2, [r1, r0]
_021E71A8:
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #4]
	mov r2, #1
	bl ov14_021F3190
_021E71B2:
	add r7, r7, #1
	add r4, #0x20
	add r6, r6, #1
	cmp r7, #7
	blo _021E7176
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E71C0: .word 0x00004094
_021E71C4: .word 0x000040B7
	thumb_func_end ov14_021E7148

	thumb_func_start ov14_021E71C8
ov14_021E71C8: ; 0x021E71C8
	ldr r3, _021E71E4 ; =ov14_021F7BC0
	mov r2, #0
_021E71CC:
	ldrh r1, [r3]
	cmp r0, r1
	bne _021E71D6
	add r0, r2, #0
	bx lr
_021E71D6:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #4
	blo _021E71CC
	mov r0, #0
	mvn r0, r0
	bx lr
	.balign 4, 0
_021E71E4: .word ov14_021F7BC0
	thumb_func_end ov14_021E71C8

	thumb_func_start ov14_021E71E8
ov14_021E71E8: ; 0x021E71E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0xa
	mov r1, #0xc
	bl Heap_AllocAtEnd
	ldr r2, [r4, #0x34]
	ldr r1, _021E725C ; =0x000088DC
	str r0, [r2, r1]
	ldr r0, [r4, #0x34]
	ldr r6, [r0, r1]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r2, r0, r1
	ldr r1, _021E7260 ; =0x00004094
	ldrb r1, [r2, r1]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r6]
	mov r0, #0
	strh r0, [r6, #4]
	strb r0, [r6, #6]
	add r0, r4, #0
	ldrb r1, [r4, #0x1f]
	add r4, #0x21
	ldrb r2, [r4]
	bl ov14_021E60C0
	mov r5, #0
	add r4, r0, #0
	sub r7, r5, #1
_021E722E:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov14_021E71C8
	cmp r0, r7
	beq _021E7254
	ldrb r2, [r6, #6]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	strb r0, [r6, #6]
	pop {r3, r4, r5, r6, r7, pc}
_021E7254:
	add r5, r5, #1
	cmp r5, #4
	blo _021E722E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E725C: .word 0x000088DC
_021E7260: .word 0x00004094
	thumb_func_end ov14_021E71E8

	thumb_func_start ov14_021E7264
ov14_021E7264: ; 0x021E7264
	ldr r1, [r0, #0x34]
	ldr r0, _021E7270 ; =0x000088DC
	ldr r3, _021E7274 ; =Heap_Free
	ldr r0, [r1, r0]
	bx r3
	nop
_021E7270: .word 0x000088DC
_021E7274: .word Heap_Free
	thumb_func_end ov14_021E7264

	thumb_func_start ov14_021E7278
ov14_021E7278: ; 0x021E7278
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r1, [r7, #0x34]
	ldr r0, _021E7350 ; =0x000088DC
	ldr r4, [r1, r0]
	ldr r0, _021E7354 ; =0x00000222
	ldrh r5, [r4, #4]
	cmp r5, r0
	bne _021E728E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E728E:
	mov r0, #0
	str r0, [sp]
_021E7292:
	mov r0, #0x87
	lsl r0, r0, #2
	cmp r5, r0
	bhs _021E72CE
	add r0, r5, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x1e
	bl _s32_div_f
	ldrb r0, [r7, #0x1f]
	add r2, r1, #0
	cmp r6, r0
	bne _021E72C2
	add r0, r7, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r2, r0
	bne _021E72C2
	mov r6, #0
	b _021E72EA
_021E72C2:
	add r0, r7, #0
	add r1, r6, #0
	bl ov14_021E60C0
	add r6, r0, #0
	b _021E72EA
_021E72CE:
	sub r2, r5, r0
	add r0, r7, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
	cmp r2, r0
	bne _021E72E0
	mov r6, #0
	b _021E72EA
_021E72E0:
	add r0, r7, #0
	mov r1, #0xff
	bl ov14_021E60C0
	add r6, r0, #0
_021E72EA:
	cmp r6, #0
	beq _021E732E
	add r0, r6, #0
	mov r1, #0xac
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	beq _021E732E
	mov r5, #0
_021E72FE:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov14_021E71C8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7328
	mov r1, #1
	lsl r1, r0
	mov r0, #0xff
	ldrb r2, [r4, #6]
	eor r0, r1
	and r0, r2
	strb r0, [r4, #6]
_021E7328:
	add r5, r5, #1
	cmp r5, #4
	blo _021E72FE
_021E732E:
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r5, [r4, #4]
	ldr r0, _021E7354 ; =0x00000222
	cmp r5, r0
	bne _021E7340
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7340:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0xf
	blo _021E7292
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7350: .word 0x000088DC
_021E7354: .word 0x00000222
	thumb_func_end ov14_021E7278

	thumb_func_start ov14_021E7358
ov14_021E7358: ; 0x021E7358
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xac
	mov r2, #0
	add r7, r0, #0
	bl GetBoxMonData
	cmp r0, #0
	beq _021E7460
	mov r0, #0xa
	mov r1, #0x1c
	bl Heap_Alloc
	add r6, r0, #0
	str r7, [r6]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl GetBoxMonData
	strh r0, [r6, #4]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl GetBoxMonData
	mov r1, #0
	strh r0, [r6, #6]
	add r0, r7, #0
	add r2, r1, #0
	bl GetBoxMonData
	str r0, [r6, #8]
	add r0, r7, #0
	mov r1, #0xb1
	mov r2, #0
	bl GetBoxMonData
	strb r0, [r6, #0xc]
	add r0, r7, #0
	mov r1, #0xb2
	mov r2, #0
	bl GetBoxMonData
	strb r0, [r6, #0xd]
	add r0, r7, #0
	mov r1, #0xa
	mov r2, #0
	bl GetBoxMonData
	strb r0, [r6, #0xe]
	add r0, r7, #0
	bl GetBoxMonNature
	strb r0, [r6, #0xf]
	add r0, r7, #0
	mov r1, #0xb
	mov r2, #0
	bl GetBoxMonData
	strh r0, [r6, #0x10]
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl GetBoxMonData
	ldrb r1, [r6, #0x12]
	mov r2, #0x7f
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0x7f
	and r0, r2
	orr r0, r1
	strb r0, [r6, #0x12]
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r6, #0x12]
	mov r2, #0x80
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r6, #0x12]
	add r0, r7, #0
	bl GetBoxMonGender
	add r2, r6, #0
	ldrb r1, [r6, #0x13]
	mov r3, #0x7f
	add r2, #0x13
	bic r1, r3
	mov r3, #0x7f
	and r0, r3
	orr r0, r1
	strb r0, [r6, #0x13]
	ldrh r0, [r6, #4]
	cmp r0, #0x1d
	beq _021E743C
	cmp r0, #0x20
	beq _021E743C
	ldrb r0, [r6, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021E743C
	ldrb r1, [r2]
	mov r0, #0x80
	orr r0, r1
	strb r0, [r2]
	b _021E7444
_021E743C:
	ldrb r1, [r6, #0x13]
	mov r0, #0x80
	bic r1, r0
	strb r1, [r6, #0x13]
_021E7444:
	mov r4, #0
	add r5, r6, #0
_021E7448:
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x36
	mov r2, #0
	bl GetBoxMonData
	strh r0, [r5, #0x14]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blo _021E7448
	b _021E7462
_021E7460:
	mov r6, #0
_021E7462:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7358

	thumb_func_start ov14_021E7468
ov14_021E7468: ; 0x021E7468
	ldr r3, _021E746C ; =Heap_Free
	bx r3
	.balign 4, 0
_021E746C: .word Heap_Free
	thumb_func_end ov14_021E7468

	thumb_func_start ov14_021E7470
ov14_021E7470: ; 0x021E7470
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	bl ov14_021F5404
	mov r7, #0x2f
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #4
_021E7482:
	ldr r2, [r5, #0x34]
	add r3, r6, r4
	ldr r0, [r2, r7]
	add r2, #0x30
	lsl r3, r3, #4
	mov r1, #0x10
	add r2, r2, r3
	bl sub_02019A60
	add r4, r4, #1
	cmp r4, #4
	blo _021E7482
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88A4
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #2
	bl ov14_021F36DC
	ldr r0, [r5, #0x34]
	ldr r1, _021E74EC ; =0x000088D0
	mov r2, #1
	ldrh r1, [r0, r1]
	eor r1, r2
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	ldr r1, _021E74EC ; =0x000088D0
	mov r2, #0
	ldrh r1, [r0, r1]
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	ldr r1, [sp]
	bl ov14_021F3D70
	ldr r1, [sp]
	add r0, r5, #0
	bl ov14_021F5368
	ldr r1, [sp]
	add r0, r5, #0
	ldrh r1, [r1, #0x10]
	bl ov14_021E895C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E74EC: .word 0x000088D0
	thumb_func_end ov14_021E7470

	thumb_func_start ov14_021E74F0
ov14_021E74F0: ; 0x021E74F0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldrh r1, [r4, #6]
	add r5, r0, #0
	cmp r1, #0
	beq _021E7534
	bl ov14_021F5564
	add r6, r0, #0
	mov r0, #0x2f
	ldr r2, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, #0x30
	lsl r3, r6, #4
	mov r1, #0x10
	add r2, r2, r3
	bl sub_02019A60
	mov r0, #0x2f
	add r3, r6, #1
	ldr r2, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, #0x30
	lsl r3, r3, #4
	mov r1, #0x10
	add r2, r2, r3
	bl sub_02019A60
	ldrh r1, [r4, #6]
	ldr r0, [r5, #0x34]
	bl ov14_021F38B0
_021E7534:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8944
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov14_021F36DC
	ldr r0, [r5, #0x34]
	ldr r1, _021E7584 ; =0x000088D0
	mov r2, #1
	ldrh r1, [r0, r1]
	eor r1, r2
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	ldr r1, _021E7584 ; =0x000088D0
	mov r2, #0
	ldrh r1, [r0, r1]
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl ov14_021F3D70
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F5368
	ldrh r1, [r4, #0x10]
	add r0, r5, #0
	bl ov14_021E895C
	pop {r4, r5, r6, pc}
	nop
_021E7584: .word 0x000088D0
	thumb_func_end ov14_021E74F0

	thumb_func_start ov14_021E7588
ov14_021E7588: ; 0x021E7588
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r2, r1, #0
	ldrb r1, [r5, #0x1f]
	bl ov14_021E60C0
	add r4, r0, #0
	beq _021E75E6
	bl AcquireBoxMonLock
	add r7, r0, #0
	add r0, r4, #0
	bl ov14_021E7358
	add r6, r0, #0
	beq _021E75CA
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021E75BA
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021E74F0
	b _021E75C2
_021E75BA:
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021E7470
_021E75C2:
	add r0, r6, #0
	bl ov14_021E7468
	b _021E75DC
_021E75CA:
	add r0, r5, #0
	bl ov14_021E765C
	add r0, r4, #0
	add r1, r7, #0
	bl ReleaseBoxMonLock
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E75DC:
	add r0, r4, #0
	add r1, r7, #0
	bl ReleaseBoxMonLock
	b _021E75F0
_021E75E6:
	add r0, r5, #0
	bl ov14_021E765C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E75F0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021E7588

	thumb_func_start ov14_021E75F4
ov14_021E75F4: ; 0x021E75F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r2, r1, #0
	ldrb r1, [r5, #0x1f]
	bl ov14_021E60C0
	add r4, r0, #0
	bl AcquireBoxMonLock
	add r7, r0, #0
	add r0, r4, #0
	bl ov14_021E7358
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	bl ov14_021F36DC
	ldr r0, [r5, #0x34]
	ldr r1, _021E7658 ; =0x000088D0
	mov r2, #1
	ldrh r1, [r0, r1]
	eor r1, r2
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	ldr r1, _021E7658 ; =0x000088D0
	mov r2, #0
	ldrh r1, [r0, r1]
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	bl ov14_021F3D70
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021F5368
	add r0, r6, #0
	bl ov14_021E7468
	add r0, r4, #0
	add r1, r7, #0
	bl ReleaseBoxMonLock
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7658: .word 0x000088D0
	thumb_func_end ov14_021E75F4

	thumb_func_start ov14_021E765C
ov14_021E765C: ; 0x021E765C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #2
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #3
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0xd
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0xe
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	bl ov14_021F53C0
	add r0, r4, #0
	mov r1, #0
	bl ov14_021E895C
	ldr r0, [r4]
	ldr r1, [r4, #0x34]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021E76AC
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8944
	pop {r4, pc}
_021E76AC:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88A4
	pop {r4, pc}
	thumb_func_end ov14_021E765C

	thumb_func_start ov14_021E76B8
ov14_021E76B8: ; 0x021E76B8
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E765C
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	mov r0, #0xff
	add r4, #0x21
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end ov14_021E76B8

	thumb_func_start ov14_021E76D0
ov14_021E76D0: ; 0x021E76D0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xa
	add r4, r3, #0
	str r0, [sp]
	mov r0, #0x13
	add r1, #0x10
	mov r2, #1
	add r3, sp, #4
	bl GfGfxLoader_GetCharData
	ldr r3, [sp, #4]
	add r6, r0, #0
	str r4, [sp]
	ldr r0, [r5, #0x34]
	ldr r2, [r3, #0x14]
	ldr r0, [r0, #0x14]
	ldr r3, [r3, #0x10]
	mov r1, #3
	bl BG_LoadCharTilesData
	mov r0, #3
	str r0, [sp]
	ldr r1, [sp, #4]
	add r4, #0x15
	ldr r2, [r1, #0x14]
	mov r1, #0x2a
	lsl r1, r1, #4
	add r1, r2, r1
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x15
	bl ov14_021F5718
	add r0, r6, #0
	bl Heap_Free
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov14_021E76D0

	thumb_func_start ov14_021E7720
ov14_021E7720: ; 0x021E7720
	push {r3, lr}
	sub sp, #8
	mov r0, #0x20
	add r3, r2, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x13
	add r1, #0x28
	mov r2, #0
	lsl r3, r3, #5
	bl GfGfxLoader_GXLoadPal
	add sp, #8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7720

	thumb_func_start ov14_021E7740
ov14_021E7740: ; 0x021E7740
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r0, [sp]
	mov r0, #0x13
	mov r1, #0xf
	mov r2, #1
	add r3, sp, #0x30
	bl GfGfxLoader_GetScrnData
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x48]
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
_021E776E:
	ldr r0, [sp, #0x20]
	mov r1, #0x15
	mul r1, r0
	ldr r0, [sp, #0x24]
	lsl r1, r1, #1
	add r6, r0, r1
	ldr r0, [sp, #0x20]
	ldr r4, [sp, #0x14]
	add r0, r0, #1
	lsl r0, r0, #0x18
	mov r5, #0
	lsr r7, r0, #0x18
_021E7786:
	lsl r0, r5, #1
	ldrh r1, [r6, r0]
	ldr r0, _021E7800 ; =0x00000FFF
	lsl r3, r4, #0x18
	and r1, r0
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x2c
	add r1, r0, r1
	ldr r0, [sp, #0x18]
	lsr r3, r3, #0x18
	add r1, r0, r1
	add r0, sp, #0x2c
	strh r1, [r0]
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r1, #3
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0x14]
	bl LoadRectToBgTilemapRect
	add r4, r4, #1
	cmp r4, #0x40
	blo _021E77BC
	mov r4, #0
_021E77BC:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x15
	blo _021E7786
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	cmp r0, #0x14
	blo _021E776E
	ldr r0, [sp, #0x28]
	bl Heap_Free
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	lsl r3, r4, #0x18
	ldr r0, [r0, #0x34]
	ldr r2, _021E7804 ; =0x00001001
	ldr r0, [r0, #0x14]
	mov r1, #3
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7800: .word 0x00000FFF
_021E7804: .word 0x00001001
	thumb_func_end ov14_021E7740

	thumb_func_start ov14_021E7808
ov14_021E7808: ; 0x021E7808
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov14_021E76D0
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E7720
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov14_021E7740
	ldr r0, [r5, #0x34]
	mov r1, #3
	ldr r0, [r0, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021E7808

	thumb_func_start ov14_021E783C
ov14_021E783C: ; 0x021E783C
	push {r3, r4, r5, r6, r7, lr}
	cmp r2, #0
	bne _021E785A
	ldr r4, [r0, #0x34]
	ldr r2, _021E78A4 ; =0x00000448
	ldrsb r3, [r4, r2]
	sub r3, #0x17
	strb r3, [r4, r2]
	ldr r4, [r0, #0x34]
	ldrsb r3, [r4, r2]
	cmp r3, #0
	bge _021E7874
	add r3, #0x40
	strb r3, [r4, r2]
	b _021E7874
_021E785A:
	cmp r2, #1
	bne _021E7874
	ldr r4, [r0, #0x34]
	ldr r2, _021E78A4 ; =0x00000448
	ldrsb r3, [r4, r2]
	add r3, #0x17
	strb r3, [r4, r2]
	ldr r4, [r0, #0x34]
	ldrsb r3, [r4, r2]
	cmp r3, #0x40
	blt _021E7874
	sub r3, #0x40
	strb r3, [r4, r2]
_021E7874:
	ldr r6, [r0, #0x34]
	ldr r2, _021E78A8 ; =0x00000449
	ldrb r2, [r6, r2]
	cmp r2, #0
	bne _021E7886
	mov r3, #0x97
	lsl r3, r3, #2
	mov r5, #0xe
	b _021E788A
_021E7886:
	mov r3, #0xb8
	mov r5, #0xf
_021E788A:
	ldr r7, _021E78A8 ; =0x00000449
	mov r2, #1
	ldrb r4, [r6, r7]
	eor r2, r4
	strb r2, [r6, r7]
	str r5, [sp]
	ldr r4, [r0, #0x34]
	sub r2, r7, #1
	ldrsb r2, [r4, r2]
	bl ov14_021E7808
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E78A4: .word 0x00000448
_021E78A8: .word 0x00000449
	thumb_func_end ov14_021E783C

	thumb_func_start ov14_021E78AC
ov14_021E78AC: ; 0x021E78AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	ldr r0, [r5, #0x34]
	ldr r1, _021E7928 ; =0x00000449
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021E78C6
	mov r6, #0x97
	lsl r6, r6, #2
	mov r4, #0xe
	b _021E78CA
_021E78C6:
	mov r6, #0xb8
	mov r4, #0xf
_021E78CA:
	ldr r1, _021E7928 ; =0x00000449
	ldr r3, _021E7928 ; =0x00000449
	ldrb r2, [r0, r1]
	mov r1, #1
	sub r3, r3, #1
	eor r2, r1
	ldr r1, _021E7928 ; =0x00000449
	strb r2, [r0, r1]
	ldr r2, [r5, #0x34]
	add r0, r5, #0
	ldrsb r2, [r2, r3]
	add r1, r7, #0
	add r3, r6, #0
	bl ov14_021E76D0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r4, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, #0x34]
	add r2, r7, #0
	ldr r0, [r0, #0x18]
	mov r1, #0x13
	add r2, #0x28
	mov r3, #0xa
	bl PaletteData_LoadNarc
	str r4, [sp]
	ldr r3, [r5, #0x34]
	ldr r2, _021E792C ; =0x00000448
	add r0, r5, #0
	ldrsb r2, [r3, r2]
	add r1, r7, #0
	add r3, r6, #0
	bl ov14_021E7740
	ldr r0, [r5, #0x34]
	mov r1, #3
	ldr r0, [r0, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E7928: .word 0x00000449
_021E792C: .word 0x00000448
	thumb_func_end ov14_021E78AC

	thumb_func_start ov14_021E7930
ov14_021E7930: ; 0x021E7930
	push {r3, lr}
	ldr r0, [r0, #4]
	bl PCStorage_GetBoxWallpaper
	cmp r0, #0x10
	blo _021E793E
	sub r0, #0x10
_021E793E:
	pop {r3, pc}
	thumb_func_end ov14_021E7930

	thumb_func_start ov14_021E7940
ov14_021E7940: ; 0x021E7940
	ldrb r3, [r2]
	cmp r0, r3
	blt _021E795C
	ldrb r3, [r2, #1]
	cmp r0, r3
	bgt _021E795C
	ldrb r0, [r2, #2]
	cmp r1, r0
	blt _021E795C
	ldrb r0, [r2, #3]
	cmp r1, r0
	bge _021E795C
	mov r0, #1
	bx lr
_021E795C:
	mov r0, #0
	bx lr
	thumb_func_end ov14_021E7940

	thumb_func_start ov14_021E7960
ov14_021E7960: ; 0x021E7960
	push {r3, r4, r5, lr}
	ldr r2, _021E79A8 ; =_021F7BBC
	add r5, r0, #0
	add r4, r1, #0
	bl ov14_021E7940
	cmp r0, #1
	bne _021E79A4
	cmp r5, #0xc
	bge _021E7978
	mov r5, #0
	b _021E798E
_021E7978:
	cmp r5, #0x9c
	blt _021E7980
	mov r5, #5
	b _021E798E
_021E7980:
	sub r5, #0xc
	add r0, r5, #0
	mov r1, #0x18
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_021E798E:
	sub r4, #0x28
	add r0, r4, #0
	mov r1, #0x18
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #6
	mul r0, r1
	add r0, r5, r0
	pop {r3, r4, r5, pc}
_021E79A4:
	mov r0, #0xff
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E79A8: .word _021F7BBC
	thumb_func_end ov14_021E7960

	thumb_func_start ov14_021E79AC
ov14_021E79AC: ; 0x021E79AC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	mov r4, #0
_021E79B6:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov14_021E7940
	cmp r0, #1
	bne _021E79CA
	add r4, #0x1e
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E79CA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _021E79B6
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E79AC

	thumb_func_start ov14_021E79D8
ov14_021E79D8: ; 0x021E79D8
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021E7A04 ; =ov14_021F7BD8
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
_021E79E2:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov14_021E7940
	cmp r0, #1
	bne _021E79F6
	add r4, #0x80
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E79F6:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _021E79E2
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7A04: .word ov14_021F7BD8
	thumb_func_end ov14_021E79D8

	thumb_func_start ov14_021E7A08
ov14_021E7A08: ; 0x021E7A08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	ldr r1, [r0, #0x34]
	mov r0, #0xca
	lsl r0, r0, #2
	add r5, r2, #0
	ldr r4, [r1, #0xc]
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r1, #2
	add r2, sp, #4
	add r6, r3, #0
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	add r3, r6, #0
	bl ov14_021F2F88
	ldr r0, [sp, #0x20]
	add r1, sp, #0
	cmp r0, #1
	bne _021E7A4C
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #8
	strh r0, [r1, #2]
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r0, #8
	b _021E7A52
_021E7A4C:
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r0, r0, #4
_021E7A52:
	strh r0, [r1]
	strh r5, [r4]
	strh r7, [r4, #2]
	ldr r2, [r4, #0x18]
	mov r0, #3
	and r0, r2
	str r0, [r4, #0x18]
	str r6, [r4, #4]
	add r3, sp, #0
	mov r0, #2
	mov r2, #6
	add r1, r4, #0
	ldrsh r0, [r3, r0]
	ldrsh r2, [r3, r2]
	add r1, #0x18
	cmp r2, r0
	ldr r5, [r1]
	ble _021E7A84
	mov r3, #1
	bic r5, r3
	mov r3, #1
	orr r3, r5
	str r3, [r1]
	sub r0, r2, r0
	b _021E7A8C
_021E7A84:
	mov r3, #1
	bic r5, r3
	str r5, [r1]
	sub r0, r0, r2
_021E7A8C:
	lsl r1, r0, #8
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x10]
	add r3, sp, #0
	mov r0, #0
	mov r1, #4
	ldrsh r0, [r3, r0]
	ldrsh r1, [r3, r1]
	cmp r1, r0
	ldr r5, [r4, #0x18]
	ble _021E7AB2
	mov r3, #2
	orr r3, r5
	str r3, [r4, #0x18]
	sub r0, r1, r0
	b _021E7ABA
_021E7AB2:
	mov r3, #2
	bic r5, r3
	str r5, [r4, #0x18]
	sub r0, r0, r1
_021E7ABA:
	lsl r3, r0, #8
	asr r0, r3, #2
	lsr r0, r0, #0x1d
	add r0, r3, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	lsl r0, r2, #8
	str r0, [r4, #8]
	lsl r0, r1, #8
	str r0, [r4, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7A08

	thumb_func_start ov14_021E7AD4
ov14_021E7AD4: ; 0x021E7AD4
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #1
	str r4, [sp]
	bl ov14_021E7A08
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E7AD4

	thumb_func_start ov14_021E7AE4
ov14_021E7AE4: ; 0x021E7AE4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	add r3, r2, #0
	ldr r2, [r0, #0x34]
	ldr r1, _021E7B00 ; =0x0000044C
	ldrb r1, [r2, r1]
	add r2, r4, #0
	bl ov14_021E7A08
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021E7B00: .word 0x0000044C
	thumb_func_end ov14_021E7AE4

	thumb_func_start ov14_021E7B04
ov14_021E7B04: ; 0x021E7B04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r4, [r0, #0xc]
	ldr r2, [r4, #0x18]
	lsr r3, r2, #2
	cmp r3, #8
	bne _021E7B32
	cmp r1, #1
	ldrh r1, [r4]
	bne _021E7B22
	ldr r2, [r4, #4]
	bl ov14_021F396C
	b _021E7B28
_021E7B22:
	ldr r2, [r4, #4]
	bl ov14_021F39A0
_021E7B28:
	ldr r0, [r5, #0x34]
	bl ov14_021F3B5C
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7B32:
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1f
	ldr r1, [r4, #8]
	bne _021E7B40
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	b _021E7B44
_021E7B40:
	ldr r0, [r4, #0x10]
	sub r0, r1, r0
_021E7B44:
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E7B56
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	b _021E7B5A
_021E7B56:
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
_021E7B5A:
	str r0, [r4, #0xc]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r5, #0x34]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	ldr r0, [r5, #0x34]
	bl ov14_021F3B5C
	ldr r1, [r4, #0x18]
	mov r0, #3
	add r2, r1, #0
	and r2, r0
	lsr r0, r1, #2
	add r0, r0, #1
	lsl r0, r0, #2
	orr r0, r2
	str r0, [r4, #0x18]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7B04

	thumb_func_start ov14_021E7B8C
ov14_021E7B8C: ; 0x021E7B8C
	ldr r3, _021E7B94 ; =ov14_021E7B04
	mov r1, #1
	bx r3
	nop
_021E7B94: .word ov14_021E7B04
	thumb_func_end ov14_021E7B8C

	thumb_func_start ov14_021E7B98
ov14_021E7B98: ; 0x021E7B98
	ldr r3, _021E7BA0 ; =ov14_021E7B04
	mov r1, #0
	bx r3
	nop
_021E7BA0: .word ov14_021E7B04
	thumb_func_end ov14_021E7B98

	thumb_func_start ov14_021E7BA4
ov14_021E7BA4: ; 0x021E7BA4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #2
	ldr r0, [r0, #0x14]
	mov r2, #0x11
	mov r3, #0xa
	bl sub_0201956C
	mov r1, #0x2f
	ldr r2, [r4, #0x34]
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #7
	str r0, [sp]
	ldr r0, [r4, #0x34]
	mov r2, #1
	ldr r0, [r0, r1]
	mov r1, #0xd
	mov r3, #0x20
	bl sub_020195F4
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	add r2, r1, #0
	mov r3, #0xb
	bl sub_020195F4
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	mov r2, #0
	mov r3, #0xb
	bl sub_020195F4
	mov r0, #6
	str r0, [sp]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xc
	mov r2, #0
	mov r3, #0xb
	bl sub_020195F4
	ldr r0, [r4, #0x34]
	bl ov14_021F6244
	ldr r0, [r4, #0x34]
	bl ov14_021F62CC
	ldr r0, [r4, #0x34]
	bl ov14_021F62E4
	ldr r0, [r4, #0x34]
	bl ov14_021F62FC
	add r0, r4, #0
	bl ov14_021F6314
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021E7C62
	mov r0, #7
	str r0, [sp]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	mov r3, #0x20
	bl sub_020195F4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	mov r2, #0xc
	bl ov14_021E7D8C
	b _021E7C88
_021E7C62:
	mov r0, #6
	str r0, [sp]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	mov r2, #1
	mov r3, #0x20
	bl sub_020195F4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	mov r2, #0xb
	bl ov14_021E7D8C
_021E7C88:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xd
	add r2, r1, #0
	bl ov14_021E7D8C
	ldr r0, [r4]
	ldr r1, [r4, #0x34]
	ldr r0, [r0, #8]
	cmp r0, #1
	bhi _021E7CB2
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	mov r2, #9
	bl ov14_021E7D8C
	b _021E7CC4
_021E7CB2:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov14_021E81A8
	ldr r0, [r4, #0x34]
	bl ov14_021F63F0
_021E7CC4:
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021E7D06
	mov r0, #9
	str r0, [sp]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x10
	mov r2, #6
	mov r3, #0x20
	bl sub_020195F4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x18
	bl sub_020196E8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x10
	mov r2, #0x55
	bl ov14_021E7D8C
	b _021E7D3E
_021E7D06:
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x10
	mov r2, #6
	mov r3, #0xc
	bl sub_020195F4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x10
	mov r2, #0x20
	mov r3, #0xc
	bl sub_020196E8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x10
	mov r2, #0x56
	bl ov14_021E7D8C
_021E7D3E:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	mov r2, #0xa
	bl ov14_021E7D8C
	ldr r0, [r4, #0x34]
	bl ov14_021F63C8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8394
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85AC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8600
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E7BA4

	thumb_func_start ov14_021E7D7C
ov14_021E7D7C: ; 0x021E7D7C
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r3, _021E7D88 ; =sub_020195C0
	ldr r0, [r0, r1]
	bx r3
	nop
_021E7D88: .word sub_020195C0
	thumb_func_end ov14_021E7D7C

	thumb_func_start ov14_021E7D8C
ov14_021E7D8C: ; 0x021E7D8C
	push {r3, lr}
	add r3, r2, #0
	mov r2, #1
	str r2, [sp]
	mov r2, #0x13
	bl sub_02019688
	pop {r3, pc}
	thumb_func_end ov14_021E7D8C

	thumb_func_start ov14_021E7D9C
ov14_021E7D9C: ; 0x021E7D9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_02019B08
	lsr r2, r4, #1
	lsl r1, r2, #1
	add r1, r2, r1
	add r1, r1, #2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xb
	mul r1, r2
	lsl r1, r1, #1
	add r1, r0, r1
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r0, #3
	lsl r0, r0, #0x18
	ldr r3, [r5, #0x34]
	ldr r2, _021E7DF4 ; =0x000040C0
	lsr r0, r0, #0x17
	ldr r3, [r3, r2]
	mov r2, #1
	lsl r2, r4
	tst r2, r3
	bne _021E7DE0
	add r4, #0xb
	b _021E7DE2
_021E7DE0:
	add r4, #0x2b
_021E7DE2:
	lsl r2, r4, #0x10
	lsr r4, r2, #0x10
	mov r2, #0xf
	ldrh r3, [r1, r0]
	lsl r2, r2, #0xc
	and r2, r3
	add r2, r2, r4
	strh r2, [r1, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7DF4: .word 0x000040C0
	thumb_func_end ov14_021E7D9C

	thumb_func_start ov14_021E7DF8
ov14_021E7DF8: ; 0x021E7DF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E7DFE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E7D9C
	add r4, r4, #1
	cmp r4, #6
	blo _021E7DFE
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7DF8

	thumb_func_start ov14_021E7E10
ov14_021E7E10: ; 0x021E7E10
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r5, [r4, #0x34]
	ldr r6, _021E7E3C ; =0x000040C0
	mov r2, #1
	ldr r3, [r5, r6]
	lsl r2, r1
	eor r2, r3
	str r2, [r5, r6]
	bl ov14_021E7D9C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	mov r2, #0x15
	mov r3, #6
	bl sub_020196E8
	pop {r4, r5, r6, pc}
	nop
_021E7E3C: .word 0x000040C0
	thumb_func_end ov14_021E7E10

	thumb_func_start ov14_021E7E40
ov14_021E7E40: ; 0x021E7E40
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #2
	mov r2, #0x15
	mov r3, #0x18
	add r4, r0, #0
	bl sub_020196E8
	mov r0, #0x12
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	sub r3, r2, #1
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E7E40

	thumb_func_start ov14_021E7E64
ov14_021E7E64: ; 0x021E7E64
	push {r3, lr}
	mov r1, #0x12
	str r1, [sp]
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7E64

	thumb_func_start ov14_021E7E78
ov14_021E7E78: ; 0x021E7E78
	push {r3, lr}
	mov r1, #1
	mov r2, #2
	mov r3, #6
	bl sub_020196E8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7E78

	thumb_func_start ov14_021E7E88
ov14_021E7E88: ; 0x021E7E88
	push {r3, lr}
	mov r1, #1
	mov r2, #0x15
	mov r3, #6
	bl sub_020196E8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7E88

	thumb_func_start ov14_021E7E98
ov14_021E7E98: ; 0x021E7E98
	push {r3, lr}
	sub sp, #0x10
	mov r1, #0x15
	str r1, [sp]
	mov r1, #0xb
	str r1, [sp, #4]
	mov r1, #0x12
	str r1, [sp, #8]
	mov r1, #0x10
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x14]
	mov r2, #0
	mov r3, #2
	bl FillBgTilemapRect
	add sp, #0x10
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7E98

	thumb_func_start ov14_021E7EC0
ov14_021E7EC0: ; 0x021E7EC0
	push {r3, lr}
	mov r1, #1
	mov r2, #2
	mov r3, #0x18
	bl sub_020196E8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7EC0

	thumb_func_start ov14_021E7ED0
ov14_021E7ED0: ; 0x021E7ED0
	push {r3, lr}
	mov r1, #1
	mov r2, #0x15
	mov r3, #0x18
	bl sub_020196E8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7ED0

	thumb_func_start ov14_021E7EE0
ov14_021E7EE0: ; 0x021E7EE0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #1
	add r2, #1
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02019B1C
	add r0, sp, #4
	mov r2, #0
	ldrsb r0, [r0, r2]
	cmp r0, #6
	beq _021E7F46
	sub r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	sub r3, r1, #2
	bl sub_020198FC
	add r5, sp, #4
	mov r0, #1
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _021E7F46
	mov r3, #0
	ldrsb r3, [r5, r3]
	add r0, r4, #0
	mov r1, #0xa
	add r3, #0xf
	lsl r3, r3, #0x18
	mov r2, #0x18
	asr r3, r3, #0x18
	bl sub_020196E8
	mov r1, #0xa
	add r3, r1, #0
	add r0, r5, #0
	mov r2, #0
	ldrsb r0, [r0, r2]
	sub r3, #0xb
	sub r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r4, #0
	bl sub_020198FC
_021E7F46:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7EE0

	thumb_func_start ov14_021E7F4C
ov14_021E7F4C: ; 0x021E7F4C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #1
	add r2, #1
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02019B1C
	add r0, sp, #4
	mov r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0x18
	beq _021E7FB4
	mov r0, #0x18
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020198FC
	add r5, sp, #4
	mov r0, #1
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _021E7FB4
	mov r3, #0
	ldrsb r3, [r5, r3]
	add r0, r4, #0
	mov r1, #0xa
	add r3, #0xf
	lsl r3, r3, #0x18
	mov r2, #0x18
	asr r3, r3, #0x18
	bl sub_020196E8
	add r0, r5, #0
	mov r2, #0
	ldrsb r1, [r0, r2]
	mov r0, #0x18
	mov r3, #1
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020198FC
_021E7FB4:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E7F4C

	thumb_func_start ov14_021E7FB8
ov14_021E7FB8: ; 0x021E7FB8
	push {r4, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #1
	add r2, #1
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02019B1C
	add r0, sp, #4
	mov r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0x18
	beq _021E7FE8
	mov r0, #0x18
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020198FC
_021E7FE8:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov14_021E7FB8

	thumb_func_start ov14_021E7FEC
ov14_021E7FEC: ; 0x021E7FEC
	push {r4, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #1
	add r2, #1
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02019B1C
	add r0, sp, #4
	mov r2, #0
	ldrsb r0, [r0, r2]
	cmp r0, #6
	beq _021E801A
	sub r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	sub r3, r1, #2
	bl sub_020198FC
_021E801A:
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7FEC

	thumb_func_start ov14_021E8020
ov14_021E8020: ; 0x021E8020
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x13
	str r1, [sp]
	mov r1, #1
	add r2, r1, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_020198FC
	mov r0, #0x13
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E8020

	thumb_func_start ov14_021E8048
ov14_021E8048: ; 0x021E8048
	push {r3, lr}
	mov r1, #0x13
	str r1, [sp]
	mov r1, #1
	add r2, r1, #0
	mov r3, #0
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8048

	thumb_func_start ov14_021E805C
ov14_021E805C: ; 0x021E805C
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x13
	str r1, [sp]
	mov r1, #1
	add r4, r0, #0
	sub r2, r1, #2
	mov r3, #0
	bl sub_020198FC
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x2b
	mov r3, #0x15
	bl sub_020196E8
	mov r1, #0xa
	mov r0, #0x13
	add r2, r1, #0
	str r0, [sp]
	add r0, r4, #0
	sub r2, #0xb
	mov r3, #0
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E805C

	thumb_func_start ov14_021E8094
ov14_021E8094: ; 0x021E8094
	push {r3, lr}
	mov r1, #0x13
	str r1, [sp]
	mov r1, #1
	sub r2, r1, #2
	mov r3, #0
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8094

	thumb_func_start ov14_021E80A8
ov14_021E80A8: ; 0x021E80A8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r2, sp, #0
	add r3, sp, #0
	mov r1, #1
	add r2, #3
	add r3, #2
	bl sub_02019B1C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xf
	bl sub_02019978
	mov r0, #0x2f
	add r2, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	add r2, #1
	add r3, sp, #0
	bl sub_02019B1C
	add r0, sp, #0
	mov r1, #3
	ldrsb r2, [r0, r1]
	mov r1, #1
	ldrsb r1, [r0, r1]
	cmp r2, r1
	bne _021E8120
	mov r1, #2
	ldrsb r2, [r0, r1]
	mov r1, #0
	ldrsb r0, [r0, r1]
	cmp r2, r0
	beq _021E8126
_021E8120:
	add r0, r5, #0
	bl ov14_021F32E0
_021E8126:
	cmp r6, #0
	bne _021E8134
	cmp r4, #0
	bne _021E8134
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021E8134:
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021E80A8

	thumb_func_start ov14_021E813C
ov14_021E813C: ; 0x021E813C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r2, sp, #0
	add r3, sp, #0
	mov r1, #1
	add r2, #3
	add r3, #2
	bl sub_02019B1C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02019978
	add r4, r0, #0
	mov r0, #0x2f
	add r2, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	add r2, #1
	add r3, sp, #0
	bl sub_02019B1C
	add r1, sp, #0
	mov r0, #3
	ldrsb r2, [r1, r0]
	mov r0, #1
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bne _021E8194
	mov r0, #2
	ldrsb r2, [r1, r0]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	beq _021E819A
_021E8194:
	add r0, r5, #0
	bl ov14_021F32E0
_021E819A:
	cmp r4, #0
	beq _021E81A2
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E81A2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E813C

	thumb_func_start ov14_021E81A8
ov14_021E81A8: ; 0x021E81A8
	ldr r3, _021E81B0 ; =ov14_021E7D8C
	mov r2, #8
	bx r3
	nop
_021E81B0: .word ov14_021E7D8C
	thumb_func_end ov14_021E81A8

	thumb_func_start ov14_021E81B4
ov14_021E81B4: ; 0x021E81B4
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	mov r1, #0xd
	sub r3, r2, #7
	add r4, r0, #0
	bl sub_020196E8
	mov r0, #7
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	mov r3, #1
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E81B4

	thumb_func_start ov14_021E81D8
ov14_021E81D8: ; 0x021E81D8
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	mov r1, #0xd
	add r3, r2, #0
	add r4, r0, #0
	bl sub_020196E8
	mov r0, #7
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xd
	sub r3, r2, #1
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E81D8

	thumb_func_start ov14_021E81FC
ov14_021E81FC: ; 0x021E81FC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov14_021F5C84
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	mov r2, #0
	mov r3, #0x15
	bl sub_020196E8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E81FC

	thumb_func_start ov14_021E821C
ov14_021E821C: ; 0x021E821C
	push {r3, lr}
	ldr r1, [r0, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	mov r2, #0
	mov r3, #0x18
	bl sub_020196E8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E821C

	thumb_func_start ov14_021E8234
ov14_021E8234: ; 0x021E8234
	push {r3, lr}
	mov r1, #3
	str r1, [sp]
	mov r1, #8
	mov r2, #0
	mov r3, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8234

	thumb_func_start ov14_021E8248
ov14_021E8248: ; 0x021E8248
	push {r3, lr}
	mov r1, #3
	mov r2, #0
	str r1, [sp]
	mov r1, #8
	sub r3, r2, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8248

	thumb_func_start ov14_021E825C
ov14_021E825C: ; 0x021E825C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov14_021F5E94
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	mov r2, #0xc
	mov r3, #0x15
	bl sub_020196E8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E825C

	thumb_func_start ov14_021E827C
ov14_021E827C: ; 0x021E827C
	push {r3, lr}
	ldr r1, [r0, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	mov r2, #0xc
	mov r3, #0x18
	bl sub_020196E8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E827C

	thumb_func_start ov14_021E8294
ov14_021E8294: ; 0x021E8294
	push {r3, lr}
	mov r1, #3
	str r1, [sp]
	mov r1, #9
	mov r2, #0
	mov r3, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8294

	thumb_func_start ov14_021E82A8
ov14_021E82A8: ; 0x021E82A8
	push {r3, lr}
	mov r1, #3
	mov r2, #0
	str r1, [sp]
	mov r1, #9
	sub r3, r2, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E82A8

	thumb_func_start ov14_021E82BC
ov14_021E82BC: ; 0x021E82BC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov14_021F5EB4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	mov r2, #0x18
	mov r3, #0x15
	bl sub_020196E8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E82BC

	thumb_func_start ov14_021E82DC
ov14_021E82DC: ; 0x021E82DC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov14_021F5EC4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	mov r2, #0x18
	mov r3, #0x15
	bl sub_020196E8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E82DC

	thumb_func_start ov14_021E82FC
ov14_021E82FC: ; 0x021E82FC
	push {r4, lr}
	mov r1, #0xa
	add r4, r0, #0
	bl sub_0201980C
	mov r2, #0x18
	add r0, r4, #0
	mov r1, #0xa
	add r3, r2, #0
	bl sub_020196E8
	pop {r4, pc}
	thumb_func_end ov14_021E82FC

	thumb_func_start ov14_021E8314
ov14_021E8314: ; 0x021E8314
	push {r3, lr}
	mov r1, #3
	str r1, [sp]
	mov r1, #0xa
	mov r2, #0
	mov r3, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8314

	thumb_func_start ov14_021E8328
ov14_021E8328: ; 0x021E8328
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0x18
	mov r1, #0xa
	add r3, r2, #0
	add r4, r0, #0
	bl sub_020196E8
	mov r0, #3
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	sub r3, r2, #1
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E8328

	thumb_func_start ov14_021E834C
ov14_021E834C: ; 0x021E834C
	push {r3, lr}
	add r2, sp, #0
	mov r1, #0xb
	add r2, #1
	add r3, sp, #0
	bl sub_02019B1C
	add r1, sp, #0
	mov r0, #0
	ldrsb r1, [r1, r0]
	cmp r1, #0x15
	bne _021E8366
	mov r0, #1
_021E8366:
	pop {r3, pc}
	thumb_func_end ov14_021E834C

	thumb_func_start ov14_021E8368
ov14_021E8368: ; 0x021E8368
	push {r4, lr}
	add r4, r0, #0
	mov r1, #8
	bl sub_0201980C
	add r0, r4, #0
	mov r1, #9
	bl sub_0201980C
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	mov r3, #0x18
	bl sub_020196E8
	add r0, r4, #0
	mov r1, #9
	mov r2, #0xc
	mov r3, #0x18
	bl sub_020196E8
	pop {r4, pc}
	thumb_func_end ov14_021E8368

	thumb_func_start ov14_021E8394
ov14_021E8394: ; 0x021E8394
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	mov r5, #5
	mov r7, #0x20
_021E839E:
	lsl r3, r5, #0x18
	add r0, r6, #0
	add r1, r4, #3
	add r2, r7, #0
	asr r3, r3, #0x18
	bl sub_020196E8
	add r4, r4, #1
	add r5, r5, #3
	cmp r4, #5
	blo _021E839E
	mov r2, #0x18
	add r0, r6, #0
	mov r1, #0xb
	add r3, r2, #0
	bl sub_020196E8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8394

	thumb_func_start ov14_021E83C4
ov14_021E83C4: ; 0x021E83C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	mov r5, #5
	mov r7, #0x15
_021E83CE:
	lsl r3, r5, #0x18
	add r0, r6, #0
	add r1, r4, #3
	add r2, r7, #0
	asr r3, r3, #0x18
	bl sub_020196E8
	add r4, r4, #1
	add r5, r5, #3
	cmp r4, #5
	blo _021E83CE
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0x18
	mov r3, #0x15
	bl sub_020196E8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E83C4

	thumb_func_start ov14_021E83F4
ov14_021E83F4: ; 0x021E83F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	mov r5, #5
	mov r7, #0x20
_021E83FE:
	add r0, r6, #0
	add r1, r4, #3
	bl sub_0201980C
	lsl r3, r5, #0x18
	add r0, r6, #0
	add r1, r4, #3
	add r2, r7, #0
	asr r3, r3, #0x18
	bl sub_020196E8
	add r4, r4, #1
	add r5, r5, #3
	cmp r4, #5
	blo _021E83FE
	add r0, r6, #0
	mov r1, #0xb
	bl sub_0201980C
	mov r2, #0x18
	add r0, r6, #0
	mov r1, #0xb
	add r3, r2, #0
	bl sub_020196E8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E83F4

	thumb_func_start ov14_021E8434
ov14_021E8434: ; 0x021E8434
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #3
	add r2, #1
	add r3, sp, #4
	add r5, r0, #0
	bl sub_02019B1C
	add r6, sp, #4
	mov r0, #1
	ldrsb r0, [r6, r0]
	cmp r0, #0x15
	beq _021E849E
	mov r4, #0
	mov r7, #1
_021E8454:
	ldrsb r0, [r6, r7]
	mov r2, #0
	add r1, r4, #3
	sub r0, #0x15
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	mvn r2, r2
	mov r3, #0
	bl sub_020198FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _021E8454
	add r2, sp, #4
	add r0, r5, #0
	mov r1, #0xb
	add r2, #1
	add r3, sp, #4
	bl sub_02019B1C
	mov r1, #0xb
	add r3, r1, #0
	add r0, sp, #4
	mov r2, #0
	ldrsb r0, [r0, r2]
	sub r3, #0xc
	sub r0, #0x15
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	bl sub_020198FC
_021E849E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8434

	thumb_func_start ov14_021E84A4
ov14_021E84A4: ; 0x021E84A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #3
	add r2, #1
	add r3, sp, #4
	add r5, r0, #0
	bl sub_02019B1C
	add r6, sp, #4
	mov r0, #1
	ldrsb r0, [r6, r0]
	cmp r0, #0x20
	beq _021E850E
	mov r4, #0
	mov r7, #0x20
_021E84C4:
	mov r0, #1
	ldrsb r0, [r6, r0]
	add r1, r4, #3
	mov r2, #1
	sub r0, r7, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0
	bl sub_020198FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _021E84C4
	add r2, sp, #4
	add r0, r5, #0
	mov r1, #0xb
	add r2, #1
	add r3, sp, #4
	bl sub_02019B1C
	add r0, sp, #4
	mov r2, #0
	ldrsb r1, [r0, r2]
	mov r0, #0x18
	mov r3, #1
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xb
	bl sub_020198FC
_021E850E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E84A4

	thumb_func_start ov14_021E8514
ov14_021E8514: ; 0x021E8514
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	mov r7, #1
_021E851E:
	add r0, r5, #0
	add r1, r4, #3
	bl sub_02019978
	cmp r0, #1
	bne _021E852C
	add r6, r7, #0
_021E852C:
	add r4, r4, #1
	cmp r4, #5
	blo _021E851E
	add r0, r5, #0
	mov r1, #0xb
	bl sub_02019978
	cmp r0, #1
	bne _021E8540
	mov r6, #1
_021E8540:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021E8514

	thumb_func_start ov14_021E8544
ov14_021E8544: ; 0x021E8544
	push {r3, lr}
	add r2, sp, #0
	mov r1, #3
	add r2, #1
	add r3, sp, #0
	bl sub_02019B1C
	add r1, sp, #0
	mov r0, #1
	ldrsb r1, [r1, r0]
	cmp r1, #0x20
	bne _021E855E
	mov r0, #0
_021E855E:
	pop {r3, pc}
	thumb_func_end ov14_021E8544

	thumb_func_start ov14_021E8560
ov14_021E8560: ; 0x021E8560
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xc
	mov r2, #0x20
	mov r3, #0xe
	add r4, r0, #0
	bl sub_020196E8
	mov r1, #0xc
	mov r0, #0xb
	add r2, r1, #0
	str r0, [sp]
	add r0, r4, #0
	sub r2, #0xd
	mov r3, #0
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8560

	thumb_func_start ov14_021E8588
ov14_021E8588: ; 0x021E8588
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xc
	mov r2, #0x15
	mov r3, #0xe
	add r4, r0, #0
	bl sub_020196E8
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #1
	mov r3, #0
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E8588

	thumb_func_start ov14_021E85AC
ov14_021E85AC: ; 0x021E85AC
	push {r3, lr}
	mov r1, #0xe
	mov r2, #0
	mov r3, #0x18
	bl sub_020196E8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E85AC

	thumb_func_start ov14_021E85BC
ov14_021E85BC: ; 0x021E85BC
	push {r3, lr}
	mov r1, #3
	mov r2, #0
	str r1, [sp]
	mov r1, #0xe
	sub r3, r2, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E85BC

	thumb_func_start ov14_021E85D0
ov14_021E85D0: ; 0x021E85D0
	push {r3, lr}
	mov r1, #3
	str r1, [sp]
	mov r1, #0xe
	mov r2, #0
	mov r3, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E85D0

	thumb_func_start ov14_021E85E4
ov14_021E85E4: ; 0x021E85E4
	push {r3, lr}
	add r2, sp, #0
	mov r1, #0xe
	add r2, #1
	add r3, sp, #0
	bl sub_02019B1C
	add r1, sp, #0
	mov r0, #0
	ldrsb r1, [r1, r0]
	cmp r1, #0x15
	bne _021E85FE
	mov r0, #1
_021E85FE:
	pop {r3, pc}
	thumb_func_end ov14_021E85E4

	thumb_func_start ov14_021E8600
ov14_021E8600: ; 0x021E8600
	push {r3, lr}
	mov r1, #0xf
	mov r2, #0
	mov r3, #0x18
	bl sub_020196E8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8600

	thumb_func_start ov14_021E8610
ov14_021E8610: ; 0x021E8610
	push {r3, lr}
	mov r1, #0xf
	mov r2, #0
	mov r3, #0x15
	bl sub_020196E8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8610

	thumb_func_start ov14_021E8620
ov14_021E8620: ; 0x021E8620
	push {r3, lr}
	mov r1, #3
	mov r2, #0
	str r1, [sp]
	mov r1, #0xf
	sub r3, r2, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8620

	thumb_func_start ov14_021E8634
ov14_021E8634: ; 0x021E8634
	push {r3, lr}
	mov r1, #3
	str r1, [sp]
	mov r1, #0xf
	mov r2, #0
	mov r3, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8634

	thumb_func_start ov14_021E8648
ov14_021E8648: ; 0x021E8648
	push {r3, lr}
	add r2, sp, #0
	mov r1, #0xf
	add r2, #1
	add r3, sp, #0
	bl sub_02019B1C
	add r1, sp, #0
	mov r0, #0
	ldrsb r1, [r1, r0]
	cmp r1, #0x15
	bne _021E8662
	mov r0, #1
_021E8662:
	pop {r3, pc}
	thumb_func_end ov14_021E8648

	thumb_func_start ov14_021E8664
ov14_021E8664: ; 0x021E8664
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E82DC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_0201980C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_0201980C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	mov r2, #0
	mov r3, #0x18
	bl sub_020196E8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	mov r2, #0xc
	mov r3, #0x18
	bl sub_020196E8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020196E8
	add r0, r4, #0
	bl ov14_021F57B8
	add r0, r4, #0
	bl ov14_021F4720
	add r0, r4, #0
	bl ov14_021F4848
	add r0, r4, #0
	bl ov14_021F48B4
	add r0, r4, #0
	mov r1, #0x30
	bl ov14_021F47B8
	pop {r4, pc}
	thumb_func_end ov14_021E8664

	thumb_func_start ov14_021E86E0
ov14_021E86E0: ; 0x021E86E0
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0
	add r2, r1, #0
	sub r3, r1, #6
	add r4, r0, #0
	bl sub_020196E8
	mov r0, #6
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E86E0

	thumb_func_start ov14_021E8704
ov14_021E8704: ; 0x021E8704
	push {r3, lr}
	mov r1, #6
	str r1, [sp]
	mov r1, #0
	add r2, r1, #0
	sub r3, r1, #1
	bl sub_020198FC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8704

	thumb_func_start ov14_021E8718
ov14_021E8718: ; 0x021E8718
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xc
	mov r2, #0x15
	mov r3, #8
	bl sub_020196E8
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x15
	mov r3, #0xe
	bl sub_020196E8
	add r0, r4, #0
	mov r1, #7
	mov r2, #0x15
	mov r3, #0x11
	bl sub_020196E8
	pop {r4, pc}
	thumb_func_end ov14_021E8718

	thumb_func_start ov14_021E8740
ov14_021E8740: ; 0x021E8740
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E8664
	add r0, r4, #0
	bl ov14_021F6070
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8718
	pop {r4, pc}
	thumb_func_end ov14_021E8740

	thumb_func_start ov14_021E875C
ov14_021E875C: ; 0x021E875C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #0xc
	mov r2, #0x20
	mov r3, #8
	bl sub_020196E8
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x20
	mov r3, #0xe
	bl sub_020196E8
	add r0, r4, #0
	mov r1, #7
	mov r2, #0x20
	mov r3, #0x11
	bl sub_020196E8
	mov r1, #0xc
	mov r0, #0xb
	add r2, r1, #0
	str r0, [sp]
	add r0, r4, #0
	sub r2, #0xd
	mov r3, #0
	bl sub_020198FC
	mov r0, #0xb
	mov r1, #6
	str r0, [sp]
	add r0, r4, #0
	sub r2, r1, #7
	mov r3, #0
	bl sub_020198FC
	mov r1, #7
	mov r0, #0xb
	add r2, r1, #0
	str r0, [sp]
	add r0, r4, #0
	sub r2, #8
	mov r3, #0
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E875C

	thumb_func_start ov14_021E87BC
ov14_021E87BC: ; 0x021E87BC
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xb
	str r1, [sp]
	mov r1, #0xc
	mov r2, #1
	mov r3, #0
	add r4, r0, #0
	bl sub_020198FC
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	mov r2, #1
	mov r3, #0
	bl sub_020198FC
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	mov r3, #0
	bl sub_020198FC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E87BC

	thumb_func_start ov14_021E87F4
ov14_021E87F4: ; 0x021E87F4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_0201980C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_0201980C
	add r0, r4, #0
	bl ov14_021E821C
	add r0, r4, #0
	bl ov14_021E827C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E87F4

	thumb_func_start ov14_021E8824
ov14_021E8824: ; 0x021E8824
	push {r3, lr}
	ldr r1, _021E8848 ; =0x0000044E
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1d
	beq _021E8846
	mov r1, #0xc
	str r1, [sp]
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0x10
	add r2, r1, #0
	sub r2, #0x11
	mov r3, #0
	bl sub_020198FC
_021E8846:
	pop {r3, pc}
	.balign 4, 0
_021E8848: .word 0x0000044E
	thumb_func_end ov14_021E8824

	thumb_func_start ov14_021E884C
ov14_021E884C: ; 0x021E884C
	push {r3, lr}
	ldr r1, _021E8870 ; =0x0000044E
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1d
	beq _021E886C
	mov r1, #0xc
	str r1, [sp]
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0x10
	mov r2, #1
	mov r3, #0
	bl sub_020198FC
_021E886C:
	pop {r3, pc}
	nop
_021E8870: .word 0x0000044E
	thumb_func_end ov14_021E884C

	thumb_func_start ov14_021E8874
ov14_021E8874: ; 0x021E8874
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E88A0 ; =0x0000044E
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1d
	beq _021E889E
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x10
	bl sub_0201980C
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x10
	mov r2, #0x14
	mov r3, #0xc
	bl sub_020196E8
_021E889E:
	pop {r4, pc}
	.balign 4, 0
_021E88A0: .word 0x0000044E
	thumb_func_end ov14_021E8874

	thumb_func_start ov14_021E88A4
ov14_021E88A4: ; 0x021E88A4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x10
	bl sub_0201980C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0x20
	mov r3, #0xc
	bl sub_020196E8
	pop {r4, pc}
	thumb_func_end ov14_021E88A4

	thumb_func_start ov14_021E88BC
ov14_021E88BC: ; 0x021E88BC
	push {r4, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #0x10
	add r2, #1
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02019B1C
	add r0, sp, #4
	mov r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0xf
	beq _021E88F2
	mov r0, #0x18
	sub r1, r0, r1
	mov r0, #9
	sub r0, r0, r1
	lsl r0, r0, #0x18
	mov r1, #0x10
	lsr r0, r0, #0x18
	add r3, r1, #0
	str r0, [sp]
	add r0, r4, #0
	sub r3, #0x11
	bl sub_020198FC
_021E88F2:
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E88BC

	thumb_func_start ov14_021E88F8
ov14_021E88F8: ; 0x021E88F8
	push {r4, lr}
	sub sp, #8
	add r2, sp, #4
	mov r1, #0x10
	add r2, #1
	add r3, sp, #4
	add r4, r0, #0
	bl sub_02019B1C
	add r0, sp, #4
	mov r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0x18
	beq _021E8928
	mov r0, #0x18
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x10
	mov r3, #1
	bl sub_020198FC
_021E8928:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov14_021E88F8

	thumb_func_start ov14_021E892C
ov14_021E892C: ; 0x021E892C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x10
	bl sub_0201980C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0xf
	bl sub_020196E8
	pop {r4, pc}
	thumb_func_end ov14_021E892C

	thumb_func_start ov14_021E8944
ov14_021E8944: ; 0x021E8944
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x10
	bl sub_0201980C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x18
	bl sub_020196E8
	pop {r4, pc}
	thumb_func_end ov14_021E8944

	thumb_func_start ov14_021E895C
ov14_021E895C: ; 0x021E895C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r7, #1
_021E8968:
	add r0, r7, #0
	lsl r0, r4
	tst r0, r6
	beq _021E8976
	add r0, r4, #0
	add r0, #0x3a
	b _021E897A
_021E8976:
	add r0, r4, #0
	add r0, #0x1a
_021E897A:
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x34]
	add r3, r4, #0
	add r3, #0xf
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x14]
	mov r1, #5
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021E8968
	ldr r0, [r5, #0x34]
	mov r1, #5
	ldr r0, [r0, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E895C

	thumb_func_start ov14_021E89B8
ov14_021E89B8: ; 0x021E89B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #9
	mov r1, #0x3c
	bl Heap_Alloc
	str r0, [r5, #0x18]
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021E89EE
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	mov r2, #0
	bl ov14_021E60C0
	str r0, [r4]
	mov r0, #2
	strb r0, [r4, #0x11]
	mov r0, #0x1e
	strb r0, [r4, #0x13]
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	b _021E8A06
_021E89EE:
	ldr r0, [r5, #8]
	str r0, [r4]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldr r0, [r5, #8]
	bl Party_GetCount
	strb r0, [r4, #0x13]
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
_021E8A06:
	strb r0, [r4, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [r4, #4]
	ldr r0, [r5]
	ldr r0, [r0]
	bl Save_PlayerData_GetProfile
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208AD34
	mov r0, #0
	strb r0, [r4, #0x12]
	ldr r1, _021E8A74 ; =ov14_021F7D0C
	add r0, r4, #0
	bl sub_02089D40
	mov r0, #0
	strb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	strh r0, [r4, #0x18]
	ldr r0, [r5]
	ldr r0, [r0]
	bl SaveArray_IsNatDexEnabled
	str r0, [r4, #0x1c]
	ldr r0, [r5]
	ldr r0, [r0]
	bl Save_SpecialRibbons_Get
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_02088288
	str r0, [r4, #0x2c]
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0208828C
	str r0, [r4, #0x34]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #4]
	mov r2, #9
	str r0, [r4, #0x30]
	ldr r0, _021E8A78 ; =gOverlayTemplate_PokemonSummary
	bl OverlayManager_New
	str r0, [r5, #0x14]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E8A74: .word ov14_021F7D0C
_021E8A78: .word gOverlayTemplate_PokemonSummary
	thumb_func_end ov14_021E89B8

	thumb_func_start ov14_021E8A7C
ov14_021E8A7C: ; 0x021E8A7C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x27
	ldrb r1, [r1]
	ldr r0, [r4, #0x18]
	cmp r1, #0
	bne _021E8AA8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldrb r2, [r0, #0x14]
	cmp r1, #0x1e
	bhs _021E8AA0
	add r1, r4, #0
	add r1, #0x21
	strb r2, [r1]
	b _021E8AA8
_021E8AA0:
	add r1, r4, #0
	add r2, #0x1e
	add r1, #0x21
	strb r2, [r1]
_021E8AA8:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	cmp r1, #0x1e
	bhs _021E8AC0
	ldr r0, [r0, #0x38]
	cmp r0, #1
	bne _021E8AC0
	ldrb r1, [r4, #0x1f]
	ldr r0, [r4, #4]
	bl PCStorage_SetBoxModified
_021E8AC0:
	ldr r0, [r4, #0x18]
	bl Heap_Free
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8A7C

	thumb_func_start ov14_021E8ACC
ov14_021E8ACC: ; 0x021E8ACC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl Save_Bag_Get
	ldr r1, _021E8B10 ; =ov14_021F7D14
	mov r2, #9
	bl Bag_CreateView
	str r0, [r4, #0x18]
	ldr r1, [r4]
	mov r2, #1
	ldr r0, [r1, #4]
	mov r3, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, [r1]
	bl sub_0207789C
	ldr r0, _021E8B14 ; =FS_OVERLAY_ID(OVY_15)
	mov r1, #2
	bl HandleLoadOverlay
	ldr r0, _021E8B18 ; =ov15_022008B8
	ldr r1, [r4, #0x18]
	mov r2, #9
	bl OverlayManager_New
	str r0, [r4, #0x14]
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021E8B10: .word ov14_021F7D14
_021E8B14: .word FS_OVERLAY_ID(OVY_15)
_021E8B18: .word ov15_022008B8
	thumb_func_end ov14_021E8ACC

	thumb_func_start ov14_021E8B1C
ov14_021E8B1C: ; 0x021E8B1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E8B38 ; =FS_OVERLAY_ID(OVY_15)
	bl UnloadOverlayByID
	ldr r0, [r4, #0x18]
	bl BagView_GetItemId
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	bl Heap_Free
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E8B38: .word FS_OVERLAY_ID(OVY_15)
	thumb_func_end ov14_021E8B1C

	thumb_func_start ov14_021E8B3C
ov14_021E8B3C: ; 0x021E8B3C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	str r0, [sp]
	ldr r0, [r4]
	mov r2, #0
	ldr r0, [r0, #4]
	mov r3, #8
	str r0, [sp, #4]
	mov r0, #9
	bl NamingScreen_CreateArgs
	str r0, [r4, #0x18]
	add r1, r4, #0
	add r1, #0x25
	ldr r2, [r4, #0x18]
	ldrb r1, [r1]
	ldr r0, [r4, #4]
	ldr r2, [r2, #0x18]
	bl PCStorage_GetBoxName
	ldr r0, _021E8B7C ; =gOverlayTemplate_NamingScreen
	ldr r1, [r4, #0x18]
	mov r2, #9
	bl OverlayManager_New
	str r0, [r4, #0x14]
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021E8B7C: .word gOverlayTemplate_NamingScreen
	thumb_func_end ov14_021E8B3C

	thumb_func_start ov14_021E8B80
ov14_021E8B80: ; 0x021E8B80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	ldr r4, [r5, #0x18]
	add r1, #0x25
	ldrb r1, [r1]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x18]
	bl PCStorage_SetBoxName
	ldr r0, [r4, #0x14]
	strh r0, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	bl NamingScreen_DeleteArgs
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8B80

	thumb_func_start ov14_021E8BA4
ov14_021E8BA4: ; 0x021E8BA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x2f
	ldr r4, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov14_021E8514
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	str r0, [sp]
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	str r0, [sp, #4]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021E8BF4
	cmp r0, #1
	beq _021E8CCC
	b _021E8D0C
_021E8BF4:
	add r0, sp, #0xc
	add r1, sp, #8
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021E8C86
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	mov r6, #0xff
	cmp r0, #0
	beq _021E8C24
	ldr r1, [r5, #0x34]
	ldr r2, _021E8D14 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79D8
	add r6, r0, #0
_021E8C24:
	cmp r6, #0xff
	bne _021E8C40
	ldr r1, [r5, #0x34]
	ldr r2, _021E8D14 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	add r6, r0, #0
_021E8C40:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	add r2, r6, #0
	bl ov14_021E6CF8
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F40E8
	mov r0, #0x80
	tst r0, r6
	bne _021E8C6E
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov14_021E70B0
	add r1, r5, #0
	add r1, #0x21
	strb r0, [r1]
_021E8C6E:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	ldr r0, [r5, #0x34]
	bl ov14_021E8824
	mov r0, #1
	strh r0, [r4, #0x10]
	b _021E8D0C
_021E8C86:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	add r2, r0, r1
	ldr r1, _021E8D18 ; =0x00004094
	ldrb r1, [r2, r1]
	ldr r2, [sp, #8]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	lsl r2, r2, #0x10
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	asr r2, r2, #0x10
	sub r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r5, #0
	bl ov14_021F4174
	ldr r2, [sp, #0xc]
	ldr r1, [r5, #0x34]
	ldr r0, _021E8D14 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp, #8]
	ldr r1, [r5, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021E8D0C
_021E8CCC:
	add r0, r5, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E8D0C
	cmp r6, #0
	bne _021E8D0C
	cmp r7, #0
	bne _021E8D0C
	ldr r0, [sp]
	cmp r0, #0
	bne _021E8D0C
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021E8D0C
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ov14_021E7148
	add r0, r5, #0
	bl ov14_021F4174
	ldr r2, [r5, #0x34]
	ldr r1, _021E8D1C ; =0x000040C4
	add r0, r5, #0
	ldr r1, [r2, r1]
	bl ov14_021F40E8
	mov r0, #0
	add sp, #0x10
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021E8D0C:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E8D14: .word 0x000040B8
_021E8D18: .word 0x00004094
_021E8D1C: .word 0x000040C4
	thumb_func_end ov14_021E8BA4

	thumb_func_start ov14_021E8D20
ov14_021E8D20: ; 0x021E8D20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r7, r0, #0
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	bne _021E8D5C
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r2, r0, r1
	ldr r1, _021E8FC0 ; =0x00004094
	ldrb r1, [r2, r1]
	add r2, sp, #0
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ManagedSprite_GetPositionXY
_021E8D5C:
	add r0, r4, #0
	bl ov14_021E80A8
	add r6, r0, #0
	ldrh r0, [r5, #0x10]
	cmp r0, #5
	bls _021E8D6C
	b _021E8FB8
_021E8D6C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8D78: ; jump table
	.short _021E8D84 - _021E8D78 - 2 ; case 0
	.short _021E8F1E - _021E8D78 - 2 ; case 1
	.short _021E8F1E - _021E8D78 - 2 ; case 2
	.short _021E8F62 - _021E8D78 - 2 ; case 3
	.short _021E8F96 - _021E8D78 - 2 ; case 4
	.short _021E8FA0 - _021E8D78 - 2 ; case 5
_021E8D84:
	ldr r0, [r4, #0x34]
	ldr r1, _021E8FC4 ; =0x0000044A
	ldrb r2, [r0, r1]
	cmp r2, #1
	bne _021E8DA8
	cmp r6, #0
	bne _021E8DA8
	mov r2, #2
	strb r2, [r0, r1]
	add r0, r4, #0
	mov r1, #0x28
	bl ov14_021F69F0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
_021E8DA8:
	add r0, sp, #8
	add r1, sp, #4
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021E8EA8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r3, sp, #0
	add r2, r0, r1
	ldr r1, _021E8FC0 ; =0x00004094
	ldrb r1, [r2, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r3, r1]
	bl ManagedSprite_SetPositionXY
	ldr r1, [r4, #0x34]
	ldr r0, _021E8FC4 ; =0x0000044A
	ldr r2, _021E8FC8 ; =0x000040B8
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021E8DFA
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	b _021E8E0E
_021E8DFA:
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _021E8FCC ; =ov14_021F7BF0
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79AC
_021E8E0E:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r2, r0, #0
	add r0, r4, #0
	bl ov14_021E6CF8
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E70B0
	add r1, r4, #0
	add r1, #0x21
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021E8E44
	mov r2, #0
	b _021E8E46
_021E8E44:
	mov r2, #1
_021E8E46:
	ldr r1, [r4, #0x34]
	ldr r0, _021E8FD0 ; =0x000040C4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x21
	ldrb r1, [r0]
	cmp r1, #0x1e
	bhs _021E8E84
	add r0, r4, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	bne _021E8E6A
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8E6A:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7EE0
	add r0, r4, #0
	mov r1, #0xff
	bl ov14_021E7588
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8E84:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FEC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8EA8:
	cmp r7, #0
	bne _021E8ED8
	ldr r0, [r4, #0x34]
	ldr r1, _021E8FC4 ; =0x0000044A
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021E8ED8
	ldr r2, [sp, #8]
	cmp r2, #0x10
	blo _021E8EC6
	ldr r1, [sp, #4]
	cmp r1, #0x30
	blo _021E8EC6
	cmp r2, #0x68
	blo _021E8ED8
_021E8EC6:
	ldr r1, _021E8FC4 ; =0x0000044A
	mov r2, #1
	strb r2, [r0, r1]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FB8
_021E8ED8:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r2, r0, r1
	ldr r1, _021E8FC0 ; =0x00004094
	ldrb r1, [r2, r1]
	ldr r2, [sp, #4]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	lsl r2, r2, #0x10
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	asr r2, r2, #0x10
	sub r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [sp, #8]
	ldr r1, [r4, #0x34]
	ldr r0, _021E8FC8 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp, #4]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021E8FB8
_021E8F1E:
	add r0, r4, #0
	bl ov14_021E6814
	cmp r0, #0
	bne _021E8FB8
	cmp r7, #0
	bne _021E8FB8
	cmp r6, #0
	bne _021E8FB8
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021E8F4A
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x21
	strb r1, [r0]
_021E8F4A:
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [r4, #0x34]
	ldr r1, _021E8FD0 ; =0x000040C4
	add r0, r4, #0
	ldr r1, [r2, r1]
	bl ov14_021F40E8
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8F62:
	add r0, r4, #0
	bl ov14_021E66F4
	cmp r0, #0
	bne _021E8FB8
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7EE0
	add r0, r4, #0
	mov r1, #0xff
	bl ov14_021E7588
	mov r0, #0xff
	add r4, #0x21
	strb r0, [r4]
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8F96:
	cmp r6, #0
	bne _021E8FB8
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021E8FB8
_021E8FA0:
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F3488
	ldr r2, [r4, #0x34]
	ldr r1, _021E8FC4 ; =0x0000044A
	mov r0, #0
	strb r0, [r2, r1]
	add sp, #0xc
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_021E8FB8:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E8FC0: .word 0x00004094
_021E8FC4: .word 0x0000044A
_021E8FC8: .word 0x000040B8
_021E8FCC: .word ov14_021F7BF0
_021E8FD0: .word 0x000040C4
	thumb_func_end ov14_021E8D20

	thumb_func_start ov14_021E8FD4
ov14_021E8FD4: ; 0x021E8FD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x2f
	ldr r4, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xe
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xf
	bl sub_02019978
	add r7, r0, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021E900C
	cmp r0, #1
	beq _021E90F8
	cmp r0, #2
	bne _021E900A
	b _021E914E
_021E900A:
	b _021E9180
_021E900C:
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021E90B2
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	mov r6, #0xff
	cmp r0, #0
	beq _021E903C
	ldr r1, [r5, #0x34]
	ldr r2, _021E9188 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79D8
	add r6, r0, #0
_021E903C:
	cmp r6, #0xff
	bne _021E9058
	ldr r1, [r5, #0x34]
	ldr r2, _021E9188 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	add r6, r0, #0
_021E9058:
	cmp r6, #0xff
	bne _021E9076
	ldr r1, [r5, #0x34]
	ldr r2, _021E9188 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _021E918C ; =ov14_021F7C08
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79AC
	add r6, r0, #0
_021E9076:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	add r2, r6, #0
	bl ov14_021E6CF8
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F40E8
	mov r0, #0x80
	tst r0, r6
	bne _021E90A4
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov14_021E70B0
	add r1, r5, #0
	add r1, #0x21
	strb r0, [r1]
_021E90A4:
	ldr r0, [r5, #0x34]
	bl ov14_021E884C
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E9180
_021E90B2:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	add r2, r0, r1
	ldr r1, _021E9190 ; =0x00004094
	ldrb r1, [r2, r1]
	ldr r2, [sp]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	lsl r2, r2, #0x10
	ldr r0, [r1, r0]
	ldr r1, [sp, #4]
	asr r2, r2, #0x10
	sub r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r5, #0
	bl ov14_021F4174
	ldr r2, [sp, #4]
	ldr r1, [r5, #0x34]
	ldr r0, _021E9188 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp]
	ldr r1, [r5, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021E9180
_021E90F8:
	cmp r6, #0
	bne _021E914E
	cmp r7, #0
	bne _021E914E
	ldr r6, [r4, #0xc]
	add r0, r6, #0
	add r0, #0xe8
	ldr r1, [r0]
	cmp r1, #0xff
	beq _021E913C
	mov r0, #0x80
	tst r0, r1
	beq _021E913C
	add r0, r6, #0
	add r0, #0xe4
	ldr r0, [r0]
	cmp r0, #0x1e
	blo _021E9148
	ldr r0, [r5, #8]
	bl Party_GetCount
	add r6, #0xe4
	ldr r1, [r6]
	sub r0, r0, #1
	sub r1, #0x1e
	cmp r1, r0
	bhs _021E9148
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	b _021E9148
_021E913C:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
_021E9148:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021E914E:
	add r0, r5, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E9180
	cmp r7, #0
	bne _021E9180
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	bne _021E9180
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ov14_021E7148
	add r0, r5, #0
	bl ov14_021F4174
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F40E8
	mov r0, #0
	add sp, #8
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021E9180:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9188: .word 0x000040B8
_021E918C: .word ov14_021F7C08
_021E9190: .word 0x00004094
	thumb_func_end ov14_021E8FD4

	thumb_func_start ov14_021E9194
ov14_021E9194: ; 0x021E9194
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r4, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xa
	bl sub_02019978
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021E91B2
	cmp r0, #1
	beq _021E91C4
	b _021E91DC
_021E91B2:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov14_021E70E0
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021E91C4:
	add r0, r5, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E91DC
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ov14_021E7148
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E91DC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E9194

	thumb_func_start ov14_021E91E0
ov14_021E91E0: ; 0x021E91E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021E91F2
	cmp r1, #1
	beq _021E9218
	b _021E922E
_021E91F2:
	ldr r0, [r5, #8]
	bl Party_GetCount
	add r2, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r2, #0x1e
	add r0, r5, #0
	bl ov14_021E6CF8
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F40E8
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E922E
_021E9218:
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E922E
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ov14_021E7148
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E922E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E91E0

	thumb_func_start ov14_021E9234
ov14_021E9234: ; 0x021E9234
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021E9248
	cmp r1, #1
	beq _021E927E
	b _021E92A6
_021E9248:
	ldrb r0, [r5, #0x1f]
	add r1, sp, #0
	add r2, sp, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl PCStorage_FindFirstEmptySlot
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl ov14_021E6CF8
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F40E8
	mov r0, #0xff
	add r5, #0x21
	strb r0, [r5]
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E92A6
_021E927E:
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E92A6
	ldr r6, [r4, #0xc]
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	add r1, #0xe4
	ldr r1, [r1]
	mov r2, #1
	bl ov14_021F34C8
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021E7148
	mov r0, #0
	add sp, #8
	strh r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_021E92A6:
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov14_021E9234

	thumb_func_start ov14_021E92AC
ov14_021E92AC: ; 0x021E92AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x34]
	ldrh r0, [r1, #0x12]
	cmp r0, #0x17
	bne _021E92D8
	ldr r0, [r1, #0x2c]
	bl GridInputHandler_IsButtonInputMode
	cmp r0, #1
	bne _021E92CC
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
_021E92CC:
	ldr r1, [r5, #0x34]
	mov r0, #0
	strh r0, [r1, #0x12]
	ldr r1, [r5, #0x34]
	strh r0, [r1, #0x10]
	pop {r3, r4, r5, pc}
_021E92D8:
	ldr r0, [r1, #0x14]
	mov r1, #3
	mov r2, #2
	mov r3, #8
	bl ScheduleSetBgPosText
	add r0, r5, #0
	mov r1, #8
	bl ov14_021F3210
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xe
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xb
	bl sub_020199E4
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xb
	bl sub_020199E4
	cmp r4, #1
	bne _021E9362
	cmp r0, #0
	bne _021E9362
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
_021E9362:
	ldr r1, [r5, #0x34]
	ldrh r0, [r1, #0x12]
	add r0, r0, #1
	strh r0, [r1, #0x12]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E92AC

	thumb_func_start ov14_021E9370
ov14_021E9370: ; 0x021E9370
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x34]
	ldrh r0, [r1, #0x12]
	cmp r0, #0x17
	bne _021E939C
	ldr r0, [r1, #0x2c]
	bl GridInputHandler_IsButtonInputMode
	cmp r0, #1
	bne _021E9390
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
_021E9390:
	ldr r1, [r5, #0x34]
	mov r0, #0
	strh r0, [r1, #0x12]
	ldr r1, [r5, #0x34]
	strh r0, [r1, #0x10]
	pop {r3, r4, r5, pc}
_021E939C:
	ldr r0, [r1, #0x14]
	mov r1, #3
	mov r2, #1
	mov r3, #8
	bl ScheduleSetBgPosText
	mov r1, #7
	add r0, r5, #0
	mvn r1, r1
	bl ov14_021F3210
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xe
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xb
	bl sub_020199E4
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xb
	bl sub_020199E4
	cmp r4, #1
	bne _021E9428
	cmp r0, #0
	bne _021E9428
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
_021E9428:
	ldr r1, [r5, #0x34]
	ldrh r0, [r1, #0x12]
	add r0, r0, #1
	strh r0, [r1, #0x12]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E9370

	thumb_func_start ov14_021E9434
ov14_021E9434: ; 0x021E9434
	push {r3, lr}
	ldr r1, [r0, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	cmp r0, #0
	beq _021E944A
	mov r0, #1
	pop {r3, pc}
_021E944A:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E9434

	thumb_func_start ov14_021E9450
ov14_021E9450: ; 0x021E9450
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r4, #0
	bne _021E94A4
	cmp r6, #0
	bne _021E94A4
	cmp r7, #0
	bne _021E94A4
	cmp r0, #0
	bne _021E94A4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E94A4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021E9450

	thumb_func_start ov14_021E94A8
ov14_021E94A8: ; 0x021E94A8
	ldr r1, [r0, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _021E94B8 ; =sub_02019978
	mov r1, #2
	bx r3
	nop
_021E94B8: .word sub_02019978
	thumb_func_end ov14_021E94A8

	thumb_func_start ov14_021E94BC
ov14_021E94BC: ; 0x021E94BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xb
	bl sub_02019978
	cmp r4, #0
	bne _021E9512
	cmp r6, #0
	bne _021E9512
	cmp r7, #0
	bne _021E9512
	cmp r0, #0
	bne _021E9512
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E9512:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E94BC

	thumb_func_start ov14_021E9518
ov14_021E9518: ; 0x021E9518
	push {r3, lr}
	bl ov14_021E80A8
	cmp r0, #0
	beq _021E9526
	mov r0, #1
	pop {r3, pc}
_021E9526:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E9518

	thumb_func_start ov14_021E952C
ov14_021E952C: ; 0x021E952C
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E80A8
	cmp r0, #0
	bne _021E953C
	mov r0, #0
	pop {r4, pc}
_021E953C:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov14_021E952C

	thumb_func_start ov14_021E954C
ov14_021E954C: ; 0x021E954C
	ldr r3, _021E9550 ; =ov14_021E9518
	bx r3
	.balign 4, 0
_021E9550: .word ov14_021E9518
	thumb_func_end ov14_021E954C

	thumb_func_start ov14_021E9554
ov14_021E9554: ; 0x021E9554
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02019978
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xf
	bl sub_02019978
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl ov14_021F47B8
	cmp r4, #0
	bne _021E958C
	cmp r6, #0
	bne _021E958C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E958C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov14_021E9554

	thumb_func_start ov14_021E9590
ov14_021E9590: ; 0x021E9590
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02019978
	mov r1, #7
	add r5, r0, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov14_021F47B8
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E9590

	thumb_func_start ov14_021E95B4
ov14_021E95B4: ; 0x021E95B4
	ldr r1, [r0, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _021E95C4 ; =sub_02019978
	mov r1, #0xa
	bx r3
	nop
_021E95C4: .word sub_02019978
	thumb_func_end ov14_021E95B4

	thumb_func_start ov14_021E95C8
ov14_021E95C8: ; 0x021E95C8
	push {r4, lr}
	ldr r4, [r0, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021E95D8
	cmp r1, #1
	beq _021E95E8
	b _021E95FE
_021E95D8:
	bl ov14_021E9434
	cmp r0, #0
	bne _021E95FE
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E95FE
_021E95E8:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl sub_02019978
	cmp r0, #0
	bne _021E95FE
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r4, pc}
_021E95FE:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E95C8

	thumb_func_start ov14_021E9604
ov14_021E9604: ; 0x021E9604
	ldr r1, [r0, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _021E9614 ; =sub_02019978
	mov r1, #0xc
	bx r3
	nop
_021E9614: .word sub_02019978
	thumb_func_end ov14_021E9604

	thumb_func_start ov14_021E9618
ov14_021E9618: ; 0x021E9618
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xc
	bl sub_02019978
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #6
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #7
	bl sub_02019978
	cmp r4, #0
	bne _021E965A
	cmp r6, #0
	bne _021E965A
	cmp r0, #0
	bne _021E965A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E965A:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021E9618

	thumb_func_start ov14_021E9660
ov14_021E9660: ; 0x021E9660
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021E9672
	cmp r1, #1
	beq _021E9682
	b _021E96A2
_021E9672:
	bl ov14_021E9618
	cmp r0, #0
	bne _021E96A2
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E96A2
_021E9682:
	add r0, r4, #0
	mov r1, #8
	bl ov14_021F44B4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xd
	bl sub_02019978
	cmp r0, #0
	bne _021E96A2
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E96A2:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E9660

	thumb_func_start ov14_021E96A8
ov14_021E96A8: ; 0x021E96A8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #7
	ldr r0, [r4, #0x34]
	mvn r1, r1
	bl ov14_021F44B4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xd
	bl sub_02019978
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E96A8

	thumb_func_start ov14_021E96C8
ov14_021E96C8: ; 0x021E96C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0x2f
	ldr r6, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02019B08
	add r5, r0, #0
	ldrh r0, [r6, #0x10]
	cmp r0, #0xa
	bls _021E96E6
	b _021E988A
_021E96E6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E96F2: ; jump table
	.short _021E9708 - _021E96F2 - 2 ; case 0
	.short _021E972E - _021E96F2 - 2 ; case 1
	.short _021E9776 - _021E96F2 - 2 ; case 2
	.short _021E97DA - _021E96F2 - 2 ; case 3
	.short _021E97FC - _021E96F2 - 2 ; case 4
	.short _021E9844 - _021E96F2 - 2 ; case 5
	.short _021E988A - _021E96F2 - 2 ; case 6
	.short _021E988A - _021E96F2 - 2 ; case 7
	.short _021E988A - _021E96F2 - 2 ; case 8
	.short _021E988A - _021E96F2 - 2 ; case 9
	.short _021E97BC - _021E96F2 - 2 ; case 10
_021E9708:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #9
	bl CopyToBgTilemapRect
	b _021E988A
_021E972E:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #8
	bl CopyToBgTilemapRect
	mov r2, #0x20
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #6
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #0xa
	bl CopyToBgTilemapRect
	b _021E988A
_021E9776:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r3, #7
	str r3, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	bl CopyToBgTilemapRect
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #0xa
	bl CopyToBgTilemapRect
	b _021E988A
_021E97BC:
	mov r0, #4
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r1, #0
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	add r3, r1, #0
	bl FillBgTilemapRect
_021E97DA:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #7
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #6
	bl CopyToBgTilemapRect
	b _021E988A
_021E97FC:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #5
	bl CopyToBgTilemapRect
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #0xc
	bl CopyToBgTilemapRect
	b _021E988A
_021E9844:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #4
	bl CopyToBgTilemapRect
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #0xd
	bl CopyToBgTilemapRect
_021E988A:
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	ldrh r0, [r6, #0x10]
	cmp r0, #0xa
	bne _021E98A2
	mov r0, #0
	add sp, #0x1c
	strh r0, [r6, #0x10]
	pop {r3, r4, r5, r6, pc}
_021E98A2:
	add r0, r0, #1
	strh r0, [r6, #0x10]
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov14_021E96C8

	thumb_func_start ov14_021E98AC
ov14_021E98AC: ; 0x021E98AC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	mov r1, #0
	ldrh r0, [r4, #0x10]
	add r2, r1, #0
	add r3, r1, #0
	add r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	bl FillBgTilemapRect
	ldrh r1, [r4, #0x10]
	mov r0, #0xc
	sub r0, r0, r1
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	add r3, r1, #0
	bl FillBgTilemapRect
	ldr r0, [r5, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bne _021E9914
	mov r0, #0
	add sp, #0x10
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E9914:
	add r0, r0, #1
	strh r0, [r4, #0x10]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E98AC

	thumb_func_start ov14_021E9920
ov14_021E9920: ; 0x021E9920
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021E9932
	cmp r0, #1
	beq _021E9956
	b _021E996C
_021E9932:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_02019978
	cmp r0, #0
	bne _021E996C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85BC
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E996C
_021E9956:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xe
	bl sub_02019978
	cmp r0, #0
	bne _021E996C
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E996C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E9920

	thumb_func_start ov14_021E9970
ov14_021E9970: ; 0x021E9970
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xf
	bl sub_02019978
	cmp r0, #0
	bne _021E999C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xe
	bl sub_02019978
	cmp r0, #0
	bne _021E999C
	mov r0, #0
	pop {r4, pc}
_021E999C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov14_021E9970

	thumb_func_start ov14_021E99A0
ov14_021E99A0: ; 0x021E99A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021E99B2
	cmp r0, #1
	beq _021E99D6
	b _021E99EC
_021E99B2:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xe
	bl sub_02019978
	cmp r0, #0
	bne _021E99EC
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E99EC
_021E99D6:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_02019978
	cmp r0, #0
	bne _021E99EC
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E99EC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E99A0

	thumb_func_start ov14_021E99F0
ov14_021E99F0: ; 0x021E99F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xc
	bl sub_02019978
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r4, #0
	bne _021E9A1E
	cmp r0, #0
	bne _021E9A1E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E9A1E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E99F0

	thumb_func_start ov14_021E9A24
ov14_021E9A24: ; 0x021E9A24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r5, [r4, #0x34]
	ldrh r0, [r5, #0x10]
	cmp r0, #1
	bhi _021E9A52
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r2, sp, #4
	add r1, r5, r0
	ldr r0, _021E9C78 ; =0x00004094
	ldrb r0, [r1, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r1, #2
	bl ManagedSprite_GetPositionXY
_021E9A52:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	add r7, r0, #0
	add r0, r4, #0
	bl ov14_021E813C
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	str r0, [sp]
	ldrh r0, [r5, #0x10]
	cmp r0, #7
	bls _021E9A80
	b _021E9C70
_021E9A80:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9A8C: ; jump table
	.short _021E9A9C - _021E9A8C - 2 ; case 0
	.short _021E9AA0 - _021E9A8C - 2 ; case 1
	.short _021E9BE2 - _021E9A8C - 2 ; case 2
	.short _021E9BE2 - _021E9A8C - 2 ; case 3
	.short _021E9BE2 - _021E9A8C - 2 ; case 4
	.short _021E9C14 - _021E9A8C - 2 ; case 5
	.short _021E9C44 - _021E9A8C - 2 ; case 6
	.short _021E9C4E - _021E9A8C - 2 ; case 7
_021E9A9C:
	mov r0, #1
	strh r0, [r5, #0x10]
_021E9AA0:
	ldr r0, [r4, #0x34]
	ldr r1, _021E9C7C ; =0x0000044A
	ldrb r2, [r0, r1]
	cmp r2, #1
	bne _021E9ABA
	cmp r6, #0
	bne _021E9ABA
	mov r2, #2
	strb r2, [r0, r1]
	add r0, r4, #0
	mov r1, #0x28
	bl ov14_021F69F0
_021E9ABA:
	add r0, sp, #0xc
	add r1, sp, #8
	bl System_GetTouchHeldCoords
	cmp r0, #0
	ldr r0, [r4, #0x34]
	bne _021E9B68
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r3, sp, #4
	add r2, r0, r1
	ldr r1, _021E9C78 ; =0x00004094
	ldrb r1, [r2, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r3, r1]
	bl ManagedSprite_SetPositionXY
	ldr r1, [r4, #0x34]
	ldr r0, _021E9C7C ; =0x0000044A
	mov r2, #0xff
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021E9B0E
	ldr r2, _021E9C80 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	add r2, r0, #0
_021E9B0E:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E6F3C
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E70B0
	add r1, r4, #0
	add r1, #0x21
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021E9B44
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021E9C70
_021E9B44:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FEC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	mov r0, #2
	strh r0, [r5, #0x10]
	b _021E9C70
_021E9B68:
	ldr r1, _021E9C7C ; =0x0000044A
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021E9B9C
	cmp r7, #0
	bne _021E9B9C
	ldr r1, [sp]
	cmp r1, #0
	bne _021E9B9C
	ldr r2, [sp, #0xc]
	cmp r2, #0x10
	blo _021E9B8A
	ldr r1, [sp, #8]
	cmp r1, #0x30
	blo _021E9B8A
	cmp r2, #0x68
	blo _021E9B9C
_021E9B8A:
	ldr r1, _021E9C7C ; =0x0000044A
	mov r2, #1
	strb r2, [r0, r1]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FB8
_021E9B9C:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r2, r0, r1
	ldr r1, _021E9C78 ; =0x00004094
	ldrb r1, [r2, r1]
	ldr r2, [sp, #8]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	lsl r2, r2, #0x10
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	asr r2, r2, #0x10
	sub r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [sp, #0xc]
	ldr r1, [r4, #0x34]
	ldr r0, _021E9C80 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp, #8]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021E9C70
_021E9BE2:
	add r0, r4, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E9C70
	cmp r6, #0
	bne _021E9C70
	cmp r7, #0
	bne _021E9C70
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [r4, #0x34]
	ldr r1, _021E9C84 ; =0x000040C4
	add r0, r4, #0
	ldr r1, [r2, r1]
	bl ov14_021F40E8
	mov r0, #7
	strh r0, [r5, #0x10]
	b _021E9C70
_021E9C14:
	add r0, r4, #0
	bl ov14_021E66F4
	cmp r0, #0
	bne _021E9C70
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	add r0, r4, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7EE0
	mov r0, #0xff
	add r4, #0x21
	strb r0, [r4]
	mov r0, #6
	strh r0, [r5, #0x10]
	b _021E9C70
_021E9C44:
	cmp r6, #0
	bne _021E9C70
	mov r0, #7
	strh r0, [r5, #0x10]
	b _021E9C70
_021E9C4E:
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F3488
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov14_021F3488
	ldr r2, [r4, #0x34]
	ldr r1, _021E9C7C ; =0x0000044A
	mov r0, #0
	strb r0, [r2, r1]
	add sp, #0x10
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021E9C70:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9C78: .word 0x00004094
_021E9C7C: .word 0x0000044A
_021E9C80: .word 0x000040B8
_021E9C84: .word 0x000040C4
	thumb_func_end ov14_021E9A24

	thumb_func_start ov14_021E9C88
ov14_021E9C88: ; 0x021E9C88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	str r0, [sp]
	add r0, r4, #0
	bl ov14_021E80A8
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	add r7, r0, #0
	ldrh r0, [r5, #0x10]
	cmp r0, #8
	bls _021E9CBC
	b _021E9F04
_021E9CBC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9CC8: ; jump table
	.short _021E9CDA - _021E9CC8 - 2 ; case 0
	.short _021E9CDE - _021E9CC8 - 2 ; case 1
	.short _021E9E30 - _021E9CC8 - 2 ; case 2
	.short _021E9E4A - _021E9CC8 - 2 ; case 3
	.short _021E9E4A - _021E9CC8 - 2 ; case 4
	.short _021E9E8C - _021E9CC8 - 2 ; case 5
	.short _021E9EBA - _021E9CC8 - 2 ; case 6
	.short _021E9ED8 - _021E9CC8 - 2 ; case 7
	.short _021E9EE2 - _021E9CC8 - 2 ; case 8
_021E9CDA:
	mov r0, #1
	strh r0, [r5, #0x10]
_021E9CDE:
	ldr r0, [r4, #0x34]
	ldr r1, _021E9F0C ; =0x0000044A
	ldrb r2, [r0, r1]
	cmp r2, #1
	bne _021E9CF8
	cmp r6, #0
	bne _021E9CF8
	mov r2, #2
	strb r2, [r0, r1]
	add r0, r4, #0
	mov r1, #0x28
	bl ov14_021F69F0
_021E9CF8:
	add r0, sp, #0xc
	add r1, sp, #8
	bl System_GetTouchHeldCoords
	cmp r0, #0
	ldr r0, _021E9F0C ; =0x0000044A
	bne _021E9D78
	ldr r1, [r4, #0x34]
	mov r2, #0xff
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021E9D28
	ldr r2, _021E9F10 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _021E9F14 ; =ov14_021F7C08
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79AC
	add r2, r0, #0
_021E9D28:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E7034
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E70B0
	add r1, r4, #0
	add r1, #0x21
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	blo _021E9D5E
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9D5E:
	ldr r1, [r4, #0x34]
	ldr r0, _021E9F0C ; =0x0000044A
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021E9D72
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7F4C
_021E9D72:
	mov r0, #2
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9D78:
	ldr r1, [r4, #0x34]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021E9DEA
	ldr r0, [sp]
	cmp r0, #0
	bne _021E9DEA
	cmp r7, #0
	bne _021E9DEA
	add r0, r4, #0
	add r3, r4, #0
	add r0, #0x21
	add r3, #0x22
	add r1, sp, #4
	ldrb r0, [r0]
	ldrb r3, [r3]
	add r1, #2
	add r2, sp, #4
	bl ov14_021F2F88
	add r1, sp, #4
	mov r0, #2
	ldrsh r3, [r1, r0]
	ldr r2, [sp, #0xc]
	add r0, r3, #0
	sub r0, #0x10
	cmp r2, r0
	blo _021E9DCA
	add r3, #0x10
	cmp r2, r3
	bhs _021E9DCA
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldr r1, [sp, #8]
	add r0, r2, #0
	sub r0, #0x10
	cmp r1, r0
	blo _021E9DCA
	add r2, #0x10
	cmp r1, r2
	blo _021E9DEA
_021E9DCA:
	ldr r1, [r4, #0x34]
	ldr r0, _021E9F0C ; =0x0000044A
	mov r2, #1
	strb r2, [r1, r0]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7ED0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7EE0
_021E9DEA:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r2, r0, r1
	ldr r1, _021E9F18 ; =0x00004094
	ldrb r1, [r2, r1]
	ldr r2, [sp, #8]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	lsl r2, r2, #0x10
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	asr r2, r2, #0x10
	sub r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [sp, #0xc]
	ldr r1, [r4, #0x34]
	ldr r0, _021E9F10 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp, #8]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021E9F04
_021E9E30:
	cmp r6, #0
	bne _021E9E4A
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	mov r0, #3
	strh r0, [r5, #0x10]
_021E9E4A:
	add r0, r4, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E9E80
	ldrh r0, [r5, #0x10]
	cmp r0, #4
	bne _021E9E80
	ldr r0, [sp]
	cmp r0, #0
	bne _021E9E80
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	add r0, r4, #0
	bl ov14_021F4174
	ldr r2, [r4, #0x34]
	ldr r1, _021E9F1C ; =0x000040C4
	add r0, r4, #0
	ldr r1, [r2, r1]
	bl ov14_021F40E8
	mov r0, #8
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9E80:
	ldrh r0, [r5, #0x10]
	cmp r0, #3
	bne _021E9F04
	mov r0, #4
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9E8C:
	add r0, r4, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021E9F04
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov14_021E7148
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x21
	strb r1, [r0]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7F4C
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9EBA:
	cmp r6, #0
	bne _021E9F04
	add r0, r4, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9ED8:
	cmp r7, #0
	bne _021E9F04
	mov r0, #8
	strh r0, [r5, #0x10]
	b _021E9F04
_021E9EE2:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov14_021F3488
	ldr r2, [r4, #0x34]
	ldr r1, _021E9F0C ; =0x0000044A
	mov r0, #0
	strb r0, [r2, r1]
	add sp, #0x10
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021E9F04:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9F0C: .word 0x0000044A
_021E9F10: .word 0x000040B8
_021E9F14: .word ov14_021F7C08
_021E9F18: .word 0x00004094
_021E9F1C: .word 0x000040C4
	thumb_func_end ov14_021E9C88

	thumb_func_start ov14_021E9F20
ov14_021E9F20: ; 0x021E9F20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r4, [r1, #0xc]
	ldr r0, [r1, r0]
	mov r1, #0xf
	bl sub_02019978
	ldr r1, [r4, #4]
	lsr r2, r1, #2
	bne _021E9F98
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	ldr r1, _021EA060 ; =0x0000044B
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _021E9F94
	ldr r1, [r5]
	ldr r1, [r1, #8]
	cmp r1, #3
	bne _021E9F72
	ldrb r2, [r4, #1]
	mov r1, #0xca
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r2, #8
	lsl r2, r2, #0x10
	ldrb r1, [r4]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	b _021E9F94
_021E9F72:
	add r5, #0x21
	ldrb r1, [r5]
	add r2, r0, r1
	ldr r1, _021EA064 ; =0x00004094
	ldrb r1, [r2, r1]
	ldrb r2, [r4, #1]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r2, #4
	lsl r2, r2, #0x10
	ldrb r1, [r4]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
_021E9F94:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E9F98:
	mov r0, #3
	and r1, r0
	sub r0, r2, #1
	lsl r0, r0, #2
	orr r0, r1
	str r0, [r4, #4]
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #4]
	add r1, sp, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021E9FCA
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldrb r0, [r4, #2]
	add r0, r2, r0
	b _021E9FD2
_021E9FCA:
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldrb r0, [r4, #2]
	sub r0, r2, r0
_021E9FD2:
	strh r0, [r1, #2]
	ldr r0, [r4, #4]
	add r1, sp, #0
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E9FE8
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldrb r0, [r4, #3]
	add r0, r2, r0
	b _021E9FF0
_021E9FE8:
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldrb r0, [r4, #3]
	sub r0, r2, r0
_021E9FF0:
	strh r0, [r1]
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	ldr r1, _021EA060 ; =0x0000044B
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _021EA05C
	ldr r1, [r5]
	add r3, sp, #0
	ldr r1, [r1, #8]
	cmp r1, #3
	bne _021EA036
	mov r2, #0
	mov r1, #0xca
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #2
	add r2, #8
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	b _021EA05C
_021EA036:
	add r5, #0x21
	ldrb r1, [r5]
	add r2, r0, r1
	ldr r1, _021EA064 ; =0x00004094
	ldrb r1, [r2, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, r2, #4
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
_021EA05C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EA060: .word 0x0000044B
_021EA064: .word 0x00004094
	thumb_func_end ov14_021E9F20

	thumb_func_start ov14_021EA068
ov14_021EA068: ; 0x021EA068
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r5, [r6, #0x34]
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _021EA07A
	cmp r0, #1
	beq _021EA092
	b _021EA0B2
_021EA07A:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r0, #0
	bne _021EA0B2
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _021EA0B2
_021EA092:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r4, r0, #0
	add r0, r6, #0
	bl ov14_021E9F20
	cmp r4, #0
	bne _021EA0B2
	cmp r0, #0
	bne _021EA0B2
	mov r0, #0
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
_021EA0B2:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021EA068

	thumb_func_start ov14_021EA0B8
ov14_021EA0B8: ; 0x021EA0B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA0CA
	cmp r1, #1
	beq _021EA10A
	b _021EA12A
_021EA0CA:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r6, #0
	bne _021EA12A
	cmp r7, #0
	bne _021EA12A
	cmp r0, #0
	bne _021EA12A
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA12A
_021EA10A:
	bl ov14_021E9F20
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	cmp r6, #0
	bne _021EA12A
	cmp r0, #0
	bne _021EA12A
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA12A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021EA0B8

	thumb_func_start ov14_021EA130
ov14_021EA130: ; 0x021EA130
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r5, [r6, #0x34]
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _021EA142
	cmp r0, #1
	beq _021EA164
	b _021EA17A
_021EA142:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r4, r0, #0
	add r0, r6, #0
	bl ov14_021E9F20
	cmp r4, #0
	bne _021EA17A
	cmp r0, #0
	bne _021EA17A
	ldrh r0, [r5, #0x10]
	add r0, r0, #1
	strh r0, [r5, #0x10]
	b _021EA17A
_021EA164:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r0, #0
	bne _021EA17A
	mov r0, #0
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
_021EA17A:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021EA130

	thumb_func_start ov14_021EA180
ov14_021EA180: ; 0x021EA180
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA192
	cmp r1, #1
	beq _021EA1AE
	b _021EA1EC
_021EA192:
	bl ov14_021E9F20
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_021E9434
	cmp r6, #0
	bne _021EA1EC
	cmp r0, #0
	bne _021EA1EC
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA1EC
_021EA1AE:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r6, #0
	bne _021EA1EC
	cmp r7, #0
	bne _021EA1EC
	cmp r0, #0
	bne _021EA1EC
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA1EC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021EA180

	thumb_func_start ov14_021EA1F0
ov14_021EA1F0: ; 0x021EA1F0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0xa
	bl ov14_021F29E4
	mov r0, #0x32
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	add r3, sp, #0
	add r2, r0, r1
	ldr r1, _021EA250 ; =0x00004094
	ldrb r1, [r2, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, r2, #4
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x34]
	add r4, #0x21
	ldrb r1, [r4]
	mov r2, #0
	bl ov14_021F3190
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EA250: .word 0x00004094
	thumb_func_end ov14_021EA1F0

	thumb_func_start ov14_021EA254
ov14_021EA254: ; 0x021EA254
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x2f
	ldr r4, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_02019978
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bhi _021EA36E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA27A: ; jump table
	.short _021EA282 - _021EA27A - 2 ; case 0
	.short _021EA292 - _021EA27A - 2 ; case 1
	.short _021EA2DA - _021EA27A - 2 ; case 2
	.short _021EA2EA - _021EA27A - 2 ; case 3
_021EA282:
	mov r1, #9
	ldr r0, [r5, #0x34]
	add r2, r1, #0
	bl ov14_021F29E4
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA292:
	ldrh r0, [r4, #0x12]
	cmp r0, #4
	bne _021EA2A4
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA36E
_021EA2A4:
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x32
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _021EA36E
_021EA2DA:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xa
	bl ov14_021F29E4
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA2EA:
	ldrh r0, [r4, #0x12]
	cmp r0, #4
	bne _021EA2FA
	mov r0, #0
	strh r0, [r4, #0x12]
	add sp, #4
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, pc}
_021EA2FA:
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x32
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	sub r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	add r2, r0, r1
	ldr r1, _021EA374 ; =0x00004094
	ldrb r1, [r2, r1]
	add r2, sp, #0
	lsl r6, r1, #2
	add r1, r0, r6
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ManagedSprite_GetPositionXY
	ldr r0, [r5, #0x34]
	add r3, sp, #0
	mov r2, #0
	add r1, r0, r6
	mov r0, #0xbf
	ldrsh r2, [r3, r2]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	sub r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
_021EA36E:
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EA374: .word 0x00004094
	thumb_func_end ov14_021EA254

	thumb_func_start ov14_021EA378
ov14_021EA378: ; 0x021EA378
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r4, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_02019978
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021EA396
	cmp r0, #1
	beq _021EA3DC
	b _021EA3FE
_021EA396:
	mov r1, #9
	ldr r0, [r5, #0x34]
	add r2, r1, #0
	bl ov14_021F29E4
	ldr r1, [r5, #0x34]
	ldr r0, _021EA404 ; =0x0000044C
	ldrb r6, [r1, r0]
	cmp r6, #0x25
	blo _021EA3B0
	cmp r6, #0x2a
	bhi _021EA3B0
	add r6, #0x5b
_021EA3B0:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	add r2, r6, #0
	bl ov14_021E6CF8
	mov r0, #0x80
	tst r0, r6
	bne _021EA3D6
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov14_021E70B0
	add r1, r5, #0
	add r1, #0x21
	strb r0, [r1]
_021EA3D6:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA3DC:
	add r0, r5, #0
	bl ov14_021E65C4
	cmp r0, #0
	bne _021EA3FE
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ov14_021E7148
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_021EA3FE:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021EA404: .word 0x0000044C
	thumb_func_end ov14_021EA378

	thumb_func_start ov14_021EA408
ov14_021EA408: ; 0x021EA408
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA41E
	cmp r1, #1
	beq _021EA448
	cmp r1, #2
	beq _021EA48A
	b _021EA4C0
_021EA41E:
	ldr r0, _021EA4C4 ; =0x000088C8
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021EA442
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
_021EA442:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA448:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r6, #0
	bne _021EA4C0
	cmp r7, #0
	bne _021EA4C0
	cmp r0, #0
	bne _021EA4C0
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA4C0
_021EA48A:
	bl ov14_021E9F20
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8514
	cmp r6, #0
	bne _021EA4C0
	cmp r0, #0
	bne _021EA4C0
	ldr r0, [r5, #0x34]
	ldr r1, _021EA4C4 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA4BA
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	bl ov14_021F3B3C
_021EA4BA:
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA4C0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA4C4: .word 0x000088C8
	thumb_func_end ov14_021EA408

	thumb_func_start ov14_021EA4C8
ov14_021EA4C8: ; 0x021EA4C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #8
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	ldrh r0, [r5, #0x10]
	cmp r0, #0xa
	bls _021EA50E
	b _021EA664
_021EA50E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA51A: ; jump table
	.short _021EA530 - _021EA51A - 2 ; case 0
	.short _021EA56A - _021EA51A - 2 ; case 1
	.short _021EA588 - _021EA51A - 2 ; case 2
	.short _021EA632 - _021EA51A - 2 ; case 3
	.short _021EA664 - _021EA51A - 2 ; case 4
	.short _021EA664 - _021EA51A - 2 ; case 5
	.short _021EA664 - _021EA51A - 2 ; case 6
	.short _021EA664 - _021EA51A - 2 ; case 7
	.short _021EA664 - _021EA51A - 2 ; case 8
	.short _021EA664 - _021EA51A - 2 ; case 9
	.short _021EA642 - _021EA51A - 2 ; case 10
_021EA530:
	ldr r0, [r4, #0x34]
	ldr r1, _021EA66C ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA55A
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021EA664
_021EA55A:
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov14_021E8434
	mov r0, #0xa
	strh r0, [r5, #0x10]
	b _021EA664
_021EA56A:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	beq _021EA664
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
	mov r0, #2
	strh r0, [r5, #0x10]
_021EA588:
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021EA608
	ldr r1, [r4, #0x34]
	ldr r2, _021EA670 ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r7, r6, #0
	cmp r6, #0xff
	bne _021EA5BC
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
	b _021EA5D4
_021EA5BC:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	add r2, r6, #0
	bl ov14_021E6AA0
	cmp r0, #0
	bne _021EA5D4
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
_021EA5D4:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r6, r0
	ldr r1, [r4, #0x34]
	bne _021EA5EC
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	b _021EA5F6
_021EA5EC:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
_021EA5F6:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #2
	bl ov14_021E7AD4
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021EA664
_021EA608:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x34]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B5C
	ldr r2, [sp, #4]
	ldr r1, [r4, #0x34]
	ldr r0, _021EA670 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021EA664
_021EA632:
	add r0, r4, #0
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EA664
	mov r0, #0xa
	strh r0, [r5, #0x10]
	b _021EA664
_021EA642:
	cmp r6, #0
	bne _021EA664
	ldr r0, [r4, #0x34]
	ldr r1, _021EA66C ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA65C
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
_021EA65C:
	mov r0, #0
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA664:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA66C: .word 0x000088C8
_021EA670: .word 0x000040B8
	thumb_func_end ov14_021EA4C8

	thumb_func_start ov14_021EA674
ov14_021EA674: ; 0x021EA674
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021EA68A
	cmp r0, #1
	beq _021EA6AA
	cmp r0, #2
	beq _021EA6C8
	b _021EA720
_021EA68A:
	ldr r0, _021EA724 ; =0x000088C8
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021EA6A4
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
_021EA6A4:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EA6AA:
	add r0, r5, #0
	bl ov14_021E9F20
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_021E9434
	cmp r6, #0
	bne _021EA720
	cmp r0, #0
	bne _021EA720
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EA720
_021EA6C8:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	bl sub_02019978
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #9
	bl sub_02019978
	add r7, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	cmp r6, #0
	bne _021EA720
	cmp r7, #0
	bne _021EA720
	cmp r0, #0
	bne _021EA720
	ldr r0, [r5, #0x34]
	ldr r1, _021EA724 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EA71A
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
_021EA71A:
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA720:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA724: .word 0x000088C8
	thumb_func_end ov14_021EA674

	thumb_func_start ov14_021EA728
ov14_021EA728: ; 0x021EA728
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021EA73A
	cmp r1, #1
	beq _021EA766
	b _021EA774
_021EA73A:
	add r0, r4, #0
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	beq _021EA774
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, [r4, #0xc]
	mov r3, #2
	ldrh r2, [r0]
	add r0, r5, #0
	add r0, #0x21
	strb r2, [r0]
	add r0, r5, #0
	add r2, r1, #0
	bl ov14_021E7AD4
	mov r0, #1
	strh r0, [r4, #0x10]
	b _021EA774
_021EA766:
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EA774
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021EA774:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021EA728

	thumb_func_start ov14_021EA778
ov14_021EA778: ; 0x021EA778
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xe
	bl sub_02019978
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xf
	bl sub_02019978
	ldrh r0, [r5, #0x10]
	cmp r0, #6
	bhi _021EA7E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA7AC: ; jump table
	.short _021EA7BA - _021EA7AC - 2 ; case 0
	.short _021EA7DC - _021EA7AC - 2 ; case 1
	.short _021EA7FE - _021EA7AC - 2 ; case 2
	.short _021EA8A6 - _021EA7AC - 2 ; case 3
	.short _021EA8C8 - _021EA7AC - 2 ; case 4
	.short _021EA8E8 - _021EA7AC - 2 ; case 5
	.short _021EA90C - _021EA7AC - 2 ; case 6
_021EA7BA:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021EA914
_021EA7DC:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	beq _021EA7EA
_021EA7E8:
	b _021EA914
_021EA7EA:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
	mov r0, #2
	strh r0, [r5, #0x10]
	b _021EA914
_021EA7FE:
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021EA87C
	ldr r1, [r4, #0x34]
	ldr r2, _021EA91C ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xff
	bne _021EA844
	ldr r1, [r4, #0x34]
	ldr r2, _021EA91C ; =0x000040B8
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _021EA920 ; =ov14_021F7C08
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79AC
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_021EA844:
	add r7, r6, #0
	cmp r6, #0xff
	bne _021EA852
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
	b _021EA86A
_021EA852:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	add r2, r6, #0
	bl ov14_021E6AA0
	cmp r0, #0
	bne _021EA86A
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
_021EA86A:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #2
	bl ov14_021E7AD4
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021EA914
_021EA87C:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x34]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B5C
	ldr r2, [sp, #4]
	ldr r1, [r4, #0x34]
	ldr r0, _021EA91C ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021EA914
_021EA8A6:
	add r0, r4, #0
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EA914
	ldr r0, _021EA924 ; =0x000005EA
	bl PlaySE
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	mov r0, #4
	strh r0, [r5, #0x10]
	b _021EA914
_021EA8C8:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	mov r0, #5
	strh r0, [r5, #0x10]
	b _021EA914
_021EA8E8:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EA914
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	mov r0, #6
	strh r0, [r5, #0x10]
	b _021EA914
_021EA90C:
	mov r0, #0
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EA914:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA91C: .word 0x000040B8
_021EA920: .word ov14_021F7C08
_021EA924: .word 0x000005EA
	thumb_func_end ov14_021EA778

	thumb_func_start ov14_021EA928
ov14_021EA928: ; 0x021EA928
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r1, [r4, #0x10]
	cmp r1, #6
	bhi _021EA9FC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EA940: ; jump table
	.short _021EA94E - _021EA940 - 2 ; case 0
	.short _021EA970 - _021EA940 - 2 ; case 1
	.short _021EA98A - _021EA940 - 2 ; case 2
	.short _021EA9A6 - _021EA940 - 2 ; case 3
	.short _021EA9BA - _021EA940 - 2 ; case 4
	.short _021EA9D2 - _021EA940 - 2 ; case 5
	.short _021EA9F6 - _021EA940 - 2 ; case 6
_021EA94E:
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	mov r0, #1
	strh r0, [r4, #0x10]
	b _021EA9FC
_021EA970:
	add r0, r4, #0
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EA9FC
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F391C
	mov r0, #2
	strh r0, [r4, #0x10]
	b _021EA9FC
_021EA98A:
	add r1, r5, #0
	ldr r2, [r4, #0xc]
	add r1, #0x21
	ldrb r1, [r1]
	ldrh r2, [r2]
	add r5, #0x21
	mov r3, #2
	strb r2, [r5]
	add r2, r1, #0
	bl ov14_021E7AD4
	mov r0, #3
	strh r0, [r4, #0x10]
	b _021EA9FC
_021EA9A6:
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EA9FC
	ldr r0, _021EAA00 ; =0x000005EA
	bl PlaySE
	mov r0, #4
	strh r0, [r4, #0x10]
	b _021EA9FC
_021EA9BA:
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #5
	strh r0, [r4, #0x10]
	b _021EA9FC
_021EA9D2:
	add r0, r4, #0
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EA9FC
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F391C
	mov r0, #6
	strh r0, [r4, #0x10]
	b _021EA9FC
_021EA9F6:
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021EA9FC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EAA00: .word 0x000005EA
	thumb_func_end ov14_021EA928

	thumb_func_start ov14_021EAA04
ov14_021EAA04: ; 0x021EAA04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x2f
	ldr r4, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_02019978
	ldrh r0, [r4, #0x10]
	cmp r0, #5
	bls _021EAA1E
	b _021EAB4E
_021EAA1E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAA2A: ; jump table
	.short _021EAA36 - _021EAA2A - 2 ; case 0
	.short _021EAA5A - _021EAA2A - 2 ; case 1
	.short _021EAA76 - _021EAA2A - 2 ; case 2
	.short _021EAA86 - _021EAA2A - 2 ; case 3
	.short _021EAACE - _021EAA2A - 2 ; case 4
	.short _021EAADE - _021EAA2A - 2 ; case 5
_021EAA36:
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EAB4E
_021EAA5A:
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EAB4E
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EAB4E
_021EAA76:
	mov r1, #9
	ldr r0, [r5, #0x34]
	add r2, r1, #0
	bl ov14_021F29E4
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EAA86:
	ldrh r0, [r4, #0x12]
	cmp r0, #4
	bne _021EAA98
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021EAB4E
_021EAA98:
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x32
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _021EAB4E
_021EAACE:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xa
	bl ov14_021F29E4
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
_021EAADE:
	ldrh r0, [r4, #0x12]
	cmp r0, #4
	bne _021EAAEC
	mov r0, #0
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021EAAEC:
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x32
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	sub r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r0, #0xca
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0xca
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	sub r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
_021EAB4E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021EAA04

	thumb_func_start ov14_021EAB54
ov14_021EAB54: ; 0x021EAB54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r0, [r4, #0x10]
	cmp r0, #4
	bhi _021EAC20
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAB6C: ; jump table
	.short _021EAB76 - _021EAB6C - 2 ; case 0
	.short _021EAB84 - _021EAB6C - 2 ; case 1
	.short _021EABCA - _021EAB6C - 2 ; case 2
	.short _021EABEC - _021EAB6C - 2 ; case 3
	.short _021EAC10 - _021EAB6C - 2 ; case 4
_021EAB76:
	mov r1, #9
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F29E4
	mov r0, #1
	strh r0, [r4, #0x10]
_021EAB84:
	ldrh r0, [r4, #0x12]
	cmp r0, #4
	bne _021EAB94
	mov r0, #0
	strh r0, [r4, #0x12]
	mov r0, #2
	strh r0, [r4, #0x10]
	b _021EAC20
_021EAB94:
	mov r0, #0xca
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0xca
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, r2, #2
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _021EAC20
_021EABCA:
	add r0, r4, #0
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #3
	strh r0, [r4, #0x10]
	b _021EAC20
_021EABEC:
	add r0, r4, #0
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EAC20
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #4
	strh r0, [r4, #0x10]
	b _021EAC20
_021EAC10:
	add r0, r4, #0
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021EAC20:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021EAB54

	thumb_func_start ov14_021EAC24
ov14_021EAC24: ; 0x021EAC24
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xf
	bl sub_02019978
	ldrh r0, [r5, #0x10]
	cmp r0, #4
	bhi _021EACCC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAC48: ; jump table
	.short _021EAC52 - _021EAC48 - 2 ; case 0
	.short _021EAC70 - _021EAC48 - 2 ; case 1
	.short _021EAC80 - _021EAC48 - 2 ; case 2
	.short _021EAC98 - _021EAC48 - 2 ; case 3
	.short _021EACBC - _021EAC48 - 2 ; case 4
_021EAC52:
	mov r1, #9
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	bl ov14_021F29E4
	ldr r2, [r4, #0x34]
	ldr r1, _021EACD0 ; =0x000088CA
	add r0, r4, #0
	ldrh r1, [r2, r1]
	mov r2, #2
	bl ov14_021E7AE4
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021EACCC
_021EAC70:
	add r0, r4, #0
	bl ov14_021E7B98
	cmp r0, #0
	bne _021EACCC
	mov r0, #2
	strh r0, [r5, #0x10]
	b _021EACCC
_021EAC80:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021EACCC
_021EAC98:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EACCC
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #4
	strh r0, [r5, #0x10]
	b _021EACCC
_021EACBC:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	mov r0, #0
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_021EACCC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EACD0: .word 0x000088CA
	thumb_func_end ov14_021EAC24

	thumb_func_start ov14_021EACD4
ov14_021EACD4: ; 0x021EACD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x2f
	ldr r5, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov14_021E8514
	add r7, r0, #0
	add r0, r4, #0
	bl ov14_021E80A8
	add r6, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl sub_02019978
	ldrh r0, [r5, #0x10]
	cmp r0, #0xa
	bhi _021EAD6C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAD10: ; jump table
	.short _021EAD26 - _021EAD10 - 2 ; case 0
	.short _021EAD60 - _021EAD10 - 2 ; case 1
	.short _021EAD80 - _021EAD10 - 2 ; case 2
	.short _021EAEBA - _021EAD10 - 2 ; case 3
	.short _021EAEF0 - _021EAD10 - 2 ; case 4
	.short _021EAEF0 - _021EAD10 - 2 ; case 5
	.short _021EAEF0 - _021EAD10 - 2 ; case 6
	.short _021EAEF0 - _021EAD10 - 2 ; case 7
	.short _021EAEF0 - _021EAD10 - 2 ; case 8
	.short _021EAEF0 - _021EAD10 - 2 ; case 9
	.short _021EAECA - _021EAD10 - 2 ; case 10
_021EAD26:
	ldr r0, [r4, #0x34]
	ldr r1, _021EAEF8 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EAD50
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	mov r0, #1
	strh r0, [r5, #0x10]
	b _021EAEF0
_021EAD50:
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov14_021E8434
	mov r0, #0xa
	strh r0, [r5, #0x10]
	b _021EAEF0
_021EAD60:
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	bne _021EAD6E
_021EAD6C:
	b _021EAEF0
_021EAD6E:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
	mov r0, #2
	strh r0, [r5, #0x10]
_021EAD80:
	ldr r0, [r4, #0x34]
	ldr r1, _021EAEFC ; =0x0000044A
	ldrb r2, [r0, r1]
	cmp r2, #1
	bne _021EADA4
	cmp r6, #0
	bne _021EADA4
	mov r2, #2
	strb r2, [r0, r1]
	add r0, r4, #0
	mov r1, #0x28
	bl ov14_021F69F0
	add r0, r4, #0
	mov r1, #0x81
	mov r2, #0
	bl ov14_021F3488
_021EADA4:
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	cmp r0, #0
	bne _021EAE60
	ldr r1, [r4, #0x34]
	ldr r0, _021EAEFC ; =0x0000044A
	ldr r2, _021EAF00 ; =0x000040B8
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021EADD0
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E7960
	b _021EADE4
_021EADD0:
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _021EAF04 ; =ov14_021F7BF0
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov14_021E79AC
_021EADE4:
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r7, r6, #0
	cmp r6, #0xff
	bne _021EADF6
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
	b _021EAE0E
_021EADF6:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	add r2, r6, #0
	bl ov14_021E6AA0
	cmp r0, #0
	bne _021EAE0E
	add r0, r4, #0
	add r0, #0x21
	ldrb r6, [r0]
_021EAE0E:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r6, r0
	ldr r1, [r4, #0x34]
	bne _021EAE44
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	ldr r0, [r4, #0x34]
	ldr r1, _021EAEFC ; =0x0000044A
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021EAE4E
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov14_021E7FEC
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F3488
	b _021EAE4E
_021EAE44:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
_021EAE4E:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #1
	bl ov14_021E7AD4
	mov r0, #3
	strh r0, [r5, #0x10]
	b _021EAEF0
_021EAE60:
	cmp r7, #0
	bne _021EAE90
	ldr r0, [r4, #0x34]
	ldr r1, _021EAEFC ; =0x0000044A
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021EAE90
	ldr r2, [sp, #4]
	cmp r2, #0x10
	blo _021EAE7E
	ldr r1, [sp]
	cmp r1, #0x30
	blo _021EAE7E
	cmp r2, #0x68
	blo _021EAE90
_021EAE7E:
	ldr r1, _021EAEFC ; =0x0000044A
	mov r2, #1
	strb r2, [r0, r1]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7FB8
_021EAE90:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x34]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B5C
	ldr r2, [sp, #4]
	ldr r1, [r4, #0x34]
	ldr r0, _021EAF00 ; =0x000040B8
	str r2, [r1, r0]
	ldr r2, [sp]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r2, [r1, r0]
	b _021EAEF0
_021EAEBA:
	add r0, r4, #0
	bl ov14_021E7B8C
	cmp r0, #0
	bne _021EAEF0
	mov r0, #0xa
	strh r0, [r5, #0x10]
	b _021EAEF0
_021EAECA:
	cmp r7, #0
	bne _021EAEF0
	cmp r6, #0
	bne _021EAEF0
	ldr r0, [r4, #0x34]
	ldr r1, _021EAEF8 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021EAEE8
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	bl ov14_021F3B3C
_021EAEE8:
	mov r0, #0
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021EAEF0:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAEF8: .word 0x000088C8
_021EAEFC: .word 0x0000044A
_021EAF00: .word 0x000040B8
_021EAF04: .word ov14_021F7BF0
	thumb_func_end ov14_021EACD4


    .rodata

_021F7BBC:
	.byte 0x08, 0x9F, 0x28, 0x9F

ov14_021F7BC0: ; 0x021F7BC0
	.byte 0x39, 0x00, 0xAF, 0x01, 0x7F, 0x00, 0x13, 0x00

ov14_021F7BC8: ; 0x021F7BC8
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F7BD8: ; 0x021F7BD8
	.byte 0x1F, 0x36, 0x0F, 0x26, 0x41, 0x58, 0x0F, 0x26
	.byte 0x63, 0x7A, 0x0F, 0x26, 0x85, 0x9C, 0x0F, 0x26, 0xA7, 0xBE, 0x0F, 0x26, 0xC9, 0xE0, 0x0F, 0x26

ov14_021F7BF0: ; 0x021F7BF0
	.byte 0x1A, 0x39, 0x3A, 0x51, 0x3E, 0x5D, 0x42, 0x59, 0x1A, 0x39, 0x5A, 0x71, 0x3E, 0x5D, 0x62, 0x79
	.byte 0x1A, 0x39, 0x7A, 0x91, 0x3E, 0x5D, 0x82, 0x99

ov14_021F7C08: ; 0x021F7C08
	.byte 0xB2, 0xD1, 0x3A, 0x51, 0xD6, 0xF5, 0x42, 0x59
	.byte 0xB2, 0xD1, 0x5A, 0x71, 0xD6, 0xF5, 0x62, 0x79, 0xB2, 0xD1, 0x7A, 0x91, 0xD6, 0xF5, 0x82, 0x99

ov14_021F7C20: ; 0x021F7C20
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F7C3C: ; 0x021F7C3C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F7C58: ; 0x021F7C58
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x04, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov14_021F7C74: ; 0x021F7C74
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F7C90: ; 0x021F7C90
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x1B, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F7CAC: ; 0x021F7CAC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F7CC8: ; 0x021F7CC8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x06, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov14_021F7CE4: ; 0x021F7CE4
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00

ov14_021F7D0C: ; 0x021F7D0C
	.byte 0x00, 0x01, 0x02, 0x03
	.byte 0x04, 0x00, 0x00, 0x00

ov14_021F7D14: ; 0x021F7D14
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x06, 0x07, 0xFF

