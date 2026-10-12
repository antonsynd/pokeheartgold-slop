	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public NintendoWfc_Init
	.public NintendoWfc_Main
	.extern ov72_022378DC
	.extern ov72_02238144
	.extern ov72_02238778
	.extern ov72_022387A0
	.extern ov72_022387D8
	.extern ov72_0223B354
	.extern ov72_0223B654
	.extern ov72_0223B658
	.extern ov72_0223B65C
	.extern ov72_0223B92C

	.text

	.text
	thumb_func_start NintendoWfc_Init
NintendoWfc_Init: ; 0x02237E20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _02237E36
	cmp r0, #1
	bne _02237E34
	b _02237F4A
_02237E34:
	b _02237F60
_02237E36:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02237F68 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _02237F6C ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r2, #5
	mov r0, #3
	mov r1, #0x43
	lsl r2, r2, #0x10
	bl Heap_Create
	bl LoadDwcOverlay
	bl LoadOVY38
	mov r0, #0x43
	bl sub_02039FD8
	ldr r1, _02237F70 ; =0x000013A4
	add r0, r6, #0
	mov r2, #0x43
	bl OverlayManager_CreateAndGetData
	ldr r2, _02237F70 ; =0x000013A4
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x43
	bl BgConfig_Alloc
	str r0, [r4, #4]
	ldr r0, _02237F74 ; =ov72_0223B92C
	add r2, sp, #0
	ldr r3, _02237F78 ; =ov72_0223B354
	str r4, [r0, #4]
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r7, #0
	bl SetBothScreensModesAndDisable
	mov r0, #0xb
	mov r1, #0x20
	mov r2, #0x43
	bl MessageFormat_New_Custom
	mov r1, #0xbd
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _02237F7C ; =0x00000306
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x43
	bl NewMsgDataFromNarc
	ldr r1, _02237F80 ; =0x00000BD4
	ldr r2, _02237F84 ; =0x0000030A
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x43
	bl NewMsgDataFromNarc
	ldr r1, _02237F88 ; =0x00000BD8
	str r0, [r4, r1]
	mov r2, #0x32
	mov r0, #0
	mov r1, #0x1b
	lsl r2, r2, #4
	mov r3, #0x43
	bl NewMsgDataFromNarc
	ldr r1, _02237F8C ; =0x00000BDC
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	add r0, r4, #0
	add r1, r6, #0
	bl ov72_02238144
	add r0, r4, #0
	bl ov72_022387D8
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	ldr r1, _02237F90 ; =0x00020020
	mov r0, #0x43
	bl Heap_Alloc
	str r0, [r4, #0x24]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl NNS_FndCreateExpHeapEx
	str r0, [r4, #0x28]
	ldr r1, _02237F94 ; =0x0000047D
	mov r0, #0xb
	mov r2, #1
	bl Sound_SetSceneAndPlayBGM
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r2, _02237F98 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #1
	str r0, [r5]
	b _02237F60
_02237F4A:
	bl sub_02034D8C
	mov r0, #4
	mov r1, #0x43
	bl FontID_Alloc
	mov r0, #0
	str r0, [r5]
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02237F60:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237F68: .word 0xFFFFE0FF
_02237F6C: .word 0x04001000
_02237F70: .word 0x000013A4
_02237F74: .word ov72_0223B92C
_02237F78: .word ov72_0223B354
_02237F7C: .word 0x00000306
_02237F80: .word 0x00000BD4
_02237F84: .word 0x0000030A
_02237F88: .word 0x00000BD8
_02237F8C: .word 0x00000BDC
_02237F90: .word 0x00020020
_02237F94: .word 0x0000047D
_02237F98: .word 0x04000304
	thumb_func_end NintendoWfc_Init

	thumb_func_start NintendoWfc_Main
NintendoWfc_Main: ; 0x02237F9C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl OverlayManager_GetData
	add r5, r0, #0
	bl ov00_021ECB40
	bl ov72_022378DC
	bl ov00_021ECB40
	ldr r1, [r4]
	cmp r1, #5
	bhi _02238044
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02237FC4: ; jump table
	.short _02237FD0 - _02237FC4 - 2 ; case 0
	.short _02237FEC - _02237FC4 - 2 ; case 1
	.short _02238000 - _02237FC4 - 2 ; case 2
	.short _0223800E - _02237FC4 - 2 ; case 3
	.short _02238022 - _02237FC4 - 2 ; case 4
	.short _02238040 - _02237FC4 - 2 ; case 5
_02237FD0:
	bl sub_02034DB8
	cmp r0, #0
	beq _02238044
	ldr r1, [r5, #0x28]
	ldr r0, _02238054 ; =ov72_0223B92C
	str r1, [r0]
	ldr r0, _02238058 ; =ov72_02238778
	ldr r1, _0223805C ; =ov72_022387A0
	bl ov00_021EC294
	mov r0, #1
	str r0, [r4]
	b _02238044
_02237FEC:
	ldr r3, [r5, #0x10]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _02238060 ; =ov72_0223B654
	add r0, r5, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r4]
	b _02238044
_02238000:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02238044
	mov r0, #3
	str r0, [r4]
	b _02238044
_0223800E:
	ldr r3, [r5, #0x10]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _02238064 ; =ov72_0223B658
	add r0, r5, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r4]
	b _02238044
_02238022:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02238044
	ldr r3, [r5, #0x10]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _02238068 ; =ov72_0223B65C
	ldr r1, [r4]
	ldr r2, [r2, r6]
	add r0, r5, #0
	blx r2
	str r0, [r4]
	b _02238044
_02238040:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02238044:
	ldr r0, _0223806C ; =0x00000BF8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02238050
	bl SpriteList_RenderAndAnimateSprites
_02238050:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02238054: .word ov72_0223B92C
_02238058: .word ov72_02238778
_0223805C: .word ov72_022387A0
_02238060: .word ov72_0223B654
_02238064: .word ov72_0223B658
_02238068: .word ov72_0223B65C
_0223806C: .word 0x00000BF8
	thumb_func_end NintendoWfc_Main

