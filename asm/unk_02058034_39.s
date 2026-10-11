	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_0205896C
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_020589F4

	.text
	thumb_func_start sub_0205896C
sub_0205896C: ; 0x0205896C
	push {r3, lr}
	bl sub_02036010
	cmp r0, #0
	bne _020589A6
	ldr r0, _020589A8 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _02058984
	sub r0, r0, #1
	strh r0, [r1, #0x38]
_02058984:
	ldr r0, _020589A8 ; =_021D41C8
	ldr r0, [r0]
	ldrh r0, [r0, #0x38]
	cmp r0, #0x5a
	bne _02058994
	mov r0, #5
	bl sub_02037AC0
_02058994:
	mov r0, #5
	bl sub_02037B38
	cmp r0, #0
	beq _020589A6
	ldr r0, _020589AC ; =sub_020589F4
	mov r1, #0
	bl sub_020582F4
_020589A6:
	pop {r3, pc}
	.balign 4, 0
_020589A8: .word _021D41C8
_020589AC: .word sub_020589F4
	thumb_func_end sub_0205896C

