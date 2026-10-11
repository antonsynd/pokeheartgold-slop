	.include "asm/macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E80C0
	.extern ov87_021E842C

	.text

	.text
	thumb_func_start ov87_021E80C0
ov87_021E80C0: ; 0x021E80C0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
_021E80C8:
	ldr r2, _021E80EC ; =ov87_021E842C
	lsl r6, r4, #4
	lsl r3, r4, #3
	add r0, r7, #0
	add r1, r5, r6
	add r2, r2, r3
	bl AddWindow
	add r0, r5, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x10
	blo _021E80C8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E80EC: .word ov87_021E842C
	thumb_func_end ov87_021E80C0

