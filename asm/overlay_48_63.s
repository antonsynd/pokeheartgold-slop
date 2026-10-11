	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225B108

	.text

	thumb_func_start ov48_0225B108
ov48_0225B108: ; 0x0225B108
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl MessageFormat_ResetBuffers
	ldr r0, [r5]
	ldr r2, [r5, #0xc]
	mov r1, #3
	bl ReadMsgDataIntoString
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	bl BufferCityName
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	bl StringExpandPlaceholders
	ldr r0, [r5, #8]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov48_0225B108

