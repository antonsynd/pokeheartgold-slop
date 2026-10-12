	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02037700
	.extern _021D4140

	.text
	thumb_func_start sub_02037700
sub_02037700: ; 0x02037700
	push {r3, lr}
	ldr r0, _02037724 ; =_021D4140
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0203771E
	ldr r0, _02037728 ; =0x000006B8
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0203771E
	mov r0, #1
	add r1, r0, #0
	bl sub_020398D4
	mov r0, #1
	pop {r3, pc}
_0203771E:
	bl sub_0203569C
	pop {r3, pc}
	.balign 4, 0
_02037724: .word _021D4140
_02037728: .word 0x000006B8
	thumb_func_end sub_02037700

