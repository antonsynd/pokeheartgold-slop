	.include "asm/macros.inc"
	.include "unk_0205A44C.inc"
	.include "global.inc"
	.public sub_0205AA4C

	.text
	thumb_func_start sub_0205AA4C
sub_0205AA4C: ; 0x0205AA4C
	push {r3, r4}
	mov r3, #0
	strb r3, [r0, #0x1c]
	add r4, r0, #0
	add r2, r3, #0
_0205AA56:
	stmia r4!, {r2}
	add r1, r0, r3
	strb r2, [r1, #0x18]
	strb r2, [r1, #0x10]
	add r3, r3, #1
	strb r2, [r1, #0x14]
	cmp r3, #4
	blt _0205AA56
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_0205AA4C

