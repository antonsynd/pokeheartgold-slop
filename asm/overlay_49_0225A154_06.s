	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A1F4
	.public ov49_0225B06C

    .text

	thumb_func_start ov49_0225A1F4
ov49_0225A1F4: ; 0x0225A1F4
	mov r2, #0xce
	lsl r2, r2, #2
	ldr r3, _0225A200 ; =ov49_0225B06C
	add r0, r0, r2
	bx r3
	nop
_0225A200: .word ov49_0225B06C
	thumb_func_end ov49_0225A1F4

