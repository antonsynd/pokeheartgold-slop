	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020589B0
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_0205896C

	.text
	thumb_func_start sub_020589B0
sub_020589B0: ; 0x020589B0
	push {r3, lr}
	ldr r0, _020589D0 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _020589C2
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	pop {r3, pc}
_020589C2:
	bl sub_02035FE4
	ldr r0, _020589D4 ; =sub_0205896C
	mov r1, #0x78
	bl sub_020582F4
	pop {r3, pc}
	.balign 4, 0
_020589D0: .word _021D41C8
_020589D4: .word sub_0205896C
	thumb_func_end sub_020589B0

