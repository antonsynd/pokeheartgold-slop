	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A1E4
	.public ov49_0225B014

    .text

	thumb_func_start ov49_0225A1E4
ov49_0225A1E4: ; 0x0225A1E4
	mov r3, #0xce
	lsl r3, r3, #2
	add r0, r0, r3
	ldr r3, _0225A1F0 ; =ov49_0225B014
	bx r3
	nop
_0225A1F0: .word ov49_0225B014
	thumb_func_end ov49_0225A1E4

