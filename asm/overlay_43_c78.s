	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222C378
	.public ov43_0222C3E8
	.public ov43_0222C46C
	.public ov43_0222C4B8
	.extern ov43_0222C7F8
	.extern ov43_0222C844
	.extern ov43_0222C918

	.text

	.text
	thumb_func_start ov43_0222C378
ov43_0222C378: ; 0x0222C378
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x34]
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r1, #0
	bne _0222C398
	ldr r1, [sp, #0x30]
	strh r7, [r5]
	strh r1, [r5, #4]
	add r1, r6, #0
	add r2, r7, #0
	bl ov43_0222C3E8
_0222C398:
	ldr r1, [sp, #0x34]
	add r4, r5, #0
	mov r0, #0x38
	mul r0, r1
	mov r2, #2
	lsl r2, r2, #8
	add r4, #8
	str r0, [sp, #0x14]
	add r0, r4, r0
	add r1, r6, #0
	add r2, r6, r2
	bl ov43_0222C7F8
	mov r0, #2
	lsl r0, r0, #8
	add r0, r6, r0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r5, #0xb4
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r3, [r5]
	add r0, r4, r0
	add r2, r6, #0
	bl ov43_0222C918
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x30]
	add r0, r4, r0
	add r1, r6, #0
	bl ov43_0222C844
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222C378

	thumb_func_start ov43_0222C3E8
ov43_0222C3E8: ; 0x0222C3E8
	push {r4, r5, lr}
	sub sp, #0x1c
	mov r0, #0x83
	add r5, r1, #0
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r2, #0
	mov r2, #0x10
	add r1, r0, #0
	str r2, [sp]
	mov r3, #4
	str r3, [sp, #4]
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	ldrh r3, [r0]
	lsl r3, r3, #0x15
	lsr r3, r3, #0x18
	str r3, [sp, #0x14]
	ldrh r0, [r0, #2]
	add r3, r1, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl CopyToBgTilemapRect
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	str r1, [sp]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	lsl r2, r4, #2
	str r1, [sp, #8]
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	mov r1, #8
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	add r2, #0x10
	lsl r2, r2, #0x18
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #0
	lsr r2, r2, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	add r3, r1, #0
	bl CopyToBgTilemapRect
	ldr r0, [r5]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov43_0222C3E8

	thumb_func_start ov43_0222C46C
ov43_0222C46C: ; 0x0222C46C
	push {r3, r4, lr}
	sub sp, #0x1c
	mov r0, #0x83
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	str r1, [sp]
	lsl r2, r3, #2
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	add r2, #0x10
	str r1, [sp, #8]
	lsl r1, r2, #0x18
	lsr r2, r1, #0x18
	str r2, [sp, #0xc]
	mov r1, #8
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #0
	add r3, r1, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl CopyToBgTilemapRect
	ldr r0, [r4]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov43_0222C46C

	thumb_func_start ov43_0222C4B8
ov43_0222C4B8: ; 0x0222C4B8
	push {r4, r5, lr}
	sub sp, #0x1c
	mov r0, #0x83
	add r5, r1, #0
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r2, #0
	mov r2, #0x10
	add r1, r0, #0
	str r2, [sp]
	mov r3, #4
	str r3, [sp, #4]
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	ldrh r3, [r0]
	lsl r3, r3, #0x15
	lsr r3, r3, #0x18
	str r3, [sp, #0x14]
	ldrh r0, [r0, #2]
	add r3, r1, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl CopyToBgTilemapRect
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	str r1, [sp]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	lsl r2, r4, #2
	str r1, [sp, #8]
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	mov r1, #8
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	add r2, #0x10
	lsl r2, r2, #0x18
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #0
	lsr r2, r2, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	add r3, r1, #0
	bl CopyToBgTilemapRect
	ldr r0, [r5]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov43_0222C4B8

