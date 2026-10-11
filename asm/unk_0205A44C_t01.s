	.include "asm/macros.inc"
	.include "unk_0205A44C.inc"
	.include "global.inc"
	.public sub_0205A46C

	.text
	thumb_func_start sub_0205A46C
sub_0205A46C: ; 0x0205A46C
	add r3, #0x80
	ldr r0, [r3]
	mov r1, #1
	str r1, [r0, #0x44]
	bx lr
	.balign 4, 0
	thumb_func_end sub_0205A46C

