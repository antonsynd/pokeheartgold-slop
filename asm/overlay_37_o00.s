	.include "asm/macros.inc"
	.include "overlay_37.inc"
	.include "global.inc"
	.public ov37_021E5900
	.public ov37_021E5A84
	.extern ov37_021E5CC8
	.extern ov37_021E5CF0
	.extern ov37_021E5D10
	.extern ov37_021E5E30
	.extern ov37_021E5F98
	.extern ov37_021E6090
	.extern ov37_021E60C0
	.extern ov37_021E6244
	.extern ov37_021E6418
	.extern ov37_021E741C
	.extern ov37_021E7478
	.extern ov37_021E75C4
	.extern ov37_021E76F0
	.extern ov37_021E784C
	.extern ov37_021E7D20

	.text

	.text
	thumb_func_start ov37_021E5900
ov37_021E5900: ; 0x021E5900
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	cmp r1, #0
	beq _021E5916
	cmp r1, #1
	bne _021E5914
	b _021E5A56
_021E5914:
	b _021E5A64
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
	ldr r0, _021E5A6C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E5A70 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #3
	mov r1, #0x27
	lsl r2, r2, #6
	bl Heap_Create
	ldr r1, _021E5A74 ; =0x0000940C
	add r0, r6, #0
	mov r2, #0x27
	bl OverlayManager_CreateAndGetData
	ldr r2, _021E5A74 ; =0x0000940C
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x27
	bl BgConfig_Alloc
	str r0, [r4]
	mov r0, #0x27
	bl MessageFormat_New
	str r0, [r4, #0xc]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xfc
	mov r3, #0x27
	bl NewMsgDataFromNarc
	str r0, [r4, #0x10]
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	bl ov37_021E5CF0
	ldr r0, [r4]
	bl ov37_021E5D10
	mov r0, #0
	add r1, r0, #0
	bl sub_0200FBF4
	mov r0, #1
	mov r1, #0
	bl sub_0200FBF4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x11
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r6, #0
	bl OverlayManager_GetArgs
	str r0, [r4, #8]
	mov r0, #0x4e
	mov r1, #0x27
	bl NARC_New
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov37_021E5F98
	bl sub_020210BC
	mov r0, #2
	bl sub_02021148
	ldr r0, _021E5A78 ; =ov37_021E5CC8
	ldr r1, [r4]
	bl Main_SetVBlankIntrCB
	add r0, r4, #0
	bl ov37_021E5E30
	bl ov37_021E6090
	add r0, r4, #0
	add r1, r7, #0
	bl ov37_021E60C0
	add r0, r4, #0
	bl ov37_021E6244
	add r0, r4, #0
	add r1, r6, #0
	bl ov37_021E6418
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	ldr r2, _021E5A7C ; =0x04000304
	ldr r0, _021E5A80 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl sub_0208F814
	mov r0, #0
	mov r1, #1
	bl sub_020398D4
	bl sub_0203769C
	cmp r0, #0
	bne _021E5A30
	mov r0, #3
	bl sub_02038C1C
_021E5A30:
	bl sub_0203A880
	bl sub_0203769C
	cmp r0, #0
	bne _021E5A48
	mov r0, #1
	bl sub_0205A904
	mov r0, #1
	bl sub_020356EC
_021E5A48:
	add r0, r7, #0
	bl NARC_Delete
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021E5A64
_021E5A56:
	bl OverlayManager_GetData
	mov r0, #0
	str r0, [r5]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E5A64:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E5A6C: .word 0xFFFFE0FF
_021E5A70: .word 0x04001000
_021E5A74: .word 0x0000940C
_021E5A78: .word ov37_021E5CC8
_021E5A7C: .word 0x04000304
_021E5A80: .word 0xFFFF7FFF
	thumb_func_end ov37_021E5900

	thumb_func_start ov37_021E5A84
ov37_021E5A84: ; 0x021E5A84
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl sub_0203769C
	cmp r0, #0
	bne _021E5AAA
	ldr r0, _021E5B80 ; =0x000093B4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E5AAA
	bl sub_02033250
	ldr r1, _021E5B80 ; =0x000093B4
	ldr r2, [r4, r1]
	and r0, r2
	str r0, [r4, r1]
_021E5AAA:
	mov r0, #3
	ldr r1, [r5]
	lsl r0, r0, #8
	str r1, [r4, r0]
	ldr r1, [r5]
	add r0, r4, #0
	bl ov37_021E784C
	ldr r1, [r5]
	cmp r1, #3
	bhi _021E5B74
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5ACC: ; jump table
	.short _021E5AD4 - _021E5ACC - 2 ; case 0
	.short _021E5B02 - _021E5ACC - 2 ; case 1
	.short _021E5B48 - _021E5ACC - 2 ; case 2
	.short _021E5B68 - _021E5ACC - 2 ; case 3
_021E5AD4:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5B74
	bl sub_0203769C
	cmp r0, #0
	beq _021E5AFC
	bl ov37_021E75C4
	cmp r0, #2
	blt _021E5B74
	mov r1, #0
	mov r0, #0x80
	add r2, r1, #0
	bl sub_02037030
	mov r0, #1
	str r0, [r5]
	b _021E5B74
_021E5AFC:
	mov r0, #1
	str r0, [r5]
	b _021E5B74
_021E5B02:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #3
	ldr r0, _021E5B84 ; =ov37_021E7D20
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021E5B18
	add r0, r4, #0
	blx r2
	str r0, [r5]
_021E5B18:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r2, _021E5B88 ; =0x000E0D0F
	add r0, r4, r0
	mov r1, #0
	add r3, r4, #0
	bl ov37_021E7478
	bl sub_0203769C
	cmp r0, #0
	bne _021E5B3E
	add r0, r4, #0
	bl ov37_021E76F0
	ldr r1, [r5]
	cmp r1, #1
	bne _021E5B3E
	str r0, [r5]
_021E5B3E:
	ldr r0, _021E5B8C ; =0x00004374
	add r0, r4, r0
	bl ov37_021E741C
	b _021E5B74
_021E5B48:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r3, r0, #3
	ldr r0, _021E5B84 ; =ov37_021E7D20
	ldr r2, [r0, r3]
	cmp r2, #0
	beq _021E5B74
	ldr r0, _021E5B90 ; =ov37_021E7D20 + 4
	ldr r0, [r0, r3]
	cmp r0, #0
	beq _021E5B74
	add r0, r4, #0
	blx r2
	str r0, [r5]
	b _021E5B74
_021E5B68:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5B74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5B74:
	ldr r0, [r4, #0x34]
	bl SpriteList_RenderAndAnimateSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E5B80: .word 0x000093B4
_021E5B84: .word ov37_021E7D20
_021E5B88: .word 0x000E0D0F
_021E5B8C: .word 0x00004374
_021E5B90: .word ov37_021E7D20 + 4
	thumb_func_end ov37_021E5A84

