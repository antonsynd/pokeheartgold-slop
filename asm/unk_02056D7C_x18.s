	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057384
	.extern _021D41C4

	.text
	thumb_func_start sub_02057384
sub_02057384: ; 0x02057384
	push {r3, lr}
	ldr r2, _020573A8 ; =_021D41C4
	ldr r3, [r2]
	cmp r3, #0
	beq _020573A6
	add r1, r3, #0
	add r1, #0xed
	ldrb r1, [r1]
	cmp r1, r0
	beq _020573A6
	add r3, #0xed
	strb r0, [r3]
	ldr r1, [r2]
	mov r0, #0x3e
	add r1, #0xed
	bl sub_020376E0
_020573A6:
	pop {r3, pc}
	.balign 4, 0
_020573A8: .word _021D41C4
	thumb_func_end sub_02057384

