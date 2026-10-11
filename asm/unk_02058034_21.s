	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058608
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_0205857C
	.extern sub_020586EC

	.text
	thumb_func_start sub_02058608
sub_02058608: ; 0x02058608
	push {r3, lr}
	bl sub_02057C94
	cmp r0, #0
	bne _02058632
	ldr r0, _02058638 ; =_021D41C8
	mov r1, #0
	ldr r0, [r0]
	add r0, #0x3f
	strb r1, [r0]
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0
	bl sub_020376E0
	ldr r0, _0205863C ; =sub_020586EC
	mov r1, #0
	bl sub_020582F4
_02058632:
	bl sub_0205857C
	pop {r3, pc}
	.balign 4, 0
_02058638: .word _021D41C8
_0205863C: .word sub_020586EC
	thumb_func_end sub_02058608

