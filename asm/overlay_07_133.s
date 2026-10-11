	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221F81C
	.public ov07_0221F880
	.extern ov07_0221F8C8

	.text

	.text
	thumb_func_start ov07_0221F81C
ov07_0221F81C: ; 0x0221F81C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r4, [r1]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r1, [r1]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ov07_0221F8C8
	ldr r1, [r5, #0x18]
	add r2, r1, #4
	str r2, [r5, #0x18]
	ldr r1, [r2]
	add r2, r2, #4
	str r2, [r5, #0x18]
	add r2, r5, #0
	add r2, #0xc0
	ldr r6, [r2]
	ldrh r3, [r6, #0x14]
	str r0, [sp]
	lsl r2, r3, #1
	mov r0, #0x46
	add r2, r6, r2
	add r3, r6, r3
	lsl r0, r0, #2
	str r1, [sp, #4]
	ldr r1, [r6, r0]
	add r2, #0xd8
	lsl r1, r1, #0x1f
	asr r1, r1, #0x1f
	str r1, [sp, #8]
	ldr r1, [r5]
	add r3, #0xe8
	str r1, [sp, #0xc]
	sub r0, #0xc
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r0, [r6, r0]
	add r1, r4, #0
	bl sub_02071FDC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov07_0221F81C

	thumb_func_start ov07_0221F880
ov07_0221F880: ; 0x0221F880
	push {r4, lr}
	add r4, r0, #0
	bl IsCryFinished
	cmp r0, #0
	bne _0221F8A4
	ldr r0, [r4, #0x18]
	add r1, r0, #4
	str r1, [r4, #0x18]
	ldr r0, [r1]
	add r1, r1, #4
	str r1, [r4, #0x18]
	mov r1, #0
	add r4, #0x8d
	strb r1, [r4]
	bl sub_02006300
	pop {r4, pc}
_0221F8A4:
	mov r0, #1
	add r4, #0x8d
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end ov07_0221F880

