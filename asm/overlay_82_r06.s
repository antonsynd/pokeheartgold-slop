	.include "macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223E140

	.text

	.text
	thumb_func_start ov82_0223E140
ov82_0223E140: ; 0x0223E140
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r5, [sp, #0x4c]
	add r6, r3, #0
	str r6, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	lsl r2, r5, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0xc]
	add r2, sp, #0x30
	ldrh r2, [r2, #0x18]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0x10]
	bl FillBgTilemapRect
	add r1, sp, #0x30
	ldrh r4, [r1, #0x18]
	ldrb r7, [r1, #0x10]
	ldr r0, [sp, #0x18]
	add r2, r4, #2
	add r0, r0, r7
	sub r0, r0, #1
	str r0, [sp, #0x20]
	ldr r3, [sp, #0x20]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, sp, #0x30
	ldrb r0, [r0, #0x14]
	add r2, r4, #6
	lsl r2, r2, #0x10
	str r0, [sp, #0x28]
	add r0, r6, r0
	sub r0, r0, #1
	str r0, [sp, #0x24]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsr r2, r2, #0x10
	bl FillBgTilemapRect
	ldr r0, [sp, #0x24]
	add r2, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x20]
	add r2, #8
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	sub r0, r7, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r2, r4, #1
	add r7, r0, #1
	ldr r0, [sp, #0x1c]
	lsl r2, r2, #0x10
	lsl r0, r0, #0x18
	lsl r3, r7, #0x18
	str r6, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldr r0, [sp, #0x24]
	add r2, r4, #7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	lsl r2, r2, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r3, r7, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldr r0, [sp, #0x28]
	add r6, r6, #1
	sub r7, r0, #2
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r2, r4, #3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsr r2, r2, #0x10
	bl FillBgTilemapRect
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x20]
	add r2, r4, #5
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov82_0223E140

