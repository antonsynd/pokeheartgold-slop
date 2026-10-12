	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EA2B4

	.text

	.text
	thumb_func_start ov102_021EA2B4
ov102_021EA2B4: ; 0x021EA2B4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	ldr r0, [r0, #0x24]
	str r0, [sp]
	lsl r0, r2, #0xc
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	ldr r1, [sp, #0x34]
	lsl r2, r3, #0xc
	str r0, [sp, #0x14]
	mov r0, #0x23
	str r2, [sp, #0xc]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	cmp r1, #2
	bne _021EA2E2
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r2, r0
	str r0, [sp, #0xc]
_021EA2E2:
	bl OS_DisableInterrupts
	add r4, r0, #0
	add r0, sp, #0
	bl Sprite_Create
	add r5, r0, #0
	add r0, r4, #0
	bl OS_RestoreInterrupts
	cmp r5, #0
	beq _021EA30C
	add r0, r5, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl Sprite_SetAnimSpeed
_021EA30C:
	add r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021EA2B4

