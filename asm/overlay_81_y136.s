	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02243028

	.text

	.text
	thumb_func_start ov81_02243028
ov81_02243028: ; 0x02243028
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	bl GetWindowBgId
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _02243064 ; =0x000003E2
	mov r3, #0xb
	bl LoadUserFrameGfx2
	add r0, r4, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r2, _02243064 ; =0x000003E2
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl DrawFrameAndWindow2
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02243064: .word 0x000003E2
	thumb_func_end ov81_02243028

