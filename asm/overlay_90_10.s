	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258B44
	.public ov90_0225B594

	.text

	thumb_func_start ov90_02258B44
ov90_02258B44: ; 0x02258B44
	mov r2, #0x7a
	lsl r2, r2, #2
	ldr r3, _02258B50 ; =ov90_0225B594
	add r0, r0, r2
	bx r3
	nop
_02258B50: .word ov90_0225B594
	thumb_func_end ov90_02258B44

