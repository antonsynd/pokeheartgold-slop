	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBDEC
	.extern ov102_021E8FD8
	.extern ov102_021EC11C
	.extern ov102_021EC13C

	.text

	.text
	thumb_func_start ov102_021EBDEC
ov102_021EBDEC: ; 0x021EBDEC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0x10
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r6, #0
	bl ov102_021EC11C
	ldr r0, [r6, #4]
	bl ov102_021E8FD8
	add r7, r0, #0
	cmp r7, #0xa
	bls _021EBE0C
	mov r7, #0xa
_021EBE0C:
	add r0, r6, #0
	add r0, #0x8c
	mov r5, #0
	ldr r4, [r0]
	cmp r7, #0
	bls _021EBE30
_021EBE18:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov102_021EC13C
	mov r0, #1
	tst r0, r5
	beq _021EBE2A
	add r4, #0x18
_021EBE2A:
	add r5, r5, #1
	cmp r5, r7
	blo _021EBE18
_021EBE30:
	add r6, #0x10
	add r0, r6, #0
	bl CopyWindowPixelsToVram_TextMode
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBDEC

