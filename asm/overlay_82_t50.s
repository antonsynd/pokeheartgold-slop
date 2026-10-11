	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223FD78

	.text

	.text
	thumb_func_start ov82_0223FD78
ov82_0223FD78: ; 0x0223FD78
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	bl GetWindowBgId
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x69
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _0223FDB4 ; =0x000003D9
	mov r3, #0xa
	bl LoadUserFrameGfx2
	add r0, r4, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r2, _0223FDB4 ; =0x000003D9
	add r0, r4, #0
	mov r1, #0
	mov r3, #0xa
	bl DrawFrameAndWindow2
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223FDB4: .word 0x000003D9
	thumb_func_end ov82_0223FD78

