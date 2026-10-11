	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02056FD0
	.extern _021D41C4

	.text
	thumb_func_start sub_02056FD0
sub_02056FD0: ; 0x02056FD0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02057018 ; =_021D41C4
	add r4, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetFacingDirection
	add r1, sp, #0
	strb r4, [r1]
	asr r2, r4, #8
	strb r2, [r1, #1]
	asr r2, r6, #8
	strb r6, [r1, #2]
	strb r2, [r1, #3]
	strb r0, [r1, #4]
	cmp r5, #0
	beq _02057002
	ldrb r2, [r1, #4]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r1, #4]
_02057002:
	mov r0, #0x16
	add r1, sp, #0
	bl sub_020376E0
	ldr r0, _02057018 ; =_021D41C4
	mov r1, #1
	ldr r0, [r0]
	add r0, #0xec
	strb r1, [r0]
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02057018: .word _021D41C4
	thumb_func_end sub_02056FD0

