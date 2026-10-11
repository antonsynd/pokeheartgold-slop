	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058284
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_02058A60

	.text
	thumb_func_start sub_02058284
sub_02058284: ; 0x02058284
	push {r3, lr}
	ldr r0, _020582A0 ; =_021D41C8
	ldr r0, [r0]
	cmp r0, #0
	beq _0205829E
	mov r0, #0
	add r1, r0, #0
	bl sub_020398D4
	ldr r0, _020582A4 ; =sub_02058A60
	mov r1, #5
	bl sub_020582F4
_0205829E:
	pop {r3, pc}
	.balign 4, 0
_020582A0: .word _021D41C8
_020582A4: .word sub_02058A60
	thumb_func_end sub_02058284

