	.include "asm/macros.inc"
	.include "overlay_41_0224A5A4.inc"
	.include "global.inc"
	.public ov41_0224AD90
	.extern ov41_0224AE24

    .text

	.text
	thumb_func_start ov41_0224AD90
ov41_0224AD90: ; 0x0224AD90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0xf
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, _0224ADD4 ; =0x0001020F
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov41_0224AE24
	mov r2, #1
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r3, r2, #0
	bl DrawFrameAndWindow2
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224ADD4: .word 0x0001020F
	thumb_func_end ov41_0224AD90

