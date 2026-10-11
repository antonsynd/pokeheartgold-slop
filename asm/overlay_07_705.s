	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02234530
	.extern ov07_02234510
	.extern ov07_0223777C

	.text

	.text
	thumb_func_start ov07_02234530
ov07_02234530: ; 0x02234530
	push {r4, lr}
	sub sp, #8
	ldr r3, _02234588 ; =ov07_0223777C
	add r4, r0, #0
	add r2, sp, #0
	mov r1, #7
_0223453C:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0223453C
	add r0, r4, #0
	bl SealOnCapsuleGetID
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0209109C
	cmp r0, #0
	bne _0223457E
	add r0, r4, #0
	bl ov07_02234510
	cmp r0, #0x38
	blt _02234568
	mov r0, #3
	b _02234576
_02234568:
	add r0, r0, #1
	mov r1, #0x14
	bl _s32_div_f
	cmp r0, #3
	blt _02234576
	mov r0, #3
_02234576:
	add r1, sp, #0
	add sp, #8
	ldrb r0, [r1, r0]
	pop {r4, pc}
_0223457E:
	add r0, sp, #0
	ldrb r0, [r0, #1]
	add sp, #8
	pop {r4, pc}
	nop
_02234588: .word ov07_0223777C
	thumb_func_end ov07_02234530

