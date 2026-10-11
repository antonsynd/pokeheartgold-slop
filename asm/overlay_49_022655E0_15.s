	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265968

    .text

	.text
	thumb_func_start ov49_02265968
ov49_02265968: ; 0x02265968
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0226597C ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02265978
	mov r0, #1
	bx lr
_02265978:
	mov r0, #0
	bx lr
	.balign 4, 0
_0226597C: .word 0x0000087C
	thumb_func_end ov49_02265968

