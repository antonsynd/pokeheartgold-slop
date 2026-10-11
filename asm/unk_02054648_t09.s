	.include "asm/macros.inc"
	.include "unk_02054648.inc"
	.include "global.inc"
	.public sub_02054E20
	.extern _020FC5FC
	.extern sub_02054E00

	.text
	thumb_func_start sub_02054E20
sub_02054E20: ; 0x02054E20
	push {r4, lr}
	add r4, r0, #0
	bl sub_02054E00
	cmp r0, #0
	bne _02054E30
	mov r0, #0
	pop {r4, pc}
_02054E30:
	ldr r2, _02054E4C ; =_020FC5FC
	mov r1, #0
_02054E34:
	ldrh r0, [r2]
	cmp r4, r0
	bne _02054E3E
	mov r0, #1
	pop {r4, pc}
_02054E3E:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #3
	blt _02054E34
	mov r0, #0
	pop {r4, pc}
	nop
_02054E4C: .word _020FC5FC
	thumb_func_end sub_02054E20
