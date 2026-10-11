	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020587E8
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_0205876C

	.text
	thumb_func_start sub_020587E8
sub_020587E8: ; 0x020587E8
	push {r3, lr}
	bl sub_02036010
	cmp r0, #0
	beq _02058822
	ldr r0, _02058824 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _02058800
	sub r0, r0, #1
	strh r0, [r1, #0x38]
_02058800:
	ldr r0, _02058824 ; =_021D41C8
	ldr r0, [r0]
	ldrh r0, [r0, #0x38]
	cmp r0, #0x5a
	bne _02058810
	mov r0, #4
	bl sub_02037AC0
_02058810:
	mov r0, #4
	bl sub_02037B38
	cmp r0, #0
	beq _02058822
	ldr r0, _02058828 ; =sub_0205876C
	mov r1, #0
	bl sub_020582F4
_02058822:
	pop {r3, pc}
	.balign 4, 0
_02058824: .word _021D41C8
_02058828: .word sub_0205876C
	thumb_func_end sub_020587E8

