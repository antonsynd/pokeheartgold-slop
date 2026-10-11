#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E5900
	.public ov73_021E5AB8
	.extern _021EA7C0
	.extern ov73_021E5C74
	.extern ov73_021E5CD8
	.extern ov73_021E5D00
	.extern ov73_021E5D20
	.extern ov73_021E5E0C
	.extern ov73_021E5F38
	.extern ov73_021E6060
	.extern ov73_021E6090
	.extern ov73_021E6184
	.extern ov73_021E629C
	.extern ov73_021E7230
	.extern ov73_021E735C
	.extern ov73_021E746C
	.extern ov73_021E762C
	.extern ov73_021E7870
	.extern ov73_021EA374

	.text

	.text
	thumb_func_start ov73_021E5900
ov73_021E5900: ; 0x021E5900
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5]
	add r7, r0, #0
	cmp r1, #0
	beq _021E5916
	cmp r1, #1
	bne _021E5914
	b _021E5A80
_021E5914:
	b _021E5A8E
_021E5916:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E5A94 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E5A98 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r2, #0x41
	mov r0, #3
	mov r1, #0x32
	lsl r2, r2, #0xc
	bl Heap_Create
	mov r0, #0x54
	mov r1, #0x32
	bl NARC_New
	add r6, r0, #0
	ldr r1, _021E5A9C ; =0x00004A8C
	add r0, r7, #0
	mov r2, #0x32
	bl OverlayManager_CreateAndGetData
	ldr r2, _021E5A9C ; =0x00004A8C
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x32
	bl BgConfig_Alloc
	str r0, [r4]
	add r0, r7, #0
	bl OverlayManager_GetArgs
	str r0, [r4, #8]
	ldr r1, [r0]
	ldr r0, _021E5AA0 ; =0x00004A0C
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x10]
	bl MenuInputStateMgr_GetState
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x32
	bl MessageFormat_New
	str r0, [r4, #0x24]
	ldr r2, _021E5AA4 ; =0x000001A6
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x32
	bl NewMsgDataFromNarc
	str r0, [r4, #0x28]
	mov r0, #4
	mov r1, #0x32
	bl FontID_Alloc
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	bl ov73_021E5D00
	ldr r0, [r4]
	bl ov73_021E5D20
	mov r0, #0
	bl SetMasterBrightnessNeutral
	mov r0, #1
	bl SetMasterBrightnessNeutral
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x32
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x11
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r4, #0
	add r1, r6, #0
	bl ov73_021E5F38
	bl sub_020210BC
	mov r0, #2
	bl sub_02021148
	ldr r0, _021E5AA8 ; =ov73_021E5CD8
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	add r0, r4, #0
	add r1, r6, #0
	bl ov73_021E5E0C
	bl ov73_021E6060
	add r0, r4, #0
	add r1, r6, #0
	bl ov73_021E6090
	add r0, r4, #0
	bl ov73_021E6184
	add r0, r4, #0
	add r1, r7, #0
	bl ov73_021E629C
	add r0, r4, #0
	bl ov73_021E7230
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	ldr r2, _021E5AAC ; =0x04000304
	ldr r0, _021E5AB0 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl sub_0208FB64
	bl sub_0203893C
	mov r0, #3
	bl sub_02038C1C
	bl sub_0203769C
	cmp r0, #0
	bne _021E5A54
	mov r0, #2
	bl sub_0205A904
_021E5A54:
	bl sub_0203A880
	ldr r0, _021E5AA0 ; =0x00004A0C
	mov r1, #0xe2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov73_021EA374
	ldr r0, _021E5AB4 ; =ov73_021E5C74
	add r1, r4, #0
	mov r2, #5
	bl SysTask_CreateOnVBlankQueue
	str r0, [r4, #0x20]
	add r0, r6, #0
	bl NARC_Delete
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021E5A8E
_021E5A80:
	bl OverlayManager_GetData
	mov r0, #0
	str r0, [r5]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E5A8E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E5A94: .word 0xFFFFE0FF
_021E5A98: .word 0x04001000
_021E5A9C: .word 0x00004A8C
_021E5AA0: .word 0x00004A0C
_021E5AA4: .word 0x000001A6
_021E5AA8: .word ov73_021E5CD8
_021E5AAC: .word 0x04000304
_021E5AB0: .word 0xFFFF7FFF
_021E5AB4: .word ov73_021E5C74
	thumb_func_end ov73_021E5900

	thumb_func_start ov73_021E5AB8
ov73_021E5AB8: ; 0x021E5AB8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl sub_0203769C
	cmp r0, #0
	bne _021E5ADE
	ldr r0, _021E5B9C ; =0x00004A24
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E5ADE
	bl sub_02033250
	ldr r1, _021E5B9C ; =0x00004A24
	ldr r2, [r4, r1]
	and r0, r2
	str r0, [r4, r1]
_021E5ADE:
	ldr r1, [r5]
	cmp r1, #3
	bhi _021E5B92
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5AF0: ; jump table
	.short _021E5AF8 - _021E5AF0 - 2 ; case 0
	.short _021E5B20 - _021E5AF0 - 2 ; case 1
	.short _021E5B6E - _021E5AF0 - 2 ; case 2
	.short _021E5B86 - _021E5AF0 - 2 ; case 3
_021E5AF8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5B92
	mov r0, #1
	str r0, [r5]
	bl sub_0203769C
	cmp r0, #0
	beq _021E5B92
	bl ov73_021E746C
	cmp r0, #2
	ble _021E5B92
	mov r1, #0
	mov r0, #0x72
	add r2, r1, #0
	bl sub_02037030
	b _021E5B92
_021E5B20:
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #2
	ldr r0, _021E5BA0 ; =_021EA7C0
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021E5B36
	add r0, r4, #0
	blx r2
	str r0, [r5]
_021E5B36:
	ldr r0, _021E5BA4 ; =0x00004A14
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021E5B4E
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r2, _021E5BA8 ; =0x00010300
	add r0, r4, r0
	mov r1, #0
	add r3, r4, #0
	bl ov73_021E735C
_021E5B4E:
	add r0, r4, #0
	bl ov73_021E762C
	bl sub_0203769C
	cmp r0, #0
	bne _021E5B92
	add r0, r4, #0
	mov r1, #1
	bl ov73_021E7870
	ldr r1, [r5]
	cmp r1, #1
	bne _021E5B92
	str r0, [r5]
	b _021E5B92
_021E5B6E:
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #2
	ldr r0, _021E5BA0 ; =_021EA7C0
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021E5B92
	add r0, r4, #0
	blx r2
	str r0, [r5]
	b _021E5B92
_021E5B86:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5B92
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5B92:
	ldr r0, [r4, #0x50]
	bl SpriteList_RenderAndAnimateSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E5B9C: .word 0x00004A24
_021E5BA0: .word _021EA7C0
_021E5BA4: .word 0x00004A14
_021E5BA8: .word 0x00010300
	thumb_func_end ov73_021E5AB8

