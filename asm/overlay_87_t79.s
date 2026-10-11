	.include "asm/macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E8134

	.text

	.text
	thumb_func_start ov87_021E8134
ov87_021E8134: ; 0x021E8134
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	bl GetWindowBgId
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x7a
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _021E8170 ; =0x000003D9
	mov r3, #0xa
	bl LoadUserFrameGfx2
	add r0, r4, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r2, _021E8170 ; =0x000003D9
	add r0, r4, #0
	mov r1, #0
	mov r3, #0xa
	bl DrawFrameAndWindow2
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021E8170: .word 0x000003D9
	thumb_func_end ov87_021E8134

