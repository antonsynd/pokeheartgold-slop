	.include "asm/macros.inc"
	.include "overlay_47.inc"
	.include "global.inc"
	.public ov47_02258800
	.extern ov47_02258A14
	.extern ov47_02258A1C
	.extern ov47_02258C70
	.extern ov47_02259228
	.extern ov47_02259FB0

	.text

	.text
	thumb_func_start ov47_02258800
ov47_02258800: ; 0x02258800
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	bl OverlayManager_GetArgs
	mov r2, #5
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x81
	lsl r2, r2, #0x10
	bl Heap_Create
	mov r1, #0xa3
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x81
	bl OverlayManager_CreateAndGetData
	mov r2, #0xa3
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #0x81
	bl ov47_02258A1C
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r1, [r5, #4]
	add r0, r4, r0
	mov r2, #0x81
	bl ov47_02258C70
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r2, [r5]
	add r0, r4, r0
	add r1, r4, #0
	mov r3, #0x81
	bl ov47_02259228
	ldr r0, [r5, #8]
	cmp r0, #2
	blt _02258862
	bl GF_AssertFail
_02258862:
	mov r1, #0x81
	str r1, [sp]
	add r3, r5, #0
	ldr r5, [r5, #8]
	add r0, r1, #0
	lsl r6, r5, #2
	ldr r5, _02258890 ; =ov47_02259FB0
	add r0, #0xf7
	add r1, #0xc3
	ldr r5, [r5, r6]
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #0
	blx r5
	ldr r0, _02258894 ; =ov47_02258A14
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02258890: .word ov47_02259FB0
_02258894: .word ov47_02258A14
	thumb_func_end ov47_02258800

