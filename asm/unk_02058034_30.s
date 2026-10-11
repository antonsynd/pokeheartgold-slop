	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_0205882C
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_020587E8

	.text
	thumb_func_start sub_0205882C
sub_0205882C: ; 0x0205882C
	push {r3, lr}
	ldr r0, _0205884C ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _0205883E
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	pop {r3, pc}
_0205883E:
	bl sub_02035FD8
	ldr r0, _02058850 ; =sub_020587E8
	mov r1, #0x78
	bl sub_020582F4
	pop {r3, pc}
	.balign 4, 0
_0205884C: .word _021D41C8
_02058850: .word sub_020587E8
	thumb_func_end sub_0205882C

