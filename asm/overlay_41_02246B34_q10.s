	.include "macros.inc"
	.include "overlay_41_02246B34.inc"
	.include "global.inc"
	.public ov41_02246DE0
	.extern ov41_02247240
	.extern ov41_02247288
	.extern ov41_02247334
	.extern ov41_02247478
	.extern ov41_02247480
	.extern ov41_022474D4
	.extern ov41_0224765C

    .text

	.text
	thumb_func_start ov41_02246DE0
ov41_02246DE0: ; 0x02246DE0
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl Heap_Create
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl Heap_Create
	mov r1, #0x6f
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0xd
	bl OverlayManager_CreateAndGetData
	mov r2, #0x6f
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	ldr r0, _02246EF0 ; =ov41_02247478
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	add r0, r5, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, _02246EF4 ; =0x000006DC
	str r0, [r4, r1]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02246E3E
	bl MenuInputStateMgr_GetState
	ldr r1, _02246EF8 ; =0x000006EC
	b _02246E42
_02246E3E:
	mov r0, #0
	add r1, #0x10
_02246E42:
	str r0, [r4, r1]
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r5, #8]
	add r1, r4, r1
	bl ov41_02248E84
	add r0, r4, #0
	bl ov41_02247240
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x8d
	mov r2, #0xd
	bl ov41_022499B4
	mov r0, #0xaf
	lsl r0, r0, #2
	mov r1, #0xd
	bl ov41_02245EA0
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #0xa
	mov r3, #0
	bl ov41_02247288
	add r0, r4, #0
	bl ov41_02247334
	add r0, r4, #0
	mov r1, #0
	bl ov41_02247480
	add r0, r4, #0
	bl ov41_022474D4
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov41_0224765C
	ldr r0, _02246EFC ; =0x00000568
	mov r2, #0xfd
	add r1, r4, r0
	str r1, [sp]
	mov r1, #1
	sub r0, #0xd0
	lsl r2, r2, #2
	str r1, [sp, #4]
	add r1, r4, r2
	sub r2, #0x8c
	add r0, r4, r0
	add r2, r4, r2
	add r3, r4, #0
	bl ov41_02248F18
	mov r0, #0xd
	bl YesNoPrompt_Create
	ldr r1, _02246F00 ; =0x000006B8
	str r0, [r4, r1]
	mov r0, #0xd
	mov r1, #1
	bl AllocWindows
	ldr r2, _02246F04 ; =0x000006BC
	mov r1, #0
	str r0, [r4, r2]
	sub r2, #0xc
	str r1, [r4, r2]
	mov r0, #0x35
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02246EF0: .word ov41_02247478
_02246EF4: .word 0x000006DC
_02246EF8: .word 0x000006EC
_02246EFC: .word 0x00000568
_02246F00: .word 0x000006B8
_02246F04: .word 0x000006BC
	thumb_func_end ov41_02246DE0

