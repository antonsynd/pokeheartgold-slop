	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_020574C4
	.extern _021D41C4
	.extern sub_02057480
	.extern sub_02057B4C
	.extern sub_02057B9C

	.text
	thumb_func_start sub_020574C4
sub_020574C4: ; 0x020574C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0205751C ; =0x0000FFFF
	add r6, r1, #0
	add r7, r2, #0
	cmp r5, r0
	beq _0205750A
	cmp r6, r0
	beq _0205750A
	mov r4, #0
_020574D8:
	cmp r4, r7
	beq _020574F4
	add r0, r4, #0
	bl sub_02057B4C
	cmp r5, r0
	bne _020574F4
	add r0, r4, #0
	bl sub_02057B9C
	cmp r6, r0
	bne _020574F4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020574F4:
	add r4, r4, #1
	cmp r4, #8
	blt _020574D8
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02057480
	cmp r0, #0
	beq _0205750A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0205750A:
	ldr r0, _02057520 ; =_021D41C4
	add r1, r5, #0
	ldr r0, [r0]
	add r2, r6, #0
	ldr r0, [r0, #0x30]
	bl sub_020548C0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205751C: .word 0x0000FFFF
_02057520: .word _021D41C4
	thumb_func_end sub_020574C4

