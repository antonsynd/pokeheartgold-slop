	.include "asm/macros.inc"
	.include "overlay_41_0224B21C.inc"
	.include "global.inc"
	.public AccessoryPortrait_Init
	.public AccessoryPortrait_Main
	.extern ov41_0224B530
	.extern ov41_0224B554
	.extern ov41_0224BBF0
	.extern ov41_0224BC04
	.extern ov41_0224BCA4
	.extern ov41_0224BCF0
	.extern ov41_0224BDCC

    .text

	.text
	thumb_func_start AccessoryPortrait_Init
AccessoryPortrait_Init: ; 0x0224BA10
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #2
	add r4, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl Heap_Create
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl Heap_Create
	mov r1, #0x1a
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0xd
	bl OverlayManager_CreateAndGetData
	mov r2, #0x1a
	mov r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	bl memset
	ldr r0, _0224BAC4 ; =ov41_0224BBF0
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	add r0, r4, #0
	bl OverlayManager_GetArgs
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_0202B9B8
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	bl ov41_02246130
	ldr r0, _0224BAC8 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0xe
	bl ov41_02246670
	ldr r0, [r5, #0x54]
	str r0, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r1, [r5]
	add r0, sp, #0
	bl ov41_0224B530
	str r0, [r5, #0x10]
	add r0, r5, #0
	bl ov41_0224BC04
	add r0, r5, #0
	bl ov41_0224BCA4
	add r0, r5, #0
	bl ov41_0224BCF0
	add r0, r5, #0
	bl ov41_0224BDCC
	add r0, r5, #0
	bl ov41_0224BE5C
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224BAC4: .word ov41_0224BBF0
_0224BAC8: .word gSystem + 0x60
	thumb_func_end AccessoryPortrait_Init

	thumb_func_start AccessoryPortrait_Main
AccessoryPortrait_Main: ; 0x0224BACC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl OverlayManager_GetData
	add r5, r0, #0
	bl Thunk_G3X_Reset
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r0, [r5, #0x10]
	bl ov41_0224B554
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
	add r5, #0x14
	add r0, r5, #0
	bl ov41_022466C8
	ldr r1, [r4]
	cmp r1, #5
	bhi _0224BB96
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BB08: ; jump table
	.short _0224BB14 - _0224BB08 - 2 ; case 0
	.short _0224BB1A - _0224BB08 - 2 ; case 1
	.short _0224BB38 - _0224BB08 - 2 ; case 2
	.short _0224BB48 - _0224BB08 - 2 ; case 3
	.short _0224BB68 - _0224BB08 - 2 ; case 4
	.short _0224BB88 - _0224BB08 - 2 ; case 5
_0224BB14:
	add r0, r1, #1
	str r0, [r4]
	b _0224BB96
_0224BB1A:
	mov r0, #6
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #5
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224BB96
_0224BB38:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0224BB96
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224BB96
_0224BB48:
	ldr r0, _0224BB9C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0224BB5A
	bl System_GetTouchNew
	cmp r0, #0
	beq _0224BB96
_0224BB5A:
	ldr r0, _0224BBA0 ; =0x000005DD
	bl PlaySE
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224BB96
_0224BB68:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224BB96
_0224BB88:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0224BB96
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224BB96:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0224BB9C: .word gSystem
_0224BBA0: .word 0x000005DD
	thumb_func_end AccessoryPortrait_Main

