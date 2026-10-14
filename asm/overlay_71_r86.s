	.include "macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02248484
	.extern ov71_02247704
	.extern ov71_02247708
	.extern ov71_02248B54
	.extern ov71_02248E30
	.extern ov71_02248EB4
	.extern ov71_02249254
	.extern ov71_02249260

	.text

	.text
	thumb_func_start ov71_02248484
ov71_02248484: ; 0x02248484
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _0224852A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224849C: ; jump table
	.short _022484A6 - _0224849C - 2 ; case 0
	.short _022484B2 - _0224849C - 2 ; case 1
	.short _022484F6 - _0224849C - 2 ; case 2
	.short _0224850C - _0224849C - 2 ; case 3
	.short _02248522 - _0224849C - 2 ; case 4
_022484A6:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224852A
_022484B2:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	ble _0224852A
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #0x18
	bl ov71_02248E30
	add r0, r4, #0
	bl ov71_02248EB4
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #0
	bl ov71_02247708
	add r4, #0xd8
	ldr r0, [r4]
	mov r1, #1
	bl ov71_02247704
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224852A
_022484F6:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov71_02249260
	cmp r0, #0
	beq _0224852A
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224852A
_0224850C:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov71_02249254
	cmp r0, #0
	beq _0224852A
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224852A
_02248522:
	bl ov71_02248B54
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224852A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov71_02248484

