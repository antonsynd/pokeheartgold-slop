	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225A158
	.public ov48_0225A338
	.public ov48_0225A354
	.public ov48_0225A41C
	.public ov48_0225A428
	.public ov48_0225A430
	.public ov48_0225AD54

	.text

	thumb_func_start ov48_0225A158
ov48_0225A158: ; 0x0225A158
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r3, [r4]
	add r5, r2, #0
	cmp r3, #4
	bhi _0225A1CC
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0225A170: ; jump table
	.short _0225A17A - _0225A170 - 2 ; case 0
	.short _0225A192 - _0225A170 - 2 ; case 1
	.short _0225A19C - _0225A170 - 2 ; case 2
	.short _0225A1AC - _0225A170 - 2 ; case 3
	.short _0225A1BE - _0225A170 - 2 ; case 4
_0225A17A:
	add r1, r5, #0
	bl ov48_0225A338
	mov r0, #0x6e
	mov r1, #0xb9
	lsl r0, r0, #2
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov48_0225AD54
	pop {r3, r4, r5, pc}
_0225A192:
	bl ov48_0225A354
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225A19C:
	add r1, r5, #0
	bl ov48_0225A41C
	cmp r0, #1
	bne _0225A1CC
	mov r0, #0
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225A1AC:
	bl ov48_0225A428
	add r0, r4, #0
	add r1, r5, #0
	bl ov48_0225A430
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225A1BE:
	add r1, r5, #0
	bl ov48_0225A430
	cmp r0, #1
	bne _0225A1CC
	mov r0, #0
	str r0, [r4]
_0225A1CC:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov48_0225A158

