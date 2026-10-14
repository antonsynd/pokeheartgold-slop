	.include "asm/macros.inc"
	.include "unk_020192D0.inc"
	.include "global.inc"
	.public sub_02019978
	.extern sub_020197F4
	.extern sub_0201980C

	.text
	thumb_func_start sub_02019978
sub_02019978: ; 0x02019978
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r2, [r5, #4]
	lsl r4, r6, #4
	add r2, r2, r4
	ldrh r2, [r2, #4]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1d
	bne _02019990
	mov r0, #0
	pop {r4, r5, r6, pc}
_02019990:
	bl sub_0201980C
	ldr r2, [r5, #4]
	add r1, r2, #6
	add r3, r2, r4
	mov r2, #8
	ldrsb r0, [r1, r4]
	ldrsb r2, [r3, r2]
	add r0, r0, r2
	strb r0, [r1, r4]
	ldr r2, [r5, #4]
	add r1, r2, #7
	add r3, r2, r4
	mov r2, #9
	ldrsb r0, [r1, r4]
	ldrsb r2, [r3, r2]
	add r0, r0, r2
	strb r0, [r1, r4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020197F4
	ldr r1, [r5, #4]
	add r1, #0xb
	ldrb r0, [r1, r4]
	sub r0, r0, #1
	strb r0, [r1, r4]
	ldr r0, [r5, #4]
	add r2, r0, r4
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _020199DC
	ldrh r1, [r2, #4]
	ldr r0, _020199E0 ; =0xFFFF1FFF
	and r0, r1
	strh r0, [r2, #4]
	mov r0, #0
	pop {r4, r5, r6, pc}
_020199DC:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_020199E0: .word 0xFFFF1FFF
	thumb_func_end sub_02019978

