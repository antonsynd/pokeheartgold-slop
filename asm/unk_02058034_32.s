	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058870
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_02058854

	.text
	thumb_func_start sub_02058870
sub_02058870: ; 0x02058870
	push {r3, lr}
	ldr r0, _02058898 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _02058882
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	pop {r3, pc}
_02058882:
	mov r0, #0
	bl sub_02056EA0
	mov r0, #3
	bl sub_02037AC0
	ldr r0, _0205889C ; =sub_02058854
	mov r1, #0
	bl sub_020582F4
	pop {r3, pc}
	.balign 4, 0
_02058898: .word _021D41C8
_0205889C: .word sub_02058854
	thumb_func_end sub_02058870

