	.include "asm/macros.inc"
	.include "unk_02054648.inc"
	.include "global.inc"
	.public sub_02054E00
	.extern _020FC60C

	.text
	thumb_func_start sub_02054E00
sub_02054E00: ; 0x02054E00
	ldr r3, _02054E1C ; =_020FC60C
	mov r2, #0
_02054E04:
	ldrh r1, [r3]
	cmp r0, r1
	bne _02054E0E
	mov r0, #1
	bx lr
_02054E0E:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #4
	blt _02054E04
	mov r0, #0
	bx lr
	nop
_02054E1C: .word _020FC60C
	thumb_func_end sub_02054E00

