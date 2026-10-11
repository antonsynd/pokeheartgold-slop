	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020586EC
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_0205857C
	.extern sub_020586A0

	.text
	thumb_func_start sub_020586EC
sub_020586EC: ; 0x020586EC
	push {r3, lr}
	ldr r0, _02058718 ; =_021D41C8
	ldr r0, [r0]
	add r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02058710
	ldr r0, _0205871C ; =sub_020586A0
	mov r1, #5
	bl sub_020582F4
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0
	bl sub_020376E0
_02058710:
	bl sub_0205857C
	pop {r3, pc}
	nop
_02058718: .word _021D41C8
_0205871C: .word sub_020586A0
	thumb_func_end sub_020586EC

