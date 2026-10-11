	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225C8D4
	.public ov49_0225CAD4

    .text

	thumb_func_start ov49_0225C8D4
ov49_0225C8D4: ; 0x0225C8D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5, #6]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _0225C8F2
	ldr r0, [r5, #0x1c]
	bl TouchHitboxController_IsTriggered
	b _0225C8F6
_0225C8F2:
	mov r0, #1
	strb r0, [r5, #3]
_0225C8F6:
	ldrb r0, [r5, #2]
	cmp r0, #1
	bne _0225C912
	mov r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0225C912
	strb r2, [r5, #2]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	str r4, [sp]
	bl ov49_0225CAD4
_0225C912:
	ldrb r1, [r5, #3]
	ldrh r0, [r5, #4]
	cmp r1, r0
	beq _0225C968
	strh r1, [r5, #4]
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _0225C932
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	add r3, r7, #0
	str r4, [sp]
	bl ov49_0225CAD4
	b _0225C954
_0225C932:
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _0225C948
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	add r3, r7, #0
	bl ov49_0225CAD4
	b _0225C954
_0225C948:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ov49_0225CAD4
_0225C954:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0225C968
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _0225C968
	mov r0, #1
	strb r0, [r5, #2]
	str r0, [sp, #4]
	strh r0, [r5]
_0225C968:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C8D4

