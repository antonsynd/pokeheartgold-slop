	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021EA2EC

	.text

	.text
	thumb_func_start ov108_021EA2EC
ov108_021EA2EC: ; 0x021EA2EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #6
	blo _021EA2FC
	mov r3, #0xe0
	mov r2, #0xb4
	mov r5, #1
	b _021EA31A
_021EA2FC:
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r0, #0x1f
	ror r2, r0
	add r0, r3, r2
	lsl r0, r0, #0x17
	asr r3, r0, #0x10
	lsr r0, r1, #1
	add r1, r0, #1
	mov r0, #0x28
	mul r0, r1
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	mov r5, #0
_021EA31A:
	ldr r0, _021EA330 ; =0x00000444
	add r1, r3, #0
	ldr r0, [r4, r0]
	bl Sprite_SetPositionXY
	ldr r0, _021EA330 ; =0x00000444
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EA330: .word 0x00000444
	thumb_func_end ov108_021EA2EC

