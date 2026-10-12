	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222C46C

	.text

	.text
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

