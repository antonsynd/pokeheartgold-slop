	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02236184

	.text

	thumb_func_start ov40_02236184
ov40_02236184: ; 0x02236184
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r0, #0x6d
	bl sub_020314A4
	ldr r1, _022361AC ; =0x00002ED8
	str r0, [r4, r1]
	lsl r0, r5, #2
	add r2, r4, r0
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r1, [r4, r1]
	bl ov39_022271C0
	pop {r3, r4, r5, pc}
	nop
_022361AC: .word 0x00002ED8
	thumb_func_end ov40_02236184

