	.include "macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02259DA0
	.extern ov48_02258CE4

	.text

	.text
	thumb_func_start ov48_02259DA0
ov48_02259DA0: ; 0x02259DA0
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0
	str r0, [r4]
	ldr r0, _02259E58 ; =gSystem + 0x40
	ldrh r1, [r0, #0x24]
	cmp r1, #0
	beq _02259DE8
	ldrh r1, [r0, #0x20]
	cmp r1, #0xc8
	blo _02259DCE
	cmp r1, #0xf8
	bhi _02259DCE
	ldrh r0, [r0, #0x22]
	cmp r0, #0xa8
	blo _02259DCE
	cmp r0, #0xb8
	bhi _02259DCE
	mov r0, #2
	add sp, #0x18
	str r0, [r4]
	pop {r4, pc}
_02259DCE:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4]
	ldr r0, _02259E58 ; =gSystem + 0x40
	ldrh r1, [r0, #0x20]
	str r1, [r4, #8]
	ldrh r0, [r0, #0x22]
	str r0, [r4, #0xc]
	mov r0, #4
	str r0, [r4, #0x18]
_02259DE8:
	ldr r0, _02259E58 ; =gSystem + 0x40
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	beq _02259E40
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02259DFE
	cmp r1, #1
	beq _02259E0E
	add sp, #0x18
	pop {r4, pc}
_02259DFE:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02259E0A
	add r0, r1, #1
	str r0, [r4, #4]
	b _02259E0E
_02259E0A:
	sub r0, r0, #1
	str r0, [r4, #0x18]
_02259E0E:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov48_02258CE4
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	orr r0, r1
	str r0, [r4]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	add sp, #0x18
	str r0, [r4, #0x14]
	ldr r0, _02259E58 ; =gSystem + 0x40
	ldrh r1, [r0, #0x20]
	str r1, [r4, #8]
	ldrh r0, [r0, #0x22]
	str r0, [r4, #0xc]
	pop {r4, pc}
_02259E40:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02259E4A
	mov r0, #1
	str r0, [r4]
_02259E4A:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_02259E58: .word gSystem + 0x40
	thumb_func_end ov48_02259DA0

