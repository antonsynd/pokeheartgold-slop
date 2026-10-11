	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058A78
	.extern _021D41C8
	.extern sub_02058098
	.extern sub_020582F4

	.text
	thumb_func_start sub_02058A78
sub_02058A78: ; 0x02058A78
	push {r3, lr}
	ldr r0, _02058A98 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _02058A8A
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	pop {r3, pc}
_02058A8A:
	bl sub_02037E9C
	ldr r0, _02058A9C ; =sub_02058098
	mov r1, #0
	bl sub_020582F4
	pop {r3, pc}
	.balign 4, 0
_02058A98: .word _021D41C8
_02058A9C: .word sub_02058098
	thumb_func_end sub_02058A78

