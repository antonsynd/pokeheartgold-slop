	.include "macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public sub_02010FEC

	.text
	thumb_func_start sub_02010FEC
sub_02010FEC: ; 0x02010FEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r7, r3, #0
	bl sub_020132E8
	add r1, sp, #4
	strb r0, [r1, #1]
	ldrb r0, [r1, #1]
	strb r0, [r1, #3]
	add r0, r4, #0
	bl sub_0201333C
	add r1, sp, #4
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r7, #0
	strb r0, [r1, #2]
	bne _0201103E
	ldrb r0, [r1, #2]
	mov r1, #0
	add r2, r5, #0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	add r3, r4, #0
	bl sub_02013220
	add r0, sp, #4
	ldrb r0, [r0, #3]
	mov r1, #0
	add r2, r4, #0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	bl sub_020132A8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0201103E:
	str r4, [sp]
	ldrb r1, [r1, #2]
	add r0, r6, #0
	mov r2, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	add r3, r5, #0
	bl sub_02013440
	add r1, sp, #4
	ldrb r1, [r1, #3]
	add r0, r6, #0
	mov r2, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	add r3, r4, #0
	bl sub_02013468
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02010FEC

