	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057C5C
	.extern _021D41C4

	.text
	thumb_func_start sub_02057C5C
sub_02057C5C: ; 0x02057C5C
	push {r3, r4}
	ldr r3, _02057C90 ; =_021D41C4
	ldr r4, [r3]
	add r4, #0xb4
	ldrb r2, [r4, r0]
	cmp r1, r2
	beq _02057C8C
	strb r1, [r4, r0]
	ldr r2, [r3]
	lsl r1, r0, #3
	add r2, r2, r1
	mov r4, #0
	add r2, #0x3b
	strb r4, [r2]
	ldr r2, [r3]
	mov r4, #1
	add r0, r2, r0
	add r0, #0xcc
	strb r4, [r0]
	ldr r0, [r3]
	mov r2, #2
	add r0, r0, r1
	add r0, #0x39
	strb r2, [r0]
_02057C8C:
	pop {r3, r4}
	bx lr
	.balign 4, 0
_02057C90: .word _021D41C4
	thumb_func_end sub_02057C5C

