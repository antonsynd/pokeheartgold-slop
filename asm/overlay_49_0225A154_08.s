	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A22C
	.public ov49_0225B124

    .text

	thumb_func_start ov49_0225A22C
ov49_0225A22C: ; 0x0225A22C
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r3, _0225A238 ; =ov49_0225B124
	add r0, r0, r1
	bx r3
	nop
_0225A238: .word ov49_0225B124
	thumb_func_end ov49_0225A22C

