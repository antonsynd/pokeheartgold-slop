	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240DB0
	.public ov83_02242AB4

    .text

	thumb_func_start ov83_02242AB4
ov83_02242AB4: ; 0x02242AB4
	ldr r3, _02242ABC ; =ov83_02240DB0
	strb r1, [r0, #0xd]
	strb r2, [r0, #0xc]
	bx r3
	.balign 4, 0
_02242ABC: .word ov83_02240DB0
	thumb_func_end ov83_02242AB4

