	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02237FAC
	.extern ov57_02238044
	.extern ov57_02238260

	.text

	.text
	thumb_func_start ov57_02237FAC
ov57_02237FAC: ; 0x02237FAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r0, #0xd3
	mov r4, #0
	add r3, r6, #0
	lsl r0, r0, #2
_02237FBA:
	ldr r2, [r3, r0]
	cmp r2, #1
	beq _0223801A
	mov r0, #0x45
	add r1, r6, r1
	lsl r0, r0, #4
	ldrb r2, [r1, r0]
	lsl r5, r4, #4
	mov r0, #0x35
	add r1, r6, r5
	lsl r0, r0, #4
	strb r2, [r1, r0]
	add r1, r0, #1
	add r7, r6, r1
	mov r1, #0xbe
	add r0, r0, #2
	strb r1, [r7, r5]
	add r0, r6, r0
	mov r1, #0x46
	strb r1, [r0, r5]
	str r0, [sp]
	add r0, sp, #8
	add r1, sp, #4
	bl System_GetTouchHeldCoords
	ldr r0, [sp, #8]
	strb r0, [r7, r5]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0, r5]
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov57_02238260
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov57_02238044
	mov r0, #0xd3
	mov r2, #1
	add r1, r6, r5
	lsl r0, r0, #2
	str r2, [r1, r0]
	add sp, #0xc
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0223801A:
	add r4, r4, #1
	add r3, #0x10
	cmp r4, #8
	blt _02237FBA
	mov r0, #0xff
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov57_02237FAC

