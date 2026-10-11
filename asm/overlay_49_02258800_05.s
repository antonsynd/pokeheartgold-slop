	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_02258C5C
	.public ov49_02258EEC
	.public ov49_022593C0

    .text

	thumb_func_start ov49_02258C5C
ov49_02258C5C: ; 0x02258C5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp]
	bl ov49_022593C0
	add r4, r0, #0
	lsl r0, r7, #4
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [sp]
	mov r2, #0
	lsl r0, r0, #4
	strh r0, [r1, #2]
	strh r6, [r1, #4]
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _02258C8C
	strh r2, [r1, #0xa]
	b _02258C90
_02258C8C:
	mov r0, #0x61
	strh r0, [r1, #0xa]
_02258C90:
	ldr r0, [r5]
	add r1, sp, #4
	bl ov42_022280B8
	str r0, [r4]
	ldr r0, [r5, #4]
	ldr r1, [r4]
	bl ov45_0223070C
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	str r4, [r5, #0x20]
	bl ov49_02258EEC
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02258C5C

