	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public sub_0200FECC

	.text
	thumb_func_start sub_0200FECC
sub_0200FECC: ; 0x0200FECC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0200FED2:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	blx r1
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0200FED2
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200FECC

