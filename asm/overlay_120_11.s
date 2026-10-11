	.include "asm/macros.inc"
	.include "overlay_120.inc"
	.include "global.inc"
	.public ov120_0225F704
	.public ov120_0225F714
	.public ov120_0225F8B0
	.public ov120_0225F90C
	.public ov120_0225F970
	.public ov120_0225F9D4
	.extern ov120_0225F0FC
	.extern ov120_0225F118
	.extern ov120_0225F120
	.extern ov120_0225F14C
	.extern ov120_0225F6FC
	.extern ov120_022601F4
	.extern ov120_022601F8
	.extern ov120_022601FC
	.extern ov120_02260200

	.text

	.text
	thumb_func_start ov120_0225F704
ov120_0225F704: ; 0x0225F704
	push {r3, lr}
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #4
	ldr r2, [r2]
	blx r2
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov120_0225F704

	thumb_func_start ov120_0225F714
ov120_0225F714: ; 0x0225F714
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	ldr r4, [r5, #0xc]
	cmp r0, #5
	bls _0225F726
	b _0225F892
_0225F726:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F732: ; jump table
	.short _0225F73E - _0225F732 - 2 ; case 0
	.short _0225F7F8 - _0225F732 - 2 ; case 1
	.short _0225F810 - _0225F732 - 2 ; case 2
	.short _0225F81C - _0225F732 - 2 ; case 3
	.short _0225F826 - _0225F732 - 2 ; case 4
	.short _0225F842 - _0225F732 - 2 ; case 5
_0225F73E:
	mov r1, #0x67
	mov r0, #4
	lsl r1, r1, #2
	bl Heap_Alloc
	mov r2, #0x67
	str r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r4, [r5, #0xc]
	mov r0, #4
	mov r1, #1
	bl AllocWindows
	str r0, [r4]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x10]
	ldr r1, [r4]
	ldr r0, [r0, #8]
	mov r2, #3
	bl AddWindowParameterized
	mov r1, #0
	add r0, sp, #0x14
	strh r1, [r0]
	mov r0, #3
	add r1, sp, #0x14
	mov r2, #2
	mov r3, #0x1e
	bl BG_LoadPlttData
	ldr r0, [r4]
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r4]
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x10
	mov r1, #2
	mov r2, #1
	bl ov01_021F05C4
	mov r3, #6
	mov r0, #0
	lsl r3, r3, #6
	str r0, [sp]
	add r1, r4, r3
	add r2, r4, #0
	sub r3, #0x34
	ldr r0, [r5, #0x20]
	add r2, #0x10
	add r3, r4, r3
	bl ov120_0225F9D4
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5, #0x10]
	ldr r1, _0225F8A4 ; =ov120_0225F8B0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	str r0, [r4, #8]
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov120_0225F6FC
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r1, _0225F8A8 ; =ov120_0225F90C
	add r0, r4, r0
	bl ov120_0225F6FC
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r1, _0225F8AC ; =ov120_0225F970
	add r0, r4, r0
	bl ov120_0225F6FC
	mov r0, #1
	str r0, [r5]
	b _0225F892
_0225F7F8:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r5, #4
	bl ov01_021EFCF8
	mov r0, #2
	str r0, [r5]
	b _0225F892
_0225F810:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0225F892
	mov r0, #3
	str r0, [r5]
	b _0225F892
_0225F81C:
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #4
	str r0, [r5]
	b _0225F892
_0225F826:
	mov r0, #0x61
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [r4, #0xc]
	lsl r0, r0, #3
	add r0, r1, r0
	add r1, r4, #0
	bl ov120_0225F704
	cmp r0, #0
	beq _0225F892
	mov r0, #5
	str r0, [r5]
	b _0225F892
_0225F842:
	mov r0, #0
	bl sub_0200FC20
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0225F852
	mov r0, #1
	str r0, [r1]
_0225F852:
	ldr r0, [r4]
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, [r4]
	bl RemoveWindow
	ldr r0, [r4]
	mov r1, #1
	bl WindowArray_Delete
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl Sprite_Delete
	mov r1, #0x53
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x10
	add r1, r4, r1
	bl ov01_021F06EC
	add r4, #0x10
	add r0, r4, #0
	bl ov01_021F05F4
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021EFCDC
	add sp, #0x18
	pop {r4, r5, r6, pc}
_0225F892:
	ldr r0, [r5]
	cmp r0, #5
	beq _0225F89E
	ldr r0, [r4, #0x10]
	bl SpriteList_RenderAndAnimateSprites
_0225F89E:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0225F8A4: .word ov120_0225F8B0
_0225F8A8: .word ov120_0225F90C
_0225F8AC: .word ov120_0225F970
	thumb_func_end ov120_0225F714

	thumb_func_start ov120_0225F8B0
ov120_0225F8B0: ; 0x0225F8B0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0225F8C6
	cmp r0, #1
	beq _0225F8DE
	cmp r0, #2
	beq _0225F8F6
	b _0225F904
_0225F8C6:
	mov r0, #4
	bl ov120_0225F0FC
	str r0, [r5, #4]
	ldr r2, [r5]
	mov r1, #0
	mov r3, #0xf
	bl ov120_0225F120
	mov r0, #1
	str r0, [r4]
	b _0225F908
_0225F8DE:
	ldr r0, [r5, #4]
	bl ov120_0225F14C
	add r6, r0, #0
	ldr r0, [r5]
	bl ScheduleWindowCopyToVram
	cmp r6, #0
	beq _0225F908
	mov r0, #2
	str r0, [r4]
	b _0225F908
_0225F8F6:
	ldr r0, [r5, #4]
	bl ov120_0225F118
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225F904:
	bl GF_AssertFail
_0225F908:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov120_0225F8B0

	thumb_func_start ov120_0225F90C
ov120_0225F90C: ; 0x0225F90C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _0225F922
	cmp r1, #1
	beq _0225F946
	cmp r1, #2
	beq _0225F954
	b _0225F964
_0225F922:
	ldr r0, [r0, #8]
	bl HBlankSystem_Stop
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x2a
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	str r0, [r4]
	b _0225F968
_0225F946:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225F968
	mov r0, #2
	str r0, [r4]
	b _0225F968
_0225F954:
	ldr r0, [r0, #8]
	bl HBlankSystem_Start
	mov r0, #0
	str r0, [r4]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0225F964:
	bl GF_AssertFail
_0225F968:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov120_0225F90C

	thumb_func_start ov120_0225F970
ov120_0225F970: ; 0x0225F970
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _0225F986
	cmp r1, #1
	beq _0225F9AA
	cmp r1, #2
	beq _0225F9B8
	b _0225F9C8
_0225F986:
	ldr r0, [r0, #8]
	bl HBlankSystem_Stop
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x18
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	str r0, [r4]
	b _0225F9CC
_0225F9AA:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225F9CC
	mov r0, #2
	str r0, [r4]
	b _0225F9CC
_0225F9B8:
	ldr r0, [r0, #8]
	bl HBlankSystem_Start
	mov r0, #0
	str r0, [r4]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0225F9C8:
	bl GF_AssertFail
_0225F9CC:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov120_0225F970

	thumb_func_start ov120_0225F9D4
ov120_0225F9D4: ; 0x0225F9D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r0, #2
	bne _0225F9EA
	bl GF_AssertFail
_0225F9EA:
	ldr r0, [sp, #0x30]
	ldr r3, _0225FA48 ; =ov120_02260200
	lsl r6, r0, #4
	mov r0, #1
	str r0, [sp]
	ldr r0, _0225FA4C ; =ov120_022601F4
	ldr r3, [r3, r6]
	ldr r0, [r0, r6]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, _0225FA50 ; =ov120_022601FC
	add r2, r7, #0
	ldr r0, [r0, r6]
	str r0, [sp, #8]
	ldr r0, _0225FA54 ; =ov120_022601F8
	ldr r0, [r0, r6]
	str r0, [sp, #0xc]
	ldr r0, _0225FA58 ; =0x000927C0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	bl ov01_021F0614
	mov r0, #0
	str r0, [sp]
	mov r2, #2
	mov r3, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov01_021F0718
	str r0, [r5]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r5]
	mov r1, #0x10
	bl Sprite_SetDrawPriority
	ldr r0, [r5]
	mov r1, #1
	bl Sprite_SetPriority
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FA48: .word ov120_02260200
_0225FA4C: .word ov120_022601F4
_0225FA50: .word ov120_022601FC
_0225FA54: .word ov120_022601F8
_0225FA58: .word 0x000927C0
	thumb_func_end ov120_0225F9D4

