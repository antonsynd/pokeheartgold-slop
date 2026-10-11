	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020589F4
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_0205838C
	.extern sub_020584BC

	.text
	thumb_func_start sub_020589F4
sub_020589F4: ; 0x020589F4
	push {r3, lr}
	ldr r0, _02058A2C ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _02058A06
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	pop {r3, pc}
_02058A06:
	mov r0, #0x62
	bl sub_02037AC0
	ldr r0, _02058A2C ; =_021D41C8
	ldr r0, [r0]
	add r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _02058A22
	ldr r0, _02058A30 ; =sub_0205838C
	mov r1, #0x1e
	bl sub_020582F4
	pop {r3, pc}
_02058A22:
	ldr r0, _02058A34 ; =sub_020584BC
	mov r1, #0x1e
	bl sub_020582F4
	pop {r3, pc}
	.balign 4, 0
_02058A2C: .word _021D41C8
_02058A30: .word sub_0205838C
_02058A34: .word sub_020584BC
	thumb_func_end sub_020589F4

