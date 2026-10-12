	.include "asm/macros.inc"
	.include "unk_02054648.inc"
	.include "global.inc"
	.public sub_020549F4
	.extern GetMetatileBehavior
	.extern sub_020548C0
	.extern sub_02054954

	.text
	thumb_func_start sub_020549F4
sub_020549F4: ; 0x020549F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, sp, #8
	add r5, r0, #0
	str r1, [sp, #4]
	add r4, r2, #0
	add r7, r3, #0
	str r6, [sp]
	bl sub_02054954
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _02054A10
	strb r0, [r1]
_02054A10:
	cmp r0, #0
	bne _02054A58
	add r0, sp, #0xc
	str r0, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	ldr r3, [r3, #4]
	add r1, r4, #0
	add r2, r7, #0
	bl Gymmick_CheckCollision
	cmp r0, #0
	bne _02054A52
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_020548C0
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _02054A4C
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #2
	bne _02054A4C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl GetMetatileBehavior
_02054A4C:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02054A52:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02054A58:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_020549F4

