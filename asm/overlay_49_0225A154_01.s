	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A164
	.public ov49_0225AF08

    .text

	thumb_func_start ov49_0225A164
ov49_0225A164: ; 0x0225A164
	mov r2, #0xce
	lsl r2, r2, #2
	ldr r3, _0225A170 ; =ov49_0225AF08
	add r0, r0, r2
	bx r3
	nop
_0225A170: .word ov49_0225AF08
	thumb_func_end ov49_0225A164

