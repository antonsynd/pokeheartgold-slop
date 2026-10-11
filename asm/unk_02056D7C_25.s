	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057A0C
	.extern _021D41C4

	.text
	thumb_func_start sub_02057A0C
sub_02057A0C: ; 0x02057A0C
	push {r3, lr}
	ldr r0, _02057A30 ; =_021D41C4
	ldr r0, [r0]
	cmp r0, #0
	bne _02057A1A
	mov r0, #0
	pop {r3, pc}
_02057A1A:
	bl sub_0203769C
	bl sub_020373B4
	cmp r0, #0
	beq _02057A2A
	mov r0, #1
	pop {r3, pc}
_02057A2A:
	mov r0, #0
	pop {r3, pc}
	nop
_02057A30: .word _021D41C4
	thumb_func_end sub_02057A0C

