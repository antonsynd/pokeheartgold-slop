	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_022378DC
	.extern ov57_02237CA8
	.extern ov57_02237CEC
	.extern ov57_02237E38
	.extern ov57_02237E78
	.extern ov57_022386F0
	.extern ov57_02238B28
	.extern ov57_02238BCC
	.extern ov57_02239058
	.extern ov57_022395B8
	.extern ov57_02239670
	.extern ov57_0223BB5C
	.extern ov57_0223BB84

	.text

	.text
	thumb_func_start ov57_022378DC
ov57_022378DC: ; 0x022378DC
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x34
	lsl r2, r2, #0x12
	bl Heap_Create
	mov r1, #0x46
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0x34
	bl OverlayManager_CreateAndGetData
	mov r2, #0x46
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	add r0, r5, #0
	bl OverlayManager_GetArgs
	str r0, [r4]
	mov r0, #0xb4
	mov r1, #0x34
	bl NARC_New
	ldr r1, _02237AE4 ; =0x0000045C
	str r0, [r4, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	bl MenuInputStateMgr_GetState
	ldr r1, _02237AE8 ; =0x0000040C
	str r0, [r4, r1]
	mov r0, #0x34
	bl AllocMonZeroed
	ldr r1, _02237AEC ; =0x00000458
	mov r2, #0xff
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xd4
	str r2, [r0]
	mov r5, #0
	sub r1, #0x10
	str r5, [r4, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl SealCase_CountUniqueSeals
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	beq _02237954
	mov r5, #1
_02237954:
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl SealCase_CountUniqueSeals
	asr r1, r0, #2
	lsr r1, r1, #0x1d
	add r1, r0, r1
	asr r0, r1, #3
	add r1, r5, r0
	ldr r0, _02237AF0 ; =0x0000044C
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0xa
	ble _02237974
	mov r1, #0xa
	str r1, [r4, r0]
_02237974:
	ldr r0, [r4]
	bl ov57_02237E78
	mov r1, #0xfb
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4]
	bl ov57_02237E78
	mov r1, #0x3f
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl SealCase_inventory_Get
	str r0, [r4, #0x64]
	mov r6, #0
	add r5, r4, #0
	mov r7, #0xff
_0223799C:
	ldr r0, [r4]
	add r1, r6, #0
	ldr r0, [r0, #0x20]
	bl SealCase_GetCapsuleI
	str r7, [r5, #4]
	str r0, [r5, #8]
	add r6, r6, #1
	add r5, #8
	cmp r6, #0xc
	blt _0223799C
	mov r5, #0
	add r6, r5, #0
	mov r7, #0xa2
_022379B8:
	ldr r0, [r4]
	add r0, r0, r6
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022379D6
	add r1, r7, #0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022379D6
	lsl r0, r0, #3
	add r0, r4, r0
	sub r0, r0, #4
	str r5, [r0]
_022379D6:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #6
	blt _022379B8
	mov r0, #0x34
	bl ov57_02237CA8
	bl ov57_0223BB5C
	bl ov57_02238B28
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x34
	bl BgConfig_Alloc
	add r1, r4, #0
	add r1, #0xe4
	str r0, [r1]
	mov r0, #0x40
	mov r1, #0x34
	bl GF_CreateVramTransferManager
	mov r0, #0x34
	bl PaletteData_Init
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #1
	bl PaletteData_SetAutoTransparent
	add r0, r4, #0
	add r0, #0xe8
	mov r2, #2
	ldr r0, [r0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x34
	bl PaletteData_AllocBuffers
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #1
	ldr r0, [r0]
	lsl r2, r1, #9
	mov r3, #0x34
	bl PaletteData_AllocBuffers
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #2
	ldr r0, [r0]
	lsl r2, r1, #8
	mov r3, #0x34
	bl PaletteData_AllocBuffers
	add r0, r4, #0
	add r0, #0xe8
	mov r2, #2
	ldr r0, [r0]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x34
	bl PaletteData_AllocBuffers
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl ov57_02237CEC
	bl ov57_02238BCC
	mov r0, #0x34
	bl PokepicManager_Create
	mov r1, #0x71
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x34
	mov r1, #1
	mov r2, #0
	bl sub_02016EDC
	mov r1, #0xa1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl Options_GetFrame
	add r5, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xe4
	add r1, #0xe8
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, r5, #0
	bl ov57_022395B8
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xe4
	add r1, #0xe8
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, r5, #0
	bl ov57_02239670
	add r0, r4, #0
	add r0, #0xd4
	bl ov57_02239058
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	add r0, r4, #0
	bl ov57_0223BB84
	ldr r0, _02237AF4 ; =ov57_02237E38
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	add r0, r4, #0
	bl ov57_022386F0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02237AE4: .word 0x0000045C
_02237AE8: .word 0x0000040C
_02237AEC: .word 0x00000458
_02237AF0: .word 0x0000044C
_02237AF4: .word ov57_02237E38
	thumb_func_end ov57_022378DC

