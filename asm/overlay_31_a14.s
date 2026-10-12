	.include "asm/macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"
	.public ov31_0225DBD4

	.text

	.text
	thumb_func_start ov31_0225DBD4
ov31_0225DBD4: ; 0x0225DBD4
	push {r3, r4, lr}
	sub sp, #0x14
	mov r1, #1
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x34
	mov r2, #4
	bl AddWindowParameterized
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r2, #4
	add r1, r4, #0
	str r2, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1d
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, #0x44
	mov r3, #2
	bl AddWindowParameterized
	mov r0, #0
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r2, #4
	add r1, r4, #0
	str r2, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x89
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, #0x74
	mov r3, #1
	bl AddWindowParameterized
	mov r0, #0x15
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x54
	mov r2, #4
	mov r3, #0xa
	bl AddWindowParameterized
	add r0, r4, #0
	add r0, #0x54
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x15
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x64
	mov r2, #4
	mov r3, #0x18
	bl AddWindowParameterized
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r2, #0
	add r1, r2, #0
_0225DC94:
	add r0, r4, #0
	add r0, #0x84
	add r2, r2, #1
	add r4, #0x10
	str r1, [r0]
	cmp r2, #0xd
	blt _0225DC94
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov31_0225DBD4

