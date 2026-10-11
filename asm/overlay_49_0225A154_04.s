	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A1D4
	.public ov49_0225AFD8

    .text

	thumb_func_start ov49_0225A1D4
ov49_0225A1D4: ; 0x0225A1D4
	mov r1, #0xce
	lsl r1, r1, #2
	ldr r3, _0225A1E0 ; =ov49_0225AFD8
	add r0, r0, r1
	bx r3
	nop
_0225A1E0: .word ov49_0225AFD8
	thumb_func_end ov49_0225A1D4

