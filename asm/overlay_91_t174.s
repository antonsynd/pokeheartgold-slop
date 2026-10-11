	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_022604A4
	.extern ov91_02261D3C

	.text

	.text
	thumb_func_start ov91_022604A4
ov91_022604A4: ; 0x022604A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	add r0, sp, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl MTX_Identity33_
	ldr r0, _022604EC ; =ov91_02261D3C
	lsl r2, r4, #3
	lsl r1, r5, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	ldr r3, _022604F0 ; =FX_SinCosTable_
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotY33_
	add r0, sp, #0
	add r1, r0, #0
	bl MTX_Inverse33
	add r0, r6, #0
	add r1, sp, #0
	add r2, r7, #0
	bl MTX_MultVec33
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022604EC: .word ov91_02261D3C
_022604F0: .word FX_SinCosTable_
	thumb_func_end ov91_022604A4

