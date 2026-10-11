	.include "asm/macros.inc"
	.include "overlay_41_0224B21C.inc"
	.include "global.inc"
	.public ov41_0224B270
	.extern ov41_0224B374

    .text

	.text
	thumb_func_start ov41_0224B270
ov41_0224B270: ; 0x0224B270
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	ldr r2, [r1]
	ldr r1, [r0, #0x1c]
	cmp r1, r2
	beq _0224B290
	str r2, [r0, #0x1c]
	cmp r2, #0xa
	bgt _0224B290
	add r1, r0, #0
	add r1, #0x30
	bl ov41_0224B374
	ldr r0, _0224B294 ; =0x00000682
	bl PlaySE
_0224B290:
	pop {r3, pc}
	nop
_0224B294: .word 0x00000682
	thumb_func_end ov41_0224B270

