	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B944
	.public ov49_0225B99C
	.public ov49_0225BBD0

    .text

	thumb_func_start ov49_0225B944
ov49_0225B944: ; 0x0225B944
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r3, #0
	ldrb r3, [r5, #1]
	add r6, r1, #0
	add r7, r2, #0
	cmp r3, #2
	bne _0225B95A
	bl ov49_0225B99C
_0225B95A:
	ldr r0, [sp, #0x40]
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x48]
	add r2, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4c]
	add r3, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov49_0225BBD0
	mov r0, #2
	strb r0, [r5, #1]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B944

