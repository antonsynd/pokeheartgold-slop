	.include "macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_0205779C
	.extern _021D41C4
	.extern sub_02057184

	.text
	thumb_func_start sub_0205779C
sub_0205779C: ; 0x0205779C
	push {r3, r4, r5, lr}
	ldrb r1, [r2]
	mov r0, #0xf
	add r3, r1, #0
	and r3, r0
	ldr r0, _02057814 ; =_021D41C4
	ldr r1, [r0]
	cmp r1, #0
	beq _02057810
	ldrb r4, [r2, #2]
	add r1, #0x74
	lsl r0, r3, #3
	add r1, r1, r0
	mov r0, #0x80
	tst r0, r4
	beq _020577C0
	mov r0, #1
	b _020577C2
_020577C0:
	mov r0, #0
_020577C2:
	strb r0, [r1, #7]
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldrh r4, [r1]
	ldrb r0, [r2, #1]
	add r0, r4, r0
	strh r0, [r1]
	ldrb r4, [r2, #2]
	ldrh r0, [r1]
	lsl r5, r4, #8
	mov r4, #1
	lsl r4, r4, #8
	and r5, r4
	add r0, r0, r5
	strh r0, [r1]
	ldrh r5, [r1, #2]
	ldrb r0, [r2, #3]
	add r0, r5, r0
	strh r0, [r1, #2]
	ldrb r5, [r2, #2]
	ldrh r0, [r1, #2]
	lsl r5, r5, #7
	and r4, r5
	add r0, r0, r4
	strh r0, [r1, #2]
	ldrb r0, [r2]
	asr r4, r0, #4
	mov r0, #3
	and r4, r0
	strb r4, [r1, #4]
	ldrb r2, [r2]
	asr r2, r2, #6
	and r0, r2
	strb r0, [r1, #5]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	bl sub_02057184
_02057810:
	pop {r3, r4, r5, pc}
	nop
_02057814: .word _021D41C4
	thumb_func_end sub_0205779C

