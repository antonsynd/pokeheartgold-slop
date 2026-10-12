	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223F134
	.extern ov82_0223F10C
	.extern ov82_0223F6C4

	.text

	.text
	thumb_func_start ov82_0223F134
ov82_0223F134: ; 0x0223F134
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, #4
	str r1, [sp, #4]
	str r0, [sp, #8]
_0223F146:
	mov r4, #0
	mov r5, #0x12
_0223F14A:
	ldr r0, [sp, #0xc]
	add r7, r4, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov80_02237920
	cmp r0, #0xfe
	beq _0223F18A
	cmp r0, #9
	beq _0223F18A
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl ov82_0223F6C4
	mov r1, #0x86
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	bl sub_02030BD0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xa
	bls _0223F17C
	mov r2, #0xa
_0223F17C:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r6, #0
	add r3, r5, #0
	bl ov82_0223F10C
_0223F18A:
	add r4, r4, #1
	add r5, #0x40
	cmp r4, #4
	blt _0223F14A
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x24
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _0223F146
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov82_0223F134

