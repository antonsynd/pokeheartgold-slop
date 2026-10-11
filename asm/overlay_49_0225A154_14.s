	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A2F8
	.public ov49_0225B014

    .text

	thumb_func_start ov49_0225A2F8
ov49_0225A2F8: ; 0x0225A2F8
	mov r1, #0xce
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0
	ldr r3, _0225A308 ; =ov49_0225B014
	add r2, r1, #0
	bx r3
	nop
_0225A308: .word ov49_0225B014
	thumb_func_end ov49_0225A2F8

