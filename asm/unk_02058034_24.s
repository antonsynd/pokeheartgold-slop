	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020586A0
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_02058640
	.extern sub_02058690

	.text
	thumb_func_start sub_020586A0
sub_020586A0: ; 0x020586A0
	push {r3, lr}
	bl sub_02037958
	cmp r0, #0
	bne _020586DE
	bl sub_0203769C
	bl sub_02057F18
	cmp r0, #0
	bne _020586DE
	ldr r0, _020586E0 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _020586C6
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	pop {r3, pc}
_020586C6:
	bl sub_02057F58
	ldr r0, _020586E0 ; =_021D41C8
	ldr r1, _020586E4 ; =sub_02058640
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	bl sub_02059538
	ldr r0, _020586E8 ; =sub_02058690
	mov r1, #0
	bl sub_020582F4
_020586DE:
	pop {r3, pc}
	.balign 4, 0
_020586E0: .word _021D41C8
_020586E4: .word sub_02058640
_020586E8: .word sub_02058690
	thumb_func_end sub_020586A0

